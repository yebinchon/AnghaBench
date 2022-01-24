#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ taskStatus; } ;
typedef  TYPE_1__ WorkerTask ;
struct TYPE_6__ {int /*<<< orphan*/  taskHashLock; int /*<<< orphan*/  conninfosValid; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_EXCLUSIVE ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ TASK_TO_REMOVE ; 
 TYPE_2__* WorkerTasksSharedState ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(HTAB *WorkerTasksHash)
{
	HASH_SEQ_STATUS status;
	List *schedulableTaskList = NIL;
	WorkerTask *currentTask = NULL;

	/* ask the scheduler if we have new tasks to schedule */
	FUNC1(&WorkerTasksSharedState->taskHashLock, LW_SHARED);
	schedulableTaskList = FUNC5(WorkerTasksHash);
	FUNC2(&WorkerTasksSharedState->taskHashLock);

	FUNC1(&WorkerTasksSharedState->taskHashLock, LW_EXCLUSIVE);

	if (!WorkerTasksSharedState->conninfosValid)
	{
		FUNC0();
	}

	/* schedule new tasks if we have any */
	if (schedulableTaskList != NIL)
	{
		FUNC6(WorkerTasksHash, schedulableTaskList);
		FUNC9(schedulableTaskList);
	}

	/* now iterate over all tasks, and manage them */
	FUNC7(&status, WorkerTasksHash);

	currentTask = (WorkerTask *) FUNC8(&status);
	while (currentTask != NULL)
	{
		FUNC3(currentTask, WorkerTasksHash);

		/*
		 * Typically, we delete worker tasks in the task tracker protocol
		 * process. This task however was canceled mid-query, and the protocol
		 * process asked us to remove it from the shared hash.
		 */
		if (currentTask->taskStatus == TASK_TO_REMOVE)
		{
			FUNC4(currentTask, WorkerTasksHash);
		}

		currentTask = (WorkerTask *) FUNC8(&status);
	}

	FUNC2(&WorkerTasksSharedState->taskHashLock);
}