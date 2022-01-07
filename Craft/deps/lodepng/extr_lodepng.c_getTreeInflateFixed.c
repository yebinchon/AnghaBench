
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HuffmanTree ;


 int generateFixedDistanceTree (int *) ;
 int generateFixedLitLenTree (int *) ;

__attribute__((used)) static void getTreeInflateFixed(HuffmanTree* tree_ll, HuffmanTree* tree_d)
{

  generateFixedLitLenTree(tree_ll);
  generateFixedDistanceTree(tree_d);
}
