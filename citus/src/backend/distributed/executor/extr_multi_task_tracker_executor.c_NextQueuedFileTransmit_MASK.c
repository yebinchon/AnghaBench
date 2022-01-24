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
struct TYPE_3__ {scalar_t__ status; } ;
typedef  TYPE_1__ TrackerTaskState ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 scalar_t__ TASK_FILE_TRANSMIT_QUEUED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static TrackerTaskState *
FUNC3(HTAB *taskStateHash)
{
	HASH_SEQ_STATUS status;
	TrackerTaskState *taskState = NULL;
	FUNC0(&status, taskStateHash);

	taskState = (TrackerTaskState *) FUNC1(&status);
	while (taskState != NULL)
	{
		if (taskState->status == TASK_FILE_TRANSMIT_QUEUED)
		{
			FUNC2(&status);
			break;
		}

		taskState = (TrackerTaskState *) FUNC1(&status);
	}

	return taskState;
}