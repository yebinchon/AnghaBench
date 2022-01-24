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
struct TYPE_4__ {scalar_t__ taskType; int /*<<< orphan*/ * dependedTaskList; } ;
typedef  TYPE_1__ Task ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAP_TASK ; 
 int /*<<< orphan*/ * NIL ; 
 scalar_t__ SQL_TASK ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static List *
FUNC3(List *taskAndExecutionList, Task *task)
{
	List *constrainedTaskList = NIL;
	Task *upstreamTask = NULL;
	List *dependedTaskList = NIL;

	TaskType taskType = task->taskType;
	if (taskType == SQL_TASK || taskType == MAP_TASK)
	{
		upstreamTask = task;
		dependedTaskList = upstreamTask->dependedTaskList;
	}
	FUNC0(upstreamTask != NULL);

	constrainedTaskList = FUNC2(upstreamTask);
	constrainedTaskList = FUNC1(constrainedTaskList, dependedTaskList);

	return constrainedTaskList;
}