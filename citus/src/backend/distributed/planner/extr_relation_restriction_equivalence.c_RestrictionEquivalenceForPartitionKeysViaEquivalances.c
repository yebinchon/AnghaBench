
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * relationRestrictionContext; } ;
typedef int RelationRestrictionContext ;
typedef TYPE_1__ PlannerRestrictionContext ;
typedef int List ;


 int ContainsMultipleDistributedRelations (TYPE_1__*) ;
 int EquivalenceListContainsRelationsEquality (int *,int *) ;

bool
RestrictionEquivalenceForPartitionKeysViaEquivalances(PlannerRestrictionContext *
               plannerRestrictionContext,
               List *allAttributeEquivalenceList)
{
 RelationRestrictionContext *restrictionContext =
  plannerRestrictionContext->relationRestrictionContext;


 if (!ContainsMultipleDistributedRelations(plannerRestrictionContext))
 {
  return 1;
 }

 return EquivalenceListContainsRelationsEquality(allAttributeEquivalenceList,
             restrictionContext);
}
