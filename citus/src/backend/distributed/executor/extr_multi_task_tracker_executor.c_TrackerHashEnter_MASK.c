#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_6__ {int currentTaskIndex; int /*<<< orphan*/  connectionId; int /*<<< orphan*/  trackerStatus; int /*<<< orphan*/  workerPort; int /*<<< orphan*/  workerName; } ;
typedef  TYPE_1__ TaskTracker ;
typedef  int /*<<< orphan*/  HTAB ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  INVALID_CONNECTION_ID ; 
 int /*<<< orphan*/  TRACKER_CONNECT_START ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  WORKER_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static TaskTracker *
FUNC6(HTAB *taskTrackerHash, char *nodeName, uint32 nodePort)
{
	TaskTracker *taskTracker = NULL;
	void *hashKey = NULL;
	bool handleFound = false;

	TaskTracker taskTrackerKey;
	FUNC4(&taskTrackerKey, 0, sizeof(TaskTracker));
	FUNC5(taskTrackerKey.workerName, nodeName, WORKER_LENGTH);
	taskTrackerKey.workerPort = nodePort;

	hashKey = (void *) &taskTrackerKey;
	taskTracker = (TaskTracker *) FUNC2(taskTrackerHash, hashKey,
											  HASH_ENTER, &handleFound);

	/* if same node appears twice, we overwrite previous entry */
	if (handleFound)
	{
		FUNC0(WARNING, (FUNC1("multiple entries for task tracker: \"%s:%u\"",
								 nodeName, nodePort)));
	}

	/* init task tracker object with zeroed out task tracker key */
	FUNC3(taskTracker, &taskTrackerKey, sizeof(TaskTracker));
	taskTracker->trackerStatus = TRACKER_CONNECT_START;
	taskTracker->connectionId = INVALID_CONNECTION_ID;
	taskTracker->currentTaskIndex = -1;

	return taskTracker;
}