
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * joinRestrictionContext; TYPE_1__* relationRestrictionContext; int memoryContext; } ;
struct TYPE_9__ {int allReferenceTables; int hasLocalRelation; int hasDistributedRelation; int relationRestrictionList; } ;
typedef int Relids ;
typedef TYPE_1__ RelationRestrictionContext ;
typedef int Query ;
typedef TYPE_2__ PlannerRestrictionContext ;
typedef int JoinRestrictionContext ;


 int * FilterJoinRestrictionContext (int *,int ) ;
 TYPE_1__* FilterRelationRestrictionContext (TYPE_1__*,int ) ;
 int QueryRteIdentities (int *) ;
 int ReferenceRelationCount (TYPE_1__*) ;
 int list_length (int ) ;
 TYPE_2__* palloc0 (int) ;

PlannerRestrictionContext *
FilterPlannerRestrictionForQuery(PlannerRestrictionContext *plannerRestrictionContext,
         Query *query)
{
 PlannerRestrictionContext *filteredPlannerRestrictionContext = ((void*)0);
 int referenceRelationCount = 0;
 int totalRelationCount = 0;

 Relids queryRteIdentities = QueryRteIdentities(query);

 RelationRestrictionContext *relationRestrictionContext =
  plannerRestrictionContext->relationRestrictionContext;
 JoinRestrictionContext *joinRestrictionContext =
  plannerRestrictionContext->joinRestrictionContext;

 RelationRestrictionContext *filteredRelationRestrictionContext =
  FilterRelationRestrictionContext(relationRestrictionContext, queryRteIdentities);

 JoinRestrictionContext *filtererdJoinRestrictionContext =
  FilterJoinRestrictionContext(joinRestrictionContext, queryRteIdentities);


 filteredPlannerRestrictionContext = palloc0(sizeof(PlannerRestrictionContext));

 filteredPlannerRestrictionContext->memoryContext =
  plannerRestrictionContext->memoryContext;

 totalRelationCount = list_length(
  filteredRelationRestrictionContext->relationRestrictionList);
 referenceRelationCount = ReferenceRelationCount(filteredRelationRestrictionContext);

 filteredRelationRestrictionContext->allReferenceTables =
  (totalRelationCount == referenceRelationCount);


 filteredRelationRestrictionContext->hasLocalRelation = 0;
 filteredRelationRestrictionContext->hasDistributedRelation = 1;


 filteredPlannerRestrictionContext->relationRestrictionContext =
  filteredRelationRestrictionContext;
 filteredPlannerRestrictionContext->joinRestrictionContext =
  filtererdJoinRestrictionContext;

 return filteredPlannerRestrictionContext;
}
