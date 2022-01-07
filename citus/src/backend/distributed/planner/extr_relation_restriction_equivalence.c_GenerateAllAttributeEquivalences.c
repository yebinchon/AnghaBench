
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * joinRestrictionContext; int * relationRestrictionContext; } ;
typedef int RelationRestrictionContext ;
typedef TYPE_1__ PlannerRestrictionContext ;
typedef int List ;
typedef int JoinRestrictionContext ;


 int * GenerateAttributeEquivalencesForJoinRestrictions (int *) ;
 int * GenerateAttributeEquivalencesForRelationRestrictions (int *) ;
 int * NIL ;
 int attributeEquivalenceId ;
 int * list_concat (int *,int *) ;

List *
GenerateAllAttributeEquivalences(PlannerRestrictionContext *plannerRestrictionContext)
{
 RelationRestrictionContext *relationRestrictionContext =
  plannerRestrictionContext->relationRestrictionContext;
 JoinRestrictionContext *joinRestrictionContext =
  plannerRestrictionContext->joinRestrictionContext;

 List *relationRestrictionAttributeEquivalenceList = NIL;
 List *joinRestrictionAttributeEquivalenceList = NIL;
 List *allAttributeEquivalenceList = NIL;


 attributeEquivalenceId = 1;

 relationRestrictionAttributeEquivalenceList =
  GenerateAttributeEquivalencesForRelationRestrictions(relationRestrictionContext);
 joinRestrictionAttributeEquivalenceList =
  GenerateAttributeEquivalencesForJoinRestrictions(joinRestrictionContext);

 allAttributeEquivalenceList = list_concat(relationRestrictionAttributeEquivalenceList,
             joinRestrictionAttributeEquivalenceList);

 return allAttributeEquivalenceList;
}
