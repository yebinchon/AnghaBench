#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ partitionId; } ;
typedef  TYPE_1__ Task ;
struct TYPE_10__ {scalar_t__ fragmentType; scalar_t__ fragmentReference; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef  TYPE_2__* StringInfo ;
typedef  int /*<<< orphan*/  ShardInterval ;
typedef  TYPE_3__ RangeTableFragment ;

/* Variables and functions */
 scalar_t__ CITUS_RTE_REMOTE_QUERY ; 
 int /*<<< orphan*/  DEBUG2 ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC6(RangeTableFragment *leftFragment, RangeTableFragment *rightFragment)
{
	bool joinPrunable = false;
	bool overlap = false;
	ShardInterval *leftFragmentInterval = NULL;
	ShardInterval *rightFragmentInterval = NULL;

	/*
	 * If both range tables are remote queries, we then have a hash repartition
	 * join. In that case, we can just prune away this join if left and right
	 * hand side fragments have the same partitionId.
	 */
	if (leftFragment->fragmentType == CITUS_RTE_REMOTE_QUERY &&
		rightFragment->fragmentType == CITUS_RTE_REMOTE_QUERY)
	{
		Task *leftMergeTask = (Task *) leftFragment->fragmentReference;
		Task *rightMergeTask = (Task *) rightFragment->fragmentReference;


		if (leftMergeTask->partitionId != rightMergeTask->partitionId)
		{
			FUNC4(DEBUG2, (FUNC5("join prunable for task partitionId %u and %u",
									leftMergeTask->partitionId,
									rightMergeTask->partitionId)));
			return true;
		}
		else
		{
			return false;
		}
	}


	/*
	 * We have a single (re)partition join. We now get shard intervals for both
	 * fragments, and then check if these intervals overlap.
	 */
	leftFragmentInterval = FUNC0(leftFragment);
	rightFragmentInterval = FUNC0(rightFragment);

	overlap = FUNC3(leftFragmentInterval, rightFragmentInterval);
	if (!overlap)
	{
		if (FUNC2(DEBUG2))
		{
			StringInfo leftString = FUNC1(leftFragmentInterval);
			StringInfo rightString = FUNC1(rightFragmentInterval);

			FUNC4(DEBUG2, (FUNC5("join prunable for intervals %s and %s",
									leftString->data, rightString->data)));
		}

		joinPrunable = true;
	}

	return joinPrunable;
}