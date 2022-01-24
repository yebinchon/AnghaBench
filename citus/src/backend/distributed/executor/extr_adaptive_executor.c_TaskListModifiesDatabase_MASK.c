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
struct TYPE_2__ {int /*<<< orphan*/  taskType; } ;
typedef  TYPE_1__ Task ;
typedef  scalar_t__ RowModifyLevel ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ ROW_MODIFY_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC3(RowModifyLevel modLevel, List *taskList)
{
	Task *firstTask = NULL;

	if (modLevel > ROW_MODIFY_READONLY)
	{
		return true;
	}

	/*
	 * If we cannot decide by only checking the row modify level,
	 * we should look closer to the tasks.
	 */
	if (FUNC2(taskList) < 1)
	{
		/* is this ever possible? */
		return false;
	}

	firstTask = (Task *) FUNC1(taskList);

	return !FUNC0(firstTask->taskType);
}