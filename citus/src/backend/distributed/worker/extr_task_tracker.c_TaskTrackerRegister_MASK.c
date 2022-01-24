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
typedef  int /*<<< orphan*/  worker ;
struct TYPE_4__ {int bgw_restart_time; int /*<<< orphan*/  bgw_name; scalar_t__ bgw_notify_pid; int /*<<< orphan*/  bgw_function_name; int /*<<< orphan*/  bgw_library_name; int /*<<< orphan*/  bgw_start_time; int /*<<< orphan*/  bgw_flags; } ;
typedef  TYPE_1__ BackgroundWorker ;

/* Variables and functions */
 int /*<<< orphan*/  BGWORKER_SHMEM_ACCESS ; 
 int /*<<< orphan*/  BGW_MAXLEN ; 
 int /*<<< orphan*/  BgWorkerStart_ConsistentState ; 
 scalar_t__ IsUnderPostmaster ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TaskTrackerShmemInit ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prev_shmem_startup_hook ; 
 int /*<<< orphan*/  shmem_startup_hook ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC5(void)
{
	BackgroundWorker worker;

	prev_shmem_startup_hook = shmem_startup_hook;
	shmem_startup_hook = TaskTrackerShmemInit;

	if (IsUnderPostmaster)
	{
		return;
	}

	/* organize and register initialization of required shared memory */
	FUNC1(FUNC2());

	/* and that the task tracker is started as background worker */
	FUNC3(&worker, 0, sizeof(worker));
	worker.bgw_flags = BGWORKER_SHMEM_ACCESS;
	worker.bgw_start_time = BgWorkerStart_ConsistentState;
	worker.bgw_restart_time = 1;
	FUNC4(worker.bgw_library_name, BGW_MAXLEN, "citus");
	FUNC4(worker.bgw_function_name, BGW_MAXLEN, "TaskTrackerMain");
	worker.bgw_notify_pid = 0;
	FUNC4(worker.bgw_name, BGW_MAXLEN, "task tracker");

	FUNC0(&worker);
}