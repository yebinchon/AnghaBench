#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ partitionMethod; } ;
struct TYPE_15__ {TYPE_1__* relationRestrictionContext; int /*<<< orphan*/ * memoryContext; } ;
struct TYPE_14__ {scalar_t__ rtekind; int /*<<< orphan*/  relid; } ;
struct TYPE_13__ {int distributedRelation; int /*<<< orphan*/  outerPlanParamsList; int /*<<< orphan*/  prunedShardIntervalList; int /*<<< orphan*/ * plannerInfo; int /*<<< orphan*/ * relOptInfo; TYPE_3__* rte; int /*<<< orphan*/  relationId; int /*<<< orphan*/  index; } ;
struct TYPE_12__ {int hasDistributedRelation; int hasLocalRelation; int allReferenceTables; int /*<<< orphan*/  relationRestrictionList; } ;
typedef  TYPE_1__ RelationRestrictionContext ;
typedef  TYPE_2__ RelationRestriction ;
typedef  int /*<<< orphan*/  RelOptInfo ;
typedef  TYPE_3__ RangeTblEntry ;
typedef  TYPE_4__ PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/ * MemoryContext ;
typedef  int /*<<< orphan*/  Index ;
typedef  TYPE_5__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 () ; 
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 

void
FUNC8(PlannerInfo *root, RelOptInfo *relOptInfo,
								Index restrictionIndex, RangeTblEntry *rte)
{
	PlannerRestrictionContext *plannerRestrictionContext = NULL;
	RelationRestrictionContext *relationRestrictionContext = NULL;
	MemoryContext restrictionsMemoryContext = NULL;
	MemoryContext oldMemoryContext = NULL;
	RelationRestriction *relationRestriction = NULL;
	DistTableCacheEntry *cacheEntry = NULL;
	bool distributedTable = false;
	bool localTable = false;

	FUNC0(rte, relOptInfo);

	if (rte->rtekind != RTE_RELATION)
	{
		return;
	}

	/*
	 * Use a memory context that's guaranteed to live long enough, could be
	 * called in a more shorted lived one (e.g. with GEQO).
	 */
	plannerRestrictionContext = FUNC1();
	restrictionsMemoryContext = plannerRestrictionContext->memoryContext;
	oldMemoryContext = FUNC4(restrictionsMemoryContext);

	distributedTable = FUNC3(rte->relid);
	localTable = !distributedTable;

	relationRestriction = FUNC7(sizeof(RelationRestriction));
	relationRestriction->index = restrictionIndex;
	relationRestriction->relationId = rte->relid;
	relationRestriction->rte = rte;
	relationRestriction->relOptInfo = relOptInfo;
	relationRestriction->distributedRelation = distributedTable;
	relationRestriction->plannerInfo = root;
	relationRestriction->prunedShardIntervalList = NIL;

	/* see comments on GetVarFromAssignedParam() */
	relationRestriction->outerPlanParamsList = FUNC5(root);

	relationRestrictionContext = plannerRestrictionContext->relationRestrictionContext;
	relationRestrictionContext->hasDistributedRelation |= distributedTable;
	relationRestrictionContext->hasLocalRelation |= localTable;

	/*
	 * We're also keeping track of whether all participant
	 * tables are reference tables.
	 */
	if (distributedTable)
	{
		cacheEntry = FUNC2(rte->relid);

		relationRestrictionContext->allReferenceTables &=
			(cacheEntry->partitionMethod == DISTRIBUTE_BY_NONE);
	}

	relationRestrictionContext->relationRestrictionList =
		FUNC6(relationRestrictionContext->relationRestrictionList, relationRestriction);

	FUNC4(oldMemoryContext);
}