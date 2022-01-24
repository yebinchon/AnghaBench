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
struct TYPE_6__ {int /*<<< orphan*/  relationId; } ;
typedef  TYPE_1__ ShardInterval ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC2(ShardInterval *leftShardInterval, ShardInterval *rightShardInterval)
{
	bool tablesColocated = FUNC1(leftShardInterval->relationId,
										   rightShardInterval->relationId);

	if (tablesColocated)
	{
		bool shardIntervalEqual = FUNC0(leftShardInterval,
													   rightShardInterval);
		return shardIntervalEqual;
	}

	return false;
}