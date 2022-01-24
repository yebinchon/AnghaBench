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
typedef  scalar_t__ int32 ;
struct TYPE_4__ {int /*<<< orphan*/  maxValue; int /*<<< orphan*/  minValue; } ;
typedef  TYPE_1__ ShardInterval ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC1(ShardInterval *leftShardInterval,
								   ShardInterval *rightShardInterval)
{
	int32 leftShardMinValue = FUNC0(leftShardInterval->minValue);
	int32 leftShardMaxValue = FUNC0(leftShardInterval->maxValue);
	int32 rightShardMinValue = FUNC0(rightShardInterval->minValue);
	int32 rightShardMaxValue = FUNC0(rightShardInterval->maxValue);

	bool minValuesEqual = leftShardMinValue == rightShardMinValue;
	bool maxValuesEqual = leftShardMaxValue == rightShardMaxValue;

	return minValuesEqual && maxValuesEqual;
}