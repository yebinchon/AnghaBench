
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiNode ;


 scalar_t__ CitusIsA (int *,int ) ;
 int MultiCartesianProduct ;
 int MultiJoin ;

bool
BinaryOperator(MultiNode *node)
{
 bool binaryOperator = 0;

 if (CitusIsA(node, MultiJoin) || CitusIsA(node, MultiCartesianProduct))
 {
  binaryOperator = 1;
 }

 return binaryOperator;
}
