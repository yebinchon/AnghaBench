
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * relationRestrictionContext; } ;
struct TYPE_8__ {scalar_t__ cteList; scalar_t__ setOperations; } ;
typedef int RelationRestrictionContext ;
typedef TYPE_1__ Query ;
typedef TYPE_2__ PlannerRestrictionContext ;


 scalar_t__ ContainsUnionSubquery (TYPE_1__*) ;
 scalar_t__ ContextContainsLocalRelation (int *) ;
 scalar_t__ NIL ;
 int RestrictionEquivalenceForPartitionKeys (TYPE_2__*) ;
 int SafeToPushdownUnionSubquery (TYPE_2__*) ;

bool
AllDistributionKeysInQueryAreEqual(Query *originalQuery,
           PlannerRestrictionContext *plannerRestrictionContext)
{
 bool restrictionEquivalenceForPartitionKeys = 0;
 RelationRestrictionContext *restrictionContext = ((void*)0);


 if (originalQuery->cteList != NIL)
 {
  return 0;
 }


 restrictionContext = plannerRestrictionContext->relationRestrictionContext;
 if (ContextContainsLocalRelation(restrictionContext))
 {
  return 0;
 }

 restrictionEquivalenceForPartitionKeys =
  RestrictionEquivalenceForPartitionKeys(plannerRestrictionContext);
 if (restrictionEquivalenceForPartitionKeys)
 {
  return 1;
 }

 if (originalQuery->setOperations || ContainsUnionSubquery(originalQuery))
 {
  return SafeToPushdownUnionSubquery(plannerRestrictionContext);
 }

 return 0;
}
