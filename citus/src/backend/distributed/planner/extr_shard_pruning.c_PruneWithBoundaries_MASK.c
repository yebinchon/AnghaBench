#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  compareIntervalFunctionCall; } ;
struct TYPE_16__ {int shardIntervalArrayLength; int /*<<< orphan*/ ** sortedShardIntervalArray; } ;
struct TYPE_15__ {TYPE_4__* lessConsts; TYPE_3__* lessEqualConsts; TYPE_2__* greaterConsts; TYPE_1__* greaterEqualConsts; } ;
struct TYPE_14__ {int /*<<< orphan*/  constvalue; } ;
struct TYPE_13__ {int /*<<< orphan*/  constvalue; } ;
struct TYPE_12__ {int /*<<< orphan*/  constvalue; } ;
struct TYPE_11__ {int /*<<< orphan*/  constvalue; } ;
typedef  int /*<<< orphan*/  ShardInterval ;
typedef  TYPE_5__ PruningInstance ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_6__ DistTableCacheEntry ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_7__ ClauseWalkerContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INVALID_SHARD_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC5(DistTableCacheEntry *cacheEntry, ClauseWalkerContext *context,
					PruningInstance *prune)
{
	List *remainingShardList = NIL;
	int shardCount = cacheEntry->shardIntervalArrayLength;
	ShardInterval **sortedShardIntervalArray = cacheEntry->sortedShardIntervalArray;
	bool hasLowerBound = false;
	bool hasUpperBound = false;
	Datum lowerBound = 0;
	Datum upperBound = 0;
	bool lowerBoundInclusive = false;
	bool upperBoundInclusive = false;
	int lowerBoundIdx = -1;
	int upperBoundIdx = -1;
	int curIdx = 0;
	FunctionCallInfo compareFunctionCall = (FunctionCallInfo) &
										   context->compareIntervalFunctionCall;

	if (prune->greaterEqualConsts)
	{
		lowerBound = prune->greaterEqualConsts->constvalue;
		lowerBoundInclusive = true;
		hasLowerBound = true;
	}
	if (prune->greaterConsts)
	{
		/*
		 * Use the more restrictive one, if both greater and greaterEqual
		 * constraints are specified.
		 */
		if (!hasLowerBound ||
			FUNC2(compareFunctionCall,
								prune->greaterConsts->constvalue,
								lowerBound) >= 0)
		{
			lowerBound = prune->greaterConsts->constvalue;
			lowerBoundInclusive = false;
			hasLowerBound = true;
		}
	}
	if (prune->lessEqualConsts)
	{
		upperBound = prune->lessEqualConsts->constvalue;
		upperBoundInclusive = true;
		hasUpperBound = true;
	}
	if (prune->lessConsts)
	{
		/*
		 * Use the more restrictive one, if both less and lessEqual
		 * constraints are specified.
		 */
		if (!hasUpperBound ||
			FUNC2(compareFunctionCall,
								prune->lessConsts->constvalue,
								upperBound) <= 0)
		{
			upperBound = prune->lessConsts->constvalue;
			upperBoundInclusive = false;
			hasUpperBound = true;
		}
	}

	FUNC0(hasLowerBound || hasUpperBound);

	/* find lower bound */
	if (hasLowerBound)
	{
		lowerBoundIdx = FUNC1(lowerBound, sortedShardIntervalArray,
										   shardCount, compareFunctionCall,
										   lowerBoundInclusive);
	}
	else
	{
		lowerBoundIdx = 0;
	}

	/* find upper bound */
	if (hasUpperBound)
	{
		upperBoundIdx = FUNC3(upperBound, sortedShardIntervalArray,
										   shardCount, compareFunctionCall,
										   upperBoundInclusive);
	}
	else
	{
		upperBoundIdx = shardCount - 1;
	}

	if (lowerBoundIdx == INVALID_SHARD_INDEX)
	{
		return NIL;
	}
	else if (upperBoundIdx == INVALID_SHARD_INDEX)
	{
		return NIL;
	}

	/*
	 * Build list of all shards that are in the range of shards (possibly 0).
	 */
	for (curIdx = lowerBoundIdx; curIdx <= upperBoundIdx; curIdx++)
	{
		remainingShardList = FUNC4(remainingShardList,
									 sortedShardIntervalArray[curIdx]);
	}

	return remainingShardList;
}