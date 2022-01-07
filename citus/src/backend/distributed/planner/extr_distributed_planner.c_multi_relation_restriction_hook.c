
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ partitionMethod; } ;
struct TYPE_15__ {TYPE_1__* relationRestrictionContext; int * memoryContext; } ;
struct TYPE_14__ {scalar_t__ rtekind; int relid; } ;
struct TYPE_13__ {int distributedRelation; int outerPlanParamsList; int prunedShardIntervalList; int * plannerInfo; int * relOptInfo; TYPE_3__* rte; int relationId; int index; } ;
struct TYPE_12__ {int hasDistributedRelation; int hasLocalRelation; int allReferenceTables; int relationRestrictionList; } ;
typedef TYPE_1__ RelationRestrictionContext ;
typedef TYPE_2__ RelationRestriction ;
typedef int RelOptInfo ;
typedef TYPE_3__ RangeTblEntry ;
typedef TYPE_4__ PlannerRestrictionContext ;
typedef int PlannerInfo ;
typedef int * MemoryContext ;
typedef int Index ;
typedef TYPE_5__ DistTableCacheEntry ;


 int AdjustReadIntermediateResultCost (TYPE_3__*,int *) ;
 TYPE_4__* CurrentPlannerRestrictionContext () ;
 scalar_t__ DISTRIBUTE_BY_NONE ;
 TYPE_5__* DistributedTableCacheEntry (int ) ;
 int IsDistributedTable (int ) ;
 int * MemoryContextSwitchTo (int *) ;
 int NIL ;
 int OuterPlanParamsList (int *) ;
 scalar_t__ RTE_RELATION ;
 int lappend (int ,TYPE_2__*) ;
 TYPE_2__* palloc0 (int) ;

void
multi_relation_restriction_hook(PlannerInfo *root, RelOptInfo *relOptInfo,
        Index restrictionIndex, RangeTblEntry *rte)
{
 PlannerRestrictionContext *plannerRestrictionContext = ((void*)0);
 RelationRestrictionContext *relationRestrictionContext = ((void*)0);
 MemoryContext restrictionsMemoryContext = ((void*)0);
 MemoryContext oldMemoryContext = ((void*)0);
 RelationRestriction *relationRestriction = ((void*)0);
 DistTableCacheEntry *cacheEntry = ((void*)0);
 bool distributedTable = 0;
 bool localTable = 0;

 AdjustReadIntermediateResultCost(rte, relOptInfo);

 if (rte->rtekind != RTE_RELATION)
 {
  return;
 }





 plannerRestrictionContext = CurrentPlannerRestrictionContext();
 restrictionsMemoryContext = plannerRestrictionContext->memoryContext;
 oldMemoryContext = MemoryContextSwitchTo(restrictionsMemoryContext);

 distributedTable = IsDistributedTable(rte->relid);
 localTable = !distributedTable;

 relationRestriction = palloc0(sizeof(RelationRestriction));
 relationRestriction->index = restrictionIndex;
 relationRestriction->relationId = rte->relid;
 relationRestriction->rte = rte;
 relationRestriction->relOptInfo = relOptInfo;
 relationRestriction->distributedRelation = distributedTable;
 relationRestriction->plannerInfo = root;
 relationRestriction->prunedShardIntervalList = NIL;


 relationRestriction->outerPlanParamsList = OuterPlanParamsList(root);

 relationRestrictionContext = plannerRestrictionContext->relationRestrictionContext;
 relationRestrictionContext->hasDistributedRelation |= distributedTable;
 relationRestrictionContext->hasLocalRelation |= localTable;





 if (distributedTable)
 {
  cacheEntry = DistributedTableCacheEntry(rte->relid);

  relationRestrictionContext->allReferenceTables &=
   (cacheEntry->partitionMethod == DISTRIBUTE_BY_NONE);
 }

 relationRestrictionContext->relationRestrictionList =
  lappend(relationRestrictionContext->relationRestrictionList, relationRestriction);

 MemoryContextSwitchTo(oldMemoryContext);
}
