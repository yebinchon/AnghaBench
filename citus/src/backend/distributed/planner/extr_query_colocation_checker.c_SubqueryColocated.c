
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* subqueryPlannerRestriction; int * anchorAttributeEquivalences; int * anchorRelationRestrictionList; } ;
struct TYPE_9__ {TYPE_1__* relationRestrictionContext; } ;
struct TYPE_8__ {int * relationRestrictionList; } ;
typedef TYPE_1__ RelationRestrictionContext ;
typedef int Query ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int List ;
typedef TYPE_3__ ColocatedJoinChecker ;


 int Assert (int) ;
 TYPE_2__* FilterPlannerRestrictionForQuery (TYPE_2__*,int *) ;
 int QueryContainsDistributedTableRTE (int *) ;
 int RestrictionEquivalenceForPartitionKeysViaEquivalances (TYPE_2__*,int *) ;
 int * UnionRelationRestrictionLists (int *,int *) ;
 scalar_t__ list_length (int *) ;
 void* palloc0 (int) ;

bool
SubqueryColocated(Query *subquery, ColocatedJoinChecker *checker)
{
 List *anchorRelationRestrictionList = checker->anchorRelationRestrictionList;
 List *anchorAttributeEquivalances = checker->anchorAttributeEquivalences;

 PlannerRestrictionContext *restrictionContext = checker->subqueryPlannerRestriction;
 PlannerRestrictionContext *filteredPlannerContext =
  FilterPlannerRestrictionForQuery(restrictionContext, subquery);
 List *filteredRestrictionList =
  filteredPlannerContext->relationRestrictionContext->relationRestrictionList;

 List *unionedRelationRestrictionList = ((void*)0);
 RelationRestrictionContext *unionedRelationRestrictionContext = ((void*)0);
 PlannerRestrictionContext *unionedPlannerRestrictionContext = ((void*)0);






 if (list_length(filteredRestrictionList) == 0)
 {
  Assert(!QueryContainsDistributedTableRTE(subquery));

  return 1;
 }







 unionedRelationRestrictionList =
  UnionRelationRestrictionLists(anchorRelationRestrictionList,
           filteredRestrictionList);
 unionedRelationRestrictionContext = palloc0(sizeof(RelationRestrictionContext));
 unionedRelationRestrictionContext->relationRestrictionList =
  unionedRelationRestrictionList;

 unionedPlannerRestrictionContext = palloc0(sizeof(PlannerRestrictionContext));
 unionedPlannerRestrictionContext->relationRestrictionContext =
  unionedRelationRestrictionContext;

 if (!RestrictionEquivalenceForPartitionKeysViaEquivalances(
   unionedPlannerRestrictionContext,
   anchorAttributeEquivalances))
 {
  return 0;
 }

 return 1;
}
