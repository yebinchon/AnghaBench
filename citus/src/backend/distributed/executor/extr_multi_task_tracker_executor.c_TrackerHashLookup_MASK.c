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
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_3__ {int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ TaskTracker ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HASH_FIND ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TaskTracker *
FUNC5(HTAB *trackerHash, const char *nodeName, uint32 nodePort)
{
	TaskTracker *taskTracker = NULL;
	void *hashKey = NULL;
	bool handleFound = false;

	TaskTracker taskTrackerKey;
	FUNC3(taskTrackerKey.workerName, 0, WORKER_LENGTH);
	FUNC4(taskTrackerKey.workerName, nodeName, WORKER_LENGTH);
	taskTrackerKey.workerPort = nodePort;

	hashKey = (void *) &taskTrackerKey;
	taskTracker = (TaskTracker *) FUNC2(trackerHash, hashKey,
											  HASH_FIND, &handleFound);
	if (taskTracker == NULL || !handleFound)
	{
		FUNC0(ERROR, (FUNC1("could not find task tracker for node \"%s:%u\"",
							   nodeName, nodePort)));
	}

	return taskTracker;
}