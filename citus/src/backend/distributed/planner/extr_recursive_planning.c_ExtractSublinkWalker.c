
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;


 scalar_t__ IsA (int *,int ) ;
 int SubLink ;
 int expression_tree_walker (int *,int (*) (int *,int **),int **) ;
 int * lappend (int *,int *) ;

__attribute__((used)) static bool
ExtractSublinkWalker(Node *node, List **sublinkList)
{
 bool walkerResult = 0;
 if (node == ((void*)0))
 {
  return 0;
 }

 if (IsA(node, SubLink))
 {
  (*sublinkList) = lappend(*sublinkList, node);
 }
 else
 {
  walkerResult = expression_tree_walker(node, ExtractSublinkWalker,
             sublinkList);
 }

 return walkerResult;
}
