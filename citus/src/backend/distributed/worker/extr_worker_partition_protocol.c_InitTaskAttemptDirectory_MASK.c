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
typedef  int /*<<< orphan*/  uint64 ;
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MIN_TASK_FILENAME_WIDTH ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static StringInfo
FUNC5(uint64 jobId, uint32 taskId)
{
	StringInfo taskDirectoryName = FUNC1(jobId, taskId);
	uint32 randomId = (uint32) FUNC4();

	/*
	 * We should have only one process executing this task. Still, we append a
	 * random id just in case.
	 */
	StringInfo taskAttemptDirectoryName = FUNC3();
	FUNC2(taskAttemptDirectoryName, "%s_%0*u",
					 taskDirectoryName->data, MIN_TASK_FILENAME_WIDTH, randomId);

	/*
	 * If this task previously failed, and gets re-executed and improbably draws
	 * the same randomId, the task will fail to create the directory.
	 */
	FUNC0(taskAttemptDirectoryName);

	return taskAttemptDirectoryName;
}