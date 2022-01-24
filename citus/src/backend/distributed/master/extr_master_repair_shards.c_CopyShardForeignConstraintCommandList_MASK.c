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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC2(ShardInterval *shardInterval)
{
	List *colocatedShardForeignConstraintCommandList = NIL;
	List *referenceTableForeignConstraintList = NIL;

	FUNC0(shardInterval,
												 &
												 colocatedShardForeignConstraintCommandList,
												 &referenceTableForeignConstraintList);

	return FUNC1(colocatedShardForeignConstraintCommandList,
					   referenceTableForeignConstraintList);
}