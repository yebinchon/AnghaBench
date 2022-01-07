
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ anchorRelationRestrictionList; } ;
struct TYPE_14__ {int * jointree; } ;
struct TYPE_13__ {int * plannerRestrictionContext; } ;
typedef TYPE_1__ RecursivePlanningContext ;
typedef TYPE_2__ Query ;
typedef int PlannerRestrictionContext ;
typedef int Node ;
typedef int FromExpr ;
typedef TYPE_3__ ColocatedJoinChecker ;


 TYPE_3__ CreateColocatedJoinChecker (TYPE_2__*,int *) ;
 scalar_t__ NIL ;
 int RecursivelyPlanNonColocatedJoinWalker (int *,TYPE_3__*,TYPE_1__*) ;
 int RecursivelyPlanNonColocatedSubqueriesInWhere (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static void
RecursivelyPlanNonColocatedSubqueries(Query *subquery, RecursivePlanningContext *context)
{
 ColocatedJoinChecker colocatedJoinChecker;

 FromExpr *joinTree = subquery->jointree;
 PlannerRestrictionContext *restrictionContext = ((void*)0);


 restrictionContext = context->plannerRestrictionContext;
 colocatedJoinChecker = CreateColocatedJoinChecker(subquery, restrictionContext);





 if (colocatedJoinChecker.anchorRelationRestrictionList == NIL)
 {
  return;
 }


 RecursivelyPlanNonColocatedJoinWalker((Node *) joinTree, &colocatedJoinChecker,
            context);


 RecursivelyPlanNonColocatedSubqueriesInWhere(subquery, &colocatedJoinChecker,
             context);
}
