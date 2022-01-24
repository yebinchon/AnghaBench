#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32 ;
struct TYPE_14__ {int /*<<< orphan*/  status; int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; } ;
typedef  TYPE_1__ TrackerTaskState ;
struct TYPE_15__ {int connectionBusy; TYPE_1__* connectionBusyOnTask; int /*<<< orphan*/  connectionId; int /*<<< orphan*/  taskStateHash; } ;
typedef  TYPE_2__ TaskTracker ;
struct TYPE_16__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__* StringInfo ;

/* Variables and functions */
 char* FUNC0 () ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_ASSIGNED ; 
 int /*<<< orphan*/  TASK_CLIENT_SIDE_TRANSMIT_FAILED ; 
 int /*<<< orphan*/  TRANSMIT_WITH_USER_COMMAND ; 
 TYPE_3__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void
FUNC11(TaskTracker *transmitTracker)
{
	TrackerTaskState *transmitState = NULL;
	bool trackerHealthy = false;
	bool trackerConnectionUp = false;

	trackerHealthy = FUNC6(transmitTracker);
	if (!trackerHealthy)
	{
		return;
	}

	trackerConnectionUp = FUNC5(transmitTracker);
	if (!trackerConnectionUp)
	{
		FUNC7(transmitTracker);  /* try an async reconnect */
		return;
	}

	/* connection belongs to another file transmit */
	if (transmitTracker->connectionBusy)
	{
		return;
	}

	transmitState = FUNC3(transmitTracker->taskStateHash);
	if (transmitState != NULL)
	{
		bool fileTransmitStarted = false;
		int32 connectionId = transmitTracker->connectionId;
		StringInfo jobDirectoryName = FUNC1(transmitState->jobId);
		StringInfo taskFilename = FUNC4(jobDirectoryName, transmitState->taskId);
		char *userName = FUNC0();

		StringInfo fileTransmitQuery = FUNC9();
		FUNC8(fileTransmitQuery, TRANSMIT_WITH_USER_COMMAND,
						 taskFilename->data, FUNC10(userName));

		fileTransmitStarted = FUNC2(connectionId, fileTransmitQuery->data);
		if (fileTransmitStarted)
		{
			transmitState->status = TASK_ASSIGNED;

			transmitTracker->connectionBusy = true;
			transmitTracker->connectionBusyOnTask = transmitState;
		}
		else
		{
			transmitState->status = TASK_CLIENT_SIDE_TRANSMIT_FAILED;

			transmitTracker->connectionBusy = false;
			transmitTracker->connectionBusyOnTask = NULL;
		}
	}
}