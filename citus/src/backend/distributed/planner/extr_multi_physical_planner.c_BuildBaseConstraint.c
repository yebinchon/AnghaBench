
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;
typedef int OpExpr ;
typedef int Node ;


 int BTGreaterEqualStrategyNumber ;
 int BTLessEqualStrategyNumber ;
 int * MakeOpExpression (int *,int ) ;
 int * make_and_qual (int *,int *) ;

Node *
BuildBaseConstraint(Var *column)
{
 Node *baseConstraint = ((void*)0);
 OpExpr *lessThanExpr = ((void*)0);
 OpExpr *greaterThanExpr = ((void*)0);


 lessThanExpr = MakeOpExpression(column, BTLessEqualStrategyNumber);
 greaterThanExpr = MakeOpExpression(column, BTGreaterEqualStrategyNumber);


 baseConstraint = make_and_qual((Node *) lessThanExpr, (Node *) greaterThanExpr);

 return baseConstraint;
}
