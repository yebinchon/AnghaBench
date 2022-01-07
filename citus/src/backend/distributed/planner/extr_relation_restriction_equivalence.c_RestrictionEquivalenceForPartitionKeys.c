
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerRestrictionContext ;
typedef int List ;


 int ContainsMultipleDistributedRelations (int *) ;
 int * GenerateAllAttributeEquivalences (int *) ;
 int * NIL ;
 int RestrictionEquivalenceForPartitionKeysViaEquivalances (int *,int *) ;

bool
RestrictionEquivalenceForPartitionKeys(PlannerRestrictionContext *restrictionContext)
{
 List *attributeEquivalenceList = NIL;


 if (!ContainsMultipleDistributedRelations(restrictionContext))
 {
  return 1;
 }

 attributeEquivalenceList = GenerateAllAttributeEquivalences(restrictionContext);

 return RestrictionEquivalenceForPartitionKeysViaEquivalances(restrictionContext,
                 attributeEquivalenceList);
}
