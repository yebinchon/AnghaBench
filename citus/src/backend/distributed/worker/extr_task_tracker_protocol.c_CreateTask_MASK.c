#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  scalar_t__ uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  userName; int /*<<< orphan*/  databaseName; scalar_t__ failureCount; int /*<<< orphan*/  connectionId; int /*<<< orphan*/  taskStatus; int /*<<< orphan*/  taskCallString; scalar_t__ assignedAt; } ;
typedef  TYPE_1__ WorkerTask ;

/* Variables and functions */
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 scalar_t__ HIGH_PRIORITY_TASK_TIME ; 
 int /*<<< orphan*/  INVALID_CONNECTION_ID ; 
 scalar_t__ JOB_CLEANUP_TASK_ID ; 
 int /*<<< orphan*/  MaxTaskStringSize ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  TASK_ASSIGNED ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(uint64 jobId, uint32 taskId, char *taskCallString)
{
	WorkerTask *workerTask = NULL;
	uint32 assignmentTime = 0;
	char *databaseName = FUNC0();
	char *userName = FUNC1();

	/* increase task priority for cleanup tasks */
	assignmentTime = (uint32) FUNC4(NULL);
	if (taskId == JOB_CLEANUP_TASK_ID)
	{
		assignmentTime = HIGH_PRIORITY_TASK_TIME;
	}

	/* enter the worker task into shared hash and initialize the task */
	workerTask = FUNC2(jobId, taskId);
	workerTask->assignedAt = assignmentTime;
	FUNC3(workerTask->taskCallString, taskCallString, MaxTaskStringSize);

	workerTask->taskStatus = TASK_ASSIGNED;
	workerTask->connectionId = INVALID_CONNECTION_ID;
	workerTask->failureCount = 0;
	FUNC3(workerTask->databaseName, databaseName, NAMEDATALEN);
	FUNC3(workerTask->userName, userName, NAMEDATALEN);
}