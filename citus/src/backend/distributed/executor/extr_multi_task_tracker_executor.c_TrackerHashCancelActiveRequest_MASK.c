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
struct TYPE_3__ {int /*<<< orphan*/  connectionId; scalar_t__ connectionBusy; } ;
typedef  TYPE_1__ TaskTracker ;
typedef  int /*<<< orphan*/  HTAB ;
typedef  int /*<<< orphan*/  HASH_SEQ_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(HTAB *taskTrackerHash)
{
	TaskTracker *taskTracker = NULL;
	HASH_SEQ_STATUS status;
	FUNC2(&status, taskTrackerHash);

	taskTracker = (TaskTracker *) FUNC3(&status);
	while (taskTracker != NULL)
	{
		bool trackerConnectionUp = FUNC1(taskTracker);

		/* if we have an ongoing request, send cancel message */
		if (trackerConnectionUp && taskTracker->connectionBusy)
		{
			FUNC0(taskTracker->connectionId);
		}

		taskTracker = (TaskTracker *) FUNC3(&status);
	}
}