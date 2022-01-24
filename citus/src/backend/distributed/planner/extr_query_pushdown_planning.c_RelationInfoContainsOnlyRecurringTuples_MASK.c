#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ ** simple_rte_array; } ;
struct TYPE_5__ {int /*<<< orphan*/  relids; } ;
typedef  int /*<<< orphan*/  Relids ;
typedef  TYPE_1__ RelOptInfo ;
typedef  int /*<<< orphan*/  RecurringTuplesType ;
typedef  int /*<<< orphan*/  RangeTblEntry ;
typedef  TYPE_2__ PlannerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(PlannerInfo *plannerInfo,
										RelOptInfo *relationInfo)
{
	RecurringTuplesType recurType;
	Relids relids = FUNC1(relationInfo->relids);
	int relationId = -1;

	while ((relationId = FUNC2(relids)) >= 0)
	{
		RangeTblEntry *rangeTableEntry = plannerInfo->simple_rte_array[relationId];

		/* relationInfo has this range table entry */
		if (!FUNC0(rangeTableEntry, &recurType))
		{
			return false;
		}
	}

	return true;
}