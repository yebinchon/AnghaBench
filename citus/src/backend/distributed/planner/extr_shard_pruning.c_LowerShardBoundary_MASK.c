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
struct TYPE_3__ {int /*<<< orphan*/  maxValue; int /*<<< orphan*/  minValue; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INVALID_SHARD_INDEX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(Datum partitionColumnValue, ShardInterval **shardIntervalCache,
				   int shardCount, FunctionCallInfo compareFunction, bool includeMax)
{
	int lowerBoundIndex = 0;
	int upperBoundIndex = shardCount;

	FUNC0(shardCount != 0);

	/* setup partitionColumnValue argument once */
	FUNC2(compareFunction, 0, partitionColumnValue);

	while (lowerBoundIndex < upperBoundIndex)
	{
		int middleIndex = lowerBoundIndex + ((upperBoundIndex - lowerBoundIndex) / 2);
		int maxValueComparison = 0;
		int minValueComparison = 0;

		/* setup minValue as argument */
		FUNC2(compareFunction, 1, shardIntervalCache[middleIndex]->minValue);

		/* execute cmp(partitionValue, lowerBound) */
		minValueComparison = FUNC1(compareFunction);

		/* and evaluate results */
		if (minValueComparison < 0)
		{
			/* value smaller than entire range */
			upperBoundIndex = middleIndex;
			continue;
		}

		/* setup maxValue as argument */
		FUNC2(compareFunction, 1, shardIntervalCache[middleIndex]->maxValue);

		/* execute cmp(partitionValue, upperBound) */
		maxValueComparison = FUNC1(compareFunction);

		if ((maxValueComparison == 0 && !includeMax) ||
			maxValueComparison > 0)
		{
			/* value bigger than entire range */
			lowerBoundIndex = middleIndex + 1;
			continue;
		}

		/* found interval containing partitionValue */
		return middleIndex;
	}

	FUNC0(lowerBoundIndex == upperBoundIndex);

	/*
	 * If we get here, none of the ShardIntervals exactly contain the value
	 * (we'd have hit the return middleIndex; case otherwise). Figure out
	 * whether there's possibly any interval containing a value that's bigger
	 * than the partition key one.
	 */
	if (lowerBoundIndex == 0)
	{
		/* all intervals are bigger, thus return 0 */
		return 0;
	}
	else if (lowerBoundIndex == shardCount)
	{
		/* partition value is bigger than all partition values */
		return INVALID_SHARD_INDEX;
	}

	/* value falls inbetween intervals */
	return lowerBoundIndex + 1;
}