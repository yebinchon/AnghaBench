
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int rtable; } ;
struct TYPE_8__ {int plannerRestrictionContext; int allDistributionKeysInQueryAreEqual; } ;
typedef TYPE_1__ RecursivePlanningContext ;
typedef TYPE_2__ Query ;


 int AllDistributionKeysInSubqueryAreEqual (TYPE_2__*,int ) ;
 int * DeferErrorIfCannotPushdownSubquery (TYPE_2__*,int) ;
 scalar_t__ FindNodeCheckInRangeTableList (int ,int ) ;
 int IsLocalTableRTE ;
 scalar_t__ MULTI_EXECUTOR_TASK_TRACKER ;
 scalar_t__ SingleRelationRepartitionSubquery (TYPE_2__*) ;
 scalar_t__ TaskExecutorType ;

__attribute__((used)) static bool
ShouldRecursivelyPlanSubquery(Query *subquery, RecursivePlanningContext *context)
{
 if (FindNodeCheckInRangeTableList(subquery->rtable, IsLocalTableRTE))
 {
 }
 else if (DeferErrorIfCannotPushdownSubquery(subquery, 0) == ((void*)0))
 {
  if (!context->allDistributionKeysInQueryAreEqual &&
   !AllDistributionKeysInSubqueryAreEqual(subquery,
               context->plannerRestrictionContext))
  {
   return 1;
  }





  return 0;
 }
 else if (TaskExecutorType == MULTI_EXECUTOR_TASK_TRACKER &&
    SingleRelationRepartitionSubquery(subquery))
 {




  return 0;
 }

 return 1;
}
