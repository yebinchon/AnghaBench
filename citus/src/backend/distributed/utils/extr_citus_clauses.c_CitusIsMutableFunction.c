
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int CitusIsMutableFunctionIdChecker ;
 scalar_t__ IsA (int *,int ) ;
 int NextValueExpr ;
 int SQLValueFunction ;
 scalar_t__ check_functions_in_node (int *,int ,int *) ;

bool
CitusIsMutableFunction(Node *node)
{

 if (check_functions_in_node(node, CitusIsMutableFunctionIdChecker, ((void*)0)))
 {
  return 1;
 }

 if (IsA(node, SQLValueFunction))
 {

  return 1;
 }

 if (IsA(node, NextValueExpr))
 {

  return 1;
 }

 return 0;
}
