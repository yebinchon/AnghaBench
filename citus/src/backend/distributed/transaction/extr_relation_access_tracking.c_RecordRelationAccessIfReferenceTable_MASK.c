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
typedef  int /*<<< orphan*/  ShardPlacementAccessType ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 scalar_t__ DISTRIBUTE_BY_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(Oid relationId, ShardPlacementAccessType accessType)
{
	if (!FUNC2())
	{
		return;
	}

	/*
	 * We keep track of relation accesses for the purposes of foreign keys to
	 * reference tables. So, other distributed tables are not relevant for now.
	 * Additionally, partitioned tables with lots of partitions might require
	 * recursively calling RecordRelationAccessBase(), so becareful about
	 * removing this check.
	 */
	if (FUNC0(relationId) != DISTRIBUTE_BY_NONE)
	{
		return;
	}

	FUNC1(relationId, accessType);
}