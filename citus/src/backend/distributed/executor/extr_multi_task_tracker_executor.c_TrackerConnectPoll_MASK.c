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
typedef  void* int32 ;
typedef  int TrackerStatus ;
struct TYPE_3__ {int trackerStatus; char* workerName; char* userName; int /*<<< orphan*/  connectPollCount; void* connectionId; int /*<<< orphan*/  workerPort; } ;
typedef  TYPE_1__ TaskTracker ;
typedef  int /*<<< orphan*/  ConnectStatus ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_CONNECTION_BAD ; 
 int /*<<< orphan*/  CLIENT_CONNECTION_BUSY ; 
 int /*<<< orphan*/  CLIENT_CONNECTION_BUSY_READ ; 
 int /*<<< orphan*/  CLIENT_CONNECTION_BUSY_WRITE ; 
 int /*<<< orphan*/  CLIENT_CONNECTION_READY ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FATAL ; 
 void* INVALID_CONNECTION_ID ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 float NodeConnectionTimeout ; 
 float RemoteTaskCheckInterval ; 
#define  TRACKER_CONNECTED 131 
#define  TRACKER_CONNECTION_FAILED 130 
#define  TRACKER_CONNECT_POLL 129 
#define  TRACKER_CONNECT_START 128 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static TrackerStatus
FUNC7(TaskTracker *taskTracker)
{
	switch (taskTracker->trackerStatus)
	{
		case TRACKER_CONNECT_START:
		{
			char *nodeName = taskTracker->workerName;
			uint32 nodePort = taskTracker->workerPort;
			char *nodeDatabase = FUNC0();
			char *nodeUser = taskTracker->userName;

			int32 connectionId = FUNC2(nodeName, nodePort,
														 nodeDatabase, nodeUser);
			if (connectionId != INVALID_CONNECTION_ID)
			{
				taskTracker->connectionId = connectionId;
				taskTracker->trackerStatus = TRACKER_CONNECT_POLL;
			}
			else
			{
				taskTracker->trackerStatus = TRACKER_CONNECTION_FAILED;
			}

			break;
		}

		case TRACKER_CONNECT_POLL:
		{
			int32 connectionId = taskTracker->connectionId;

			ConnectStatus pollStatus = FUNC1(connectionId);
			if (pollStatus == CLIENT_CONNECTION_READY)
			{
				taskTracker->trackerStatus = TRACKER_CONNECTED;
			}
			else if (pollStatus == CLIENT_CONNECTION_BUSY ||
					 pollStatus == CLIENT_CONNECTION_BUSY_READ ||
					 pollStatus == CLIENT_CONNECTION_BUSY_WRITE)
			{
				taskTracker->trackerStatus = TRACKER_CONNECT_POLL;
			}
			else if (pollStatus == CLIENT_CONNECTION_BAD)
			{
				taskTracker->trackerStatus = TRACKER_CONNECTION_FAILED;

				FUNC3(connectionId);
				taskTracker->connectionId = INVALID_CONNECTION_ID;
			}

			/* now check if we have been trying to connect for too long */
			taskTracker->connectPollCount++;
			if (pollStatus == CLIENT_CONNECTION_BUSY_READ ||
				pollStatus == CLIENT_CONNECTION_BUSY_WRITE)
			{
				uint32 maxCount =
					FUNC4(NodeConnectionTimeout * 1.0f / RemoteTaskCheckInterval);
				uint32 currentCount = taskTracker->connectPollCount;
				if (currentCount >= maxCount)
				{
					FUNC5(WARNING, (FUNC6("could not establish asynchronous "
											 "connection after %u ms",
											 NodeConnectionTimeout)));

					taskTracker->trackerStatus = TRACKER_CONNECTION_FAILED;

					FUNC3(connectionId);
					taskTracker->connectionId = INVALID_CONNECTION_ID;
				}
			}

			break;
		}

		case TRACKER_CONNECTED:
		case TRACKER_CONNECTION_FAILED:
		{
			/* if connected or failed to connect in previous pass, reset poll count */
			taskTracker->connectPollCount = 0;
			break;
		}

		default:
		{
			int trackerStatus = (int) taskTracker->trackerStatus;
			FUNC5(FATAL, (FUNC6("invalid task tracker status: %d", trackerStatus)));
			break;
		}
	}

	return taskTracker->trackerStatus;
}