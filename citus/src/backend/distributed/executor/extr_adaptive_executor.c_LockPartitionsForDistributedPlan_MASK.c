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
struct TYPE_4__ {int /*<<< orphan*/  relationIdList; int /*<<< orphan*/  targetRelationId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistributedPlan ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(DistributedPlan *distributedPlan)
{
	if (FUNC0(distributedPlan))
	{
		Oid targetRelationId = distributedPlan->targetRelationId;

		FUNC1(FUNC2(targetRelationId), RowExclusiveLock);
	}

	/*
	 * Lock partitions of tables that appear in a SELECT or subquery. In the
	 * DML case this also includes the target relation, but since we already
	 * have a stronger lock this doesn't do any harm.
	 */
	FUNC1(distributedPlan->relationIdList, AccessShareLock);
}