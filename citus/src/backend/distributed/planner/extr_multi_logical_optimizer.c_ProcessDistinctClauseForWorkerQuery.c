
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int workerHasDistinctOn; int * workerDistinctClause; } ;
typedef TYPE_1__ QueryDistinctClause ;
typedef int List ;


 scalar_t__ IsGroupBySubsetOfDistinct (int *,int *) ;
 int * NIL ;

__attribute__((used)) static void
ProcessDistinctClauseForWorkerQuery(List *distinctClause, bool hasDistinctOn,
         List *groupClauseList,
         bool queryHasAggregates,
         QueryDistinctClause *queryDistinctClause,
         bool *distinctPreventsLimitPushdown)
{
 bool distinctClauseSupersetofGroupClause = 0;
 bool shouldPushdownDistinct = 0;

 if (distinctClause == NIL)
 {
  return;
 }

 *distinctPreventsLimitPushdown = 0;

 if (groupClauseList == NIL ||
  IsGroupBySubsetOfDistinct(groupClauseList, distinctClause))
 {
  distinctClauseSupersetofGroupClause = 1;
 }
 else
 {
  distinctClauseSupersetofGroupClause = 0;







  *distinctPreventsLimitPushdown = 1;
 }
 shouldPushdownDistinct = !queryHasAggregates &&
        distinctClauseSupersetofGroupClause;
 if (shouldPushdownDistinct)
 {
  queryDistinctClause->workerDistinctClause = distinctClause;
  queryDistinctClause->workerHasDistinctOn = hasDistinctOn;
 }
}
