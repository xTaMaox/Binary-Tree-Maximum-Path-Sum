class Solution {
  int maxPathSum(TreeNode? root) {
    List<int> maxi = [1];
    maxi[0] = -1000;
    pathDown(maxi, root);
    return maxi[0];
  }

  int pathDown(List<int> maxi, TreeNode? root) {
    if (root == null) return 0;
    int leftMax = max(0, pathDown(maxi, root.left));
    int rightMax = max(0, pathDown(maxi, root.right));
    maxi[0] = max(maxi[0], root.val + leftMax + rightMax);
    return root.val + max(leftMax, rightMax);
  }
}