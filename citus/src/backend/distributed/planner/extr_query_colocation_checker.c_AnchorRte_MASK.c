#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * setOperations; } ;
struct TYPE_9__ {int /*<<< orphan*/  rtable; int /*<<< orphan*/ * jointree; } ;
struct TYPE_8__ {scalar_t__ rtekind; int /*<<< orphan*/  relid; TYPE_4__* subquery; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  TYPE_2__ Query ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  FromExpr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 scalar_t__ RTE_RELATION ; 
 scalar_t__ RTE_SUBQUERY ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RangeTblEntry *
FUNC6(Query *subquery)
{
	FromExpr *joinTree = subquery->jointree;
	Relids joinRelIds = FUNC4((Node *) joinTree, false);
	int currentRTEIndex = -1;
	RangeTblEntry *anchorRangeTblEntry = NULL;

	/*
	 * Pick a random anchor relation or subquery (i.e., the first) for now. We
	 * might consider picking a better rte as the anchor. For example, we could
	 * iterate on the joinRelIds, and check which rteIndex has more distribution
	 * key equiality with rteIndexes. For the time being, the current primitive
	 * approach helps us in many cases.
	 */
	while ((currentRTEIndex = FUNC3(joinRelIds, currentRTEIndex)) >= 0)
	{
		RangeTblEntry *currentRte = FUNC5(currentRTEIndex, subquery->rtable);

		/*
		 * We always prefer distributed relations if we can find any. The
		 * reason is that Citus is currently able to recursively plan
		 * subqueries, but not relations.
		 *
		 * For the subqueries, make sure that the subquery contains at least one
		 * distributed table and doesn't have a set operation.
		 *
		 * TODO: The set operation restriction might sound weird, but, the restriction
		 * equivalance generation functions ignore set operations. We should
		 * integrate the logic in SafeToPushdownUnionSubquery() to
		 * GenerateAllAttributeEquivalences() such that the latter becomes aware of
		 * the set operations.
		 */
		if (anchorRangeTblEntry == NULL && currentRte->rtekind == RTE_SUBQUERY &&
			FUNC2(currentRte->subquery) &&
			currentRte->subquery->setOperations == NULL &&
			!FUNC0(currentRte->subquery))
		{
			/* found a subquery, keep it if we cannot find a relation */
			anchorRangeTblEntry = currentRte;
		}
		else if (currentRte->rtekind == RTE_RELATION)
		{
			Oid relationId = currentRte->relid;

			if (FUNC1(relationId) == DISTRIBUTE_BY_NONE)
			{
				/*
				 * Reference tables should not be the anchor rte since they
				 * don't have distribution key.
				 */
				continue;
			}

			anchorRangeTblEntry = currentRte;
			break;
		}
	}

	return anchorRangeTblEntry;
}