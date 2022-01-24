#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ maxValueExists; scalar_t__ minValueExists; int /*<<< orphan*/  maxValue; int /*<<< orphan*/  minValue; } ;
typedef  TYPE_1__ ShardInterval ;
typedef  int /*<<< orphan*/  FmgrInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(FmgrInfo *comparisonFunction, ShardInterval *firstInterval,
					ShardInterval *secondInterval)
{
	bool shardIntervalsEqual = false;
	Datum firstMin = 0;
	Datum firstMax = 0;
	Datum secondMin = 0;
	Datum secondMax = 0;

	firstMin = firstInterval->minValue;
	firstMax = firstInterval->maxValue;
	secondMin = secondInterval->minValue;
	secondMax = secondInterval->maxValue;

	if (firstInterval->minValueExists && firstInterval->maxValueExists &&
		secondInterval->minValueExists && secondInterval->maxValueExists)
	{
		Datum minDatum = FUNC0(comparisonFunction, firstMin, secondMin);
		Datum maxDatum = FUNC0(comparisonFunction, firstMax, secondMax);
		int firstComparison = FUNC1(minDatum);
		int secondComparison = FUNC1(maxDatum);

		if (firstComparison == 0 && secondComparison == 0)
		{
			shardIntervalsEqual = true;
		}
	}

	return shardIntervalsEqual;
}