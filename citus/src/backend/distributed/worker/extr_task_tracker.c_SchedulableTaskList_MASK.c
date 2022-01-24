#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; } ;
typedef  TYPE_1__ WorkerTask ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ MaxRunningTasksPerNode ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  RunningTask ; 
 int /*<<< orphan*/  SchedulableTask ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  WORKER_TASK_SIZE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static List *
FUNC6(HTAB *WorkerTasksHash)
{
	List *schedulableTaskList = NIL;
	WorkerTask *schedulableTaskQueue = NULL;
	uint32 runningTaskCount = 0;
	uint32 schedulableTaskCount = 0;
	uint32 tasksToScheduleCount = 0;
	uint32 queueIndex = 0;

	runningTaskCount = FUNC0(WorkerTasksHash, &RunningTask);
	if (runningTaskCount >= MaxRunningTasksPerNode)
	{
		return NIL;  /* we already have enough tasks running */
	}

	schedulableTaskCount = FUNC0(WorkerTasksHash, &SchedulableTask);
	if (schedulableTaskCount == 0)
	{
		return NIL;  /* we do not have any new tasks to schedule */
	}

	tasksToScheduleCount = MaxRunningTasksPerNode - runningTaskCount;
	if (tasksToScheduleCount > schedulableTaskCount)
	{
		tasksToScheduleCount = schedulableTaskCount;
	}

	/* get all schedulable tasks ordered according to a priority criteria */
	schedulableTaskQueue = FUNC1(WorkerTasksHash);

	for (queueIndex = 0; queueIndex < tasksToScheduleCount; queueIndex++)
	{
		WorkerTask *schedulableTask = (WorkerTask *) FUNC4(WORKER_TASK_SIZE);
		WorkerTask *queuedTask = FUNC2(schedulableTaskQueue, queueIndex);
		schedulableTask->jobId = queuedTask->jobId;
		schedulableTask->taskId = queuedTask->taskId;

		schedulableTaskList = FUNC3(schedulableTaskList, schedulableTask);
	}

	/* free priority queue */
	FUNC5(schedulableTaskQueue);

	return schedulableTaskList;
}