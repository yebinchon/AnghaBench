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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ShardCount ; 
 int /*<<< orphan*/  ShardReplicationFactor ; 

__attribute__((used)) static void
FUNC4(Oid relationId, Oid colocatedTableId,
								 bool localTableEmpty)
{
	bool useExclusiveConnection = false;

	/*
	 * Decide whether to use exclusive connections per placement or not. Note that
	 * if the local table is not empty, we cannot use sequential mode since the COPY
	 * operation that'd load the data into shards currently requires exclusive
	 * connections.
	 */
	if (FUNC3(relationId))
	{
		useExclusiveConnection = FUNC0(relationId,
															localTableEmpty);
	}

	if (colocatedTableId != InvalidOid)
	{
		FUNC1(relationId, colocatedTableId, useExclusiveConnection);
	}
	else
	{
		/*
		 * This path is only reached by create_distributed_table for the distributed
		 * tables which will not be part of an existing colocation group. Therefore,
		 * we can directly use ShardCount and ShardReplicationFactor global variables
		 * here.
		 */
		FUNC2(relationId, ShardCount, ShardReplicationFactor,
										 useExclusiveConnection);
	}
}