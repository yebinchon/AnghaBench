
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiNode ;


 scalar_t__ CitusIsA (int *,int ) ;
 int MultiCollect ;
 int MultiExtendedOp ;
 int MultiPartition ;
 int MultiProject ;
 int MultiSelect ;
 int MultiTable ;
 int MultiTreeRoot ;

bool
UnaryOperator(MultiNode *node)
{
 bool unaryOperator = 0;

 if (CitusIsA(node, MultiTreeRoot) || CitusIsA(node, MultiTable) ||
  CitusIsA(node, MultiCollect) || CitusIsA(node, MultiSelect) ||
  CitusIsA(node, MultiProject) || CitusIsA(node, MultiPartition) ||
  CitusIsA(node, MultiExtendedOp))
 {
  unaryOperator = 1;
 }

 return unaryOperator;
}
