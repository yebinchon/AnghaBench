
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ setOperations; } ;
struct TYPE_9__ {scalar_t__ level; int plannerRestrictionContext; } ;
struct TYPE_8__ {scalar_t__ op; } ;
typedef TYPE_1__ SetOperationStmt ;
typedef TYPE_2__ RecursivePlanningContext ;
typedef TYPE_3__ Query ;
typedef int PlannerRestrictionContext ;


 int * DeferErrorIfUnsupportedUnionQuery (TYPE_3__*) ;
 int * FilterPlannerRestrictionForQuery (int ,TYPE_3__*) ;
 scalar_t__ SETOP_UNION ;
 int SafeToPushdownUnionSubquery (int *) ;

__attribute__((used)) static bool
ShouldRecursivelyPlanSetOperation(Query *query, RecursivePlanningContext *context)
{
 PlannerRestrictionContext *filteredRestrictionContext = ((void*)0);

 SetOperationStmt *setOperations = (SetOperationStmt *) query->setOperations;
 if (setOperations == ((void*)0))
 {
  return 0;
 }

 if (context->level == 0)
 {




  return 1;
 }

 if (setOperations->op != SETOP_UNION)
 {




  return 1;
 }

 if (DeferErrorIfUnsupportedUnionQuery(query) != ((void*)0))
 {




  return 1;
 }

 filteredRestrictionContext =
  FilterPlannerRestrictionForQuery(context->plannerRestrictionContext, query);
 if (!SafeToPushdownUnionSubquery(filteredRestrictionContext))
 {





  return 1;
 }

 return 0;
}
