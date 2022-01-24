#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_8__ {int /*<<< orphan*/  assignedAt; int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; } ;
typedef  TYPE_1__ WorkerTask ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  CompareTasksByTime ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__ (*) (TYPE_1__*)) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,int) ; 
 int WORKER_TASK_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static WorkerTask *
FUNC7(HTAB *WorkerTasksHash)
{
	HASH_SEQ_STATUS status;
	WorkerTask *currentTask = NULL;
	WorkerTask *priorityQueue = NULL;
	uint32 queueSize = 0;
	uint32 queueIndex = 0;

	/* our priority queue size equals to the number of schedulable tasks */
	queueSize = FUNC0(WorkerTasksHash, &SchedulableTask);
	if (queueSize == 0)
	{
		return NULL;
	}

	/* allocate an array of tasks for our priority queue */
	priorityQueue = (WorkerTask *) FUNC5(WORKER_TASK_SIZE * queueSize);

	/* copy tasks in the shared hash to the priority queue */
	FUNC3(&status, WorkerTasksHash);

	currentTask = (WorkerTask *) FUNC4(&status);
	while (currentTask != NULL)
	{
		if (FUNC1(currentTask))
		{
			/* tasks in the priority queue only need the first three fields */
			WorkerTask *queueTask = FUNC2(priorityQueue, queueIndex);

			queueTask->jobId = currentTask->jobId;
			queueTask->taskId = currentTask->taskId;
			queueTask->assignedAt = currentTask->assignedAt;

			queueIndex++;
		}

		currentTask = (WorkerTask *) FUNC4(&status);
	}

	/* now order elements in the queue according to our sorting criterion */
	FUNC6(priorityQueue, queueSize, WORKER_TASK_SIZE, CompareTasksByTime);

	return priorityQueue;
}