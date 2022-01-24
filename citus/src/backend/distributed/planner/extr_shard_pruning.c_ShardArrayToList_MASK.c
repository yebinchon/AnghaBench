#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ShardInterval ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC1(ShardInterval **shardArray, int length)
{
	List *shardIntervalList = NIL;
	int shardIndex;

	for (shardIndex = 0; shardIndex < length; shardIndex++)
	{
		ShardInterval *shardInterval =
			shardArray[shardIndex];
		shardIntervalList = FUNC0(shardIntervalList, shardInterval);
	}

	return shardIntervalList;
}