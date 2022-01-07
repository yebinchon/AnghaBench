
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Query ;
typedef int PlanState ;
typedef int Node ;


 int PartiallyEvaluateExpression (int *,int *) ;

void
ExecuteMasterEvaluableFunctions(Query *query, PlanState *planState)
{
 PartiallyEvaluateExpression((Node *) query, planState);
}
