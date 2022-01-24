#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  targetlist; } ;
typedef  TYPE_1__ Plan ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AttrNumber ;
typedef  int /*<<< orphan*/  AggStrategy ;
typedef  int /*<<< orphan*/  Agg ;

/* Variables and functions */
 int /*<<< orphan*/  AGGSPLIT_SIMPLE ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,...) ; 

__attribute__((used)) static Agg *
FUNC5(List *groupClauseList, List *havingQual, AggStrategy aggrStrategy,
			List *queryTargetList, Plan *subPlan)
{
	Agg *aggNode = NULL;
	int groupColumnCount = FUNC3(groupClauseList);
	AttrNumber *groupColumnIdArray =
		FUNC1(groupClauseList, subPlan->targetlist);
	Oid *groupColumnOpArray = FUNC2(groupClauseList);
	const int rowEstimate = 10;

#if (PG_VERSION_NUM >= 120000)
	aggNode = make_agg(queryTargetList, havingQual, aggrStrategy,
					   AGGSPLIT_SIMPLE, groupColumnCount, groupColumnIdArray,
					   groupColumnOpArray,
					   extract_grouping_collations(groupClauseList,
												   subPlan->targetlist),
					   NIL, NIL, rowEstimate, subPlan);
#else
	aggNode = FUNC4(queryTargetList, havingQual, aggrStrategy,
					   AGGSPLIT_SIMPLE, groupColumnCount, groupColumnIdArray,
					   groupColumnOpArray,
					   NIL, NIL, rowEstimate, subPlan);
#endif

	return aggNode;
}