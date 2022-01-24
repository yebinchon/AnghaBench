#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_4__* taskAssignmentQuery; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ TrackerTaskState ;
struct TYPE_13__ {int /*<<< orphan*/ * taskStateHash; } ;
typedef  TYPE_2__ TaskTracker ;
struct TYPE_14__ {int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; int /*<<< orphan*/  queryString; } ;
typedef  TYPE_3__ Task ;
struct TYPE_15__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_4__* StringInfo ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 scalar_t__ BinaryMasterCopyFormat ; 
 int /*<<< orphan*/  EXECUTE_SQL_TASK_TO_FILE_BINARY ; 
 int /*<<< orphan*/  EXECUTE_SQL_TASK_TO_FILE_TEXT ; 
 int /*<<< orphan*/  TASK_CLIENT_SIDE_QUEUED ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(TaskTracker *taskTracker, Task *task)
{
	HTAB *taskStateHash = taskTracker->taskStateHash;
	TrackerTaskState *taskState = NULL;
	StringInfo taskAssignmentQuery = NULL;

	/*
	 * We first wrap the original query string in a worker_execute_sql_task
	 * call. This allows for the query's results to persist on the worker node
	 * after the query completes and for the executor to later fetch this
	 * persisted data using COPY ... (format 'transmit')
	 */

	StringInfo sqlTaskQueryString = FUNC3();
	char *escapedTaskQueryString = FUNC4(task->queryString);

	if (BinaryMasterCopyFormat)
	{
		FUNC2(sqlTaskQueryString, EXECUTE_SQL_TASK_TO_FILE_BINARY,
						 task->jobId, task->taskId, escapedTaskQueryString);
	}
	else
	{
		FUNC2(sqlTaskQueryString, EXECUTE_SQL_TASK_TO_FILE_TEXT,
						 task->jobId, task->taskId, escapedTaskQueryString);
	}

	/* wrap a task assignment query outside the copy out query */
	taskAssignmentQuery = FUNC0(task, sqlTaskQueryString->data);

	taskState = FUNC1(taskStateHash, task->jobId, task->taskId);
	taskState->status = TASK_CLIENT_SIDE_QUEUED;
	taskState->taskAssignmentQuery = taskAssignmentQuery;
}