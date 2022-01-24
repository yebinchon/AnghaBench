#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  relationShardList; int /*<<< orphan*/  relationRowLockList; } ;
typedef  TYPE_1__ Task ;
typedef  int /*<<< orphan*/  RowModifyLevel ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExclusiveLock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void
FUNC4(Task *task, RowModifyLevel modLevel)
{
	FUNC0(task, modLevel);
	FUNC1(task->relationRowLockList);

	/*
	 * If the task has a subselect, then we may need to lock the shards from which
	 * the query selects as well to prevent the subselects from seeing different
	 * results on different replicas. In particular this prevents INSERT.. SELECT
	 * commands from having a different effect on different placements.
	 */
	if (FUNC3(task))
	{
		/*
		 * ExclusiveLock conflicts with all lock types used by modifications
		 * and therefore prevents other modifications from running
		 * concurrently.
		 */

		FUNC2(task->relationShardList, ExclusiveLock);
	}
}