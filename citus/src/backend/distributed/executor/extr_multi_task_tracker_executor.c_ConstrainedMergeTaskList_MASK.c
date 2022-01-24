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
typedef  scalar_t__ TaskType ;
struct TYPE_4__ {scalar_t__ taskType; int /*<<< orphan*/  dependedTaskList; } ;
typedef  TYPE_1__ Task ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MAP_OUTPUT_FETCH_TASK ; 
 scalar_t__ MAP_TASK ; 
 scalar_t__ MERGE_TASK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ SQL_TASK ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static List *
FUNC4(List *taskAndExecutionList, Task *task)
{
	List *constrainedMergeTaskList = NIL;
	TaskType taskType = task->taskType;

	/*
	 * We find the list of constraining merge tasks for the given task. If the
	 * given task is a SQL or map task, we simply need to find its merge task
	 * dependencies -- if any.
	 */
	if (taskType == SQL_TASK || taskType == MAP_TASK)
	{
		constrainedMergeTaskList = FUNC1(task->dependedTaskList);
	}
	else if (taskType == MAP_OUTPUT_FETCH_TASK)
	{
		List *taskList = FUNC2(taskAndExecutionList, task);
		Task *mergeTask = (Task *) FUNC3(taskList);

		/*
		 * Once we resolve the merge task, we use the exact same logic as below
		 * to find any other merge task in our constraint group.
		 */
		List *upstreamTaskList = FUNC2(taskAndExecutionList, mergeTask);
		Task *upstreamTask = (Task *) FUNC3(upstreamTaskList);

		constrainedMergeTaskList = FUNC1(upstreamTask->dependedTaskList);
	}
	else if (taskType == MERGE_TASK)
	{
		Task *upstreamTask = NULL;
		List *upstreamTaskList = FUNC2(taskAndExecutionList, task);

		/*
		 * A merge task can have multiple SQL/map task parents. We now get only
		 * one of those parents. We then search if the parent depends on another
		 * merge task besides us.
		 */
		FUNC0(upstreamTaskList != NIL);
		upstreamTask = (Task *) FUNC3(upstreamTaskList);

		constrainedMergeTaskList = FUNC1(upstreamTask->dependedTaskList);
	}

	return constrainedMergeTaskList;
}