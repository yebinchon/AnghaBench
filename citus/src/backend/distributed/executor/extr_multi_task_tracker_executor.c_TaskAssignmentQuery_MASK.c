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
struct TYPE_3__ {int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; } ;
typedef  TYPE_1__ Task ;
typedef  int /*<<< orphan*/ * StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_ASSIGNMENT_QUERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 char* FUNC2 (char*) ; 

__attribute__((used)) static StringInfo
FUNC3(Task *task, char *queryString)
{
	StringInfo taskAssignmentQuery = NULL;

	/* quote the original query as a string literal */
	char *escapedQueryString = FUNC2(queryString);

	taskAssignmentQuery = FUNC1();
	FUNC0(taskAssignmentQuery, TASK_ASSIGNMENT_QUERY,
					 task->jobId, task->taskId, escapedQueryString);

	return taskAssignmentQuery;
}