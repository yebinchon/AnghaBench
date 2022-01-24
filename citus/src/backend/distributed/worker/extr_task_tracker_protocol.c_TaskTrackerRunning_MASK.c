#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WorkerTask ;
struct TYPE_2__ {int /*<<< orphan*/  taskHashLock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LW_SHARED ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  RESERVED_JOB_ID ; 
 int /*<<< orphan*/  SHUTDOWN_MARKER_TASK_ID ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* WorkerTasksSharedState ; 

__attribute__((used)) static bool
FUNC4(void)
{
	WorkerTask *workerTask = NULL;
	bool postmasterAlive = true;
	bool taskTrackerRunning = true;

	/* if postmaster shut down, infer task tracker shut down from it */
	postmasterAlive = FUNC2();
	if (!postmasterAlive)
	{
		return false;
	}

	/*
	 * When the task tracker receives a termination signal, it inserts a special
	 * marker task to the shared hash. We need to look up this marker task since
	 * the postmaster doesn't send a terminate signal to running backends.
	 */
	FUNC0(&WorkerTasksSharedState->taskHashLock, LW_SHARED);

	workerTask = FUNC3(RESERVED_JOB_ID, SHUTDOWN_MARKER_TASK_ID);
	if (workerTask != NULL)
	{
		taskTrackerRunning = false;
	}

	FUNC1(&WorkerTasksSharedState->taskHashLock);

	return taskTrackerRunning;
}