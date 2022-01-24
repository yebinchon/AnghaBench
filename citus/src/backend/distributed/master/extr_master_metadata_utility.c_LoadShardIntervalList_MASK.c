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
struct TYPE_3__ {int shardIntervalArrayLength; int /*<<< orphan*/ * sortedShardIntervalArray; } ;
typedef  int /*<<< orphan*/  ShardInterval ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 

List *
FUNC4(Oid relationId)
{
	DistTableCacheEntry *cacheEntry = FUNC1(relationId);
	List *shardList = NIL;
	int i = 0;

	for (i = 0; i < cacheEntry->shardIntervalArrayLength; i++)
	{
		ShardInterval *newShardInterval = NULL;
		newShardInterval = (ShardInterval *) FUNC3(sizeof(ShardInterval));

		FUNC0(cacheEntry->sortedShardIntervalArray[i], newShardInterval);

		shardList = FUNC2(shardList, newShardInterval);
	}

	return shardList;
}