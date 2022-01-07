
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int paramkind; } ;
typedef int Query ;
typedef int PlanState ;
typedef TYPE_1__ Param ;
typedef int Node ;
typedef int Expr ;


 int Const ;
 int FindNodeCheck (int *,int ) ;
 scalar_t__ IsA (int *,int ) ;
 int IsVarNode ;
 int PARAM_SUBLINK ;
 int QTW_DONT_COPY_QUERY ;
 scalar_t__ citus_evaluate_expr (int *,int ,int ,int ,int *) ;
 int exprCollation (int *) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 scalar_t__ expression_tree_mutator (int *,int * (*) (int *,int *),int *) ;
 int nodeTag (int *) ;
 scalar_t__ query_tree_mutator (int *,int * (*) (int *,int *),int *,int ) ;

Node *
PartiallyEvaluateExpression(Node *expression, PlanState *planState)
{
 if (expression == ((void*)0) || IsA(expression, Const))
 {
  return expression;
 }

 switch (nodeTag(expression))
 {
  case 132:
  {
   Param *param = (Param *) expression;
   if (param->paramkind == PARAM_SUBLINK)
   {

    return expression;
   }
  }



  case 135:
  case 133:
  case 136:
  case 134:
  case 137:
  case 139:
  case 128:
  case 129:
  case 130:
  case 138:
  {
   if (FindNodeCheck(expression, IsVarNode))
   {
    return (Node *) expression_tree_mutator(expression,
              PartiallyEvaluateExpression,
              planState);
   }

   return (Node *) citus_evaluate_expr((Expr *) expression,
            exprType(expression),
            exprTypmod(expression),
            exprCollation(expression),
            planState);
  }

  case 131:
  {
   return (Node *) query_tree_mutator((Query *) expression,
              PartiallyEvaluateExpression,
              planState, QTW_DONT_COPY_QUERY);
  }

  default:
  {
   return (Node *) expression_tree_mutator(expression,
             PartiallyEvaluateExpression,
             planState);
  }
 }

 return expression;
}
