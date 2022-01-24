#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_2__ {int /*<<< orphan*/  shardId; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(List *shardIntervalList, LOCKMODE lockMode)
{
	ShardInterval *firstShardInterval = (ShardInterval *) FUNC6(shardIntervalList);
	int64 firstShardId = firstShardInterval->shardId;

	if (FUNC5(firstShardId))
	{
		if (FUNC0() && !FUNC1())
		{
			FUNC4(lockMode, shardIntervalList);
		}

		/*
		 * Referenced tables can cascade their changes to this table, and we
		 * want to serialize changes to keep different replicas consistent.
		 */
		FUNC2(firstShardId, lockMode);
	}


	FUNC3(shardIntervalList, lockMode);
}