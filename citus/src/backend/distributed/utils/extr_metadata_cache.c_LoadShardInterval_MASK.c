#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
struct TYPE_5__ {int isDistributedTable; size_t shardIntervalArrayLength; int /*<<< orphan*/ ** sortedShardIntervalArray; } ;
struct TYPE_4__ {size_t shardIndex; TYPE_2__* tableEntry; } ;
typedef  int /*<<< orphan*/  ShardInterval ;
typedef  TYPE_1__ ShardCacheEntry ;
typedef  TYPE_2__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

ShardInterval *
FUNC4(uint64 shardId)
{
	ShardInterval *shardInterval = NULL;
	ShardInterval *sourceShardInterval = NULL;
	ShardCacheEntry *shardEntry = NULL;
	DistTableCacheEntry *tableEntry = NULL;

	shardEntry = FUNC2(shardId);

	tableEntry = shardEntry->tableEntry;

	FUNC0(tableEntry->isDistributedTable);

	/* the offset better be in a valid range */
	FUNC0(shardEntry->shardIndex < tableEntry->shardIntervalArrayLength);

	sourceShardInterval = tableEntry->sortedShardIntervalArray[shardEntry->shardIndex];

	/* copy value to return */
	shardInterval = (ShardInterval *) FUNC3(sizeof(ShardInterval));
	FUNC1(sourceShardInterval, shardInterval);

	return shardInterval;
}