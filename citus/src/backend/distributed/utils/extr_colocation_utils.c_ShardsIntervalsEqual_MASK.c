#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ shardId; int /*<<< orphan*/  relationId; } ;
typedef  TYPE_1__ ShardInterval ;

/* Variables and functions */
 char DISTRIBUTE_BY_HASH ; 
 char DISTRIBUTE_BY_NONE ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(ShardInterval *leftShardInterval, ShardInterval *rightShardInterval)
{
	char leftIntervalPartitionMethod = FUNC1(leftShardInterval->relationId);
	char rightIntervalPartitionMethod = FUNC1(rightShardInterval->relationId);

	/* if both shards are  the same, return true */
	if (leftShardInterval->shardId == rightShardInterval->shardId)
	{
		return true;
	}

	/* if partition methods are not the same, shards cannot be considered as co-located */
	leftIntervalPartitionMethod = FUNC1(leftShardInterval->relationId);
	rightIntervalPartitionMethod = FUNC1(rightShardInterval->relationId);
	if (leftIntervalPartitionMethod != rightIntervalPartitionMethod)
	{
		return false;
	}

	if (leftIntervalPartitionMethod == DISTRIBUTE_BY_HASH)
	{
		return FUNC0(leftShardInterval, rightShardInterval);
	}
	else if (leftIntervalPartitionMethod == DISTRIBUTE_BY_NONE)
	{
		/*
		 * Reference tables has only a single shard and all reference tables
		 * are always co-located with each other.
		 */

		return true;
	}

	/* append and range partitioned shard never co-located */
	return false;
}