
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cteList; } ;
typedef TYPE_1__ Query ;
typedef int PlannerRestrictionContext ;


 int AllDistributionKeysInQueryAreEqual (TYPE_1__*,int *) ;
 int * FilterPlannerRestrictionForQuery (int *,TYPE_1__*) ;
 scalar_t__ NIL ;

__attribute__((used)) static bool
AllDistributionKeysInSubqueryAreEqual(Query *subquery,
           PlannerRestrictionContext *restrictionContext)
{
 bool allDistributionKeysInSubqueryAreEqual = 0;
 PlannerRestrictionContext *filteredRestrictionContext = ((void*)0);


 if (subquery->cteList != NIL)
 {
  return 0;
 }

 filteredRestrictionContext =
  FilterPlannerRestrictionForQuery(restrictionContext, subquery);

 allDistributionKeysInSubqueryAreEqual =
  AllDistributionKeysInQueryAreEqual(subquery, filteredRestrictionContext);
 if (!allDistributionKeysInSubqueryAreEqual)
 {
  return 0;
 }

 return 1;
}
