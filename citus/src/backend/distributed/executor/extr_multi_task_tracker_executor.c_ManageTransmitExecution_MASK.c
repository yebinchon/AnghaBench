#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64 ;
typedef  size_t uint32 ;
typedef  int int32 ;
typedef  int TransmitExecStatus ;
struct TYPE_21__ {int connectionBusy; int /*<<< orphan*/  trackerFailureCount; int /*<<< orphan*/ * connectionBusyOnTask; } ;
typedef  TYPE_1__ TaskTracker ;
typedef  int /*<<< orphan*/  TaskStatus ;
struct TYPE_22__ {int* fileDescriptorArray; size_t currentNodeIndex; int* transmitStatusArray; int /*<<< orphan*/ * taskStatusArray; } ;
typedef  TYPE_2__ TaskExecution ;
typedef  int /*<<< orphan*/  TaskExecStatus ;
struct TYPE_23__ {scalar_t__ taskType; int /*<<< orphan*/  taskId; int /*<<< orphan*/  jobId; } ;
typedef  TYPE_3__ Task ;
struct TYPE_25__ {int /*<<< orphan*/  totalIntermediateResultSize; } ;
struct TYPE_24__ {char* data; } ;
typedef  TYPE_4__* StringInfo ;
typedef  int /*<<< orphan*/  QueryStatus ;
typedef  TYPE_5__ DistributedExecutionStats ;
typedef  int /*<<< orphan*/  CopyStatus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  CLIENT_COPY_DONE ; 
 int /*<<< orphan*/  CLIENT_COPY_FAILED ; 
 int /*<<< orphan*/  CLIENT_COPY_MORE ; 
 int /*<<< orphan*/  CLIENT_INVALID_COPY ; 
 int /*<<< orphan*/  CLIENT_INVALID_QUERY ; 
 int /*<<< orphan*/  CLIENT_QUERY_COPY ; 
 int /*<<< orphan*/  EXEC_TASK_DONE ; 
#define  EXEC_TRANSMIT_COPYING 133 
#define  EXEC_TRANSMIT_DONE 132 
 int EXEC_TRANSMIT_INVALID_FIRST ; 
#define  EXEC_TRANSMIT_QUEUED 131 
#define  EXEC_TRANSMIT_TRACKER_FAILED 130 
#define  EXEC_TRANSMIT_TRACKER_RETRY 129 
#define  EXEC_TRANSMIT_UNASSIGNED 128 
 int /*<<< orphan*/  FATAL ; 
 int INVALID_CONNECTION_ID ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PG_BINARY ; 
 scalar_t__ SQL_TASK ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  SubPlanLevel ; 
 int /*<<< orphan*/  TASK_ASSIGNED ; 
 int /*<<< orphan*/  TASK_CLIENT_SIDE_TRANSMIT_FAILED ; 
 int /*<<< orphan*/  TASK_FILE_TRANSMIT_QUEUED ; 
 int /*<<< orphan*/  TASK_STATUS_INVALID_FIRST ; 
 TYPE_4__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_3__*) ; 
 int FUNC10 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  WARNING ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 

__attribute__((used)) static TransmitExecStatus
FUNC15(TaskTracker *transmitTracker,
						Task *task, TaskExecution *taskExecution,
						DistributedExecutionStats *executionStats)
{
	int32 *fileDescriptorArray = taskExecution->fileDescriptorArray;
	uint32 currentNodeIndex = taskExecution->currentNodeIndex;
	uint32 nextNodeIndex = 0;

	TransmitExecStatus *transmitStatusArray = taskExecution->transmitStatusArray;
	TransmitExecStatus currentTransmitStatus = transmitStatusArray[currentNodeIndex];
	TransmitExecStatus nextTransmitStatus = EXEC_TRANSMIT_INVALID_FIRST;
	FUNC0(task->taskType == SQL_TASK);

	switch (currentTransmitStatus)
	{
		case EXEC_TRANSMIT_UNASSIGNED:
		{
			TaskExecStatus *taskStatusArray = taskExecution->taskStatusArray;
			TaskExecStatus currentExecutionStatus = taskStatusArray[currentNodeIndex];
			bool trackerHealthy = false;

			/* if top level task's in progress, nothing to do */
			if (currentExecutionStatus != EXEC_TASK_DONE)
			{
				nextTransmitStatus = EXEC_TRANSMIT_UNASSIGNED;
				break;
			}

			trackerHealthy = FUNC7(transmitTracker);
			if (!trackerHealthy)
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_FAILED;
				break;
			}

			FUNC8(transmitTracker, task);
			nextTransmitStatus = EXEC_TRANSMIT_QUEUED;
			break;
		}

		case EXEC_TRANSMIT_QUEUED:
		{
			QueryStatus queryStatus = CLIENT_INVALID_QUERY;
			int32 connectionId = INVALID_CONNECTION_ID;
			TaskStatus taskStatus = TASK_STATUS_INVALID_FIRST;

			bool trackerHealthy = FUNC7(transmitTracker);
			if (!trackerHealthy)
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_FAILED;
				break;
			}

			taskStatus = FUNC9(transmitTracker, task);
			if (taskStatus == TASK_FILE_TRANSMIT_QUEUED)
			{
				/* remain in queued status until tracker assigns this task */
				nextTransmitStatus = EXEC_TRANSMIT_QUEUED;
				break;
			}
			else if (taskStatus == TASK_CLIENT_SIDE_TRANSMIT_FAILED)
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_RETRY;
				break;
			}

			/* the open connection belongs to this task */
			connectionId = FUNC10(transmitTracker, task);
			FUNC0(connectionId != INVALID_CONNECTION_ID);
			FUNC0(taskStatus == TASK_ASSIGNED);

			/* start copy protocol */
			queryStatus = FUNC4(connectionId);
			if (queryStatus == CLIENT_QUERY_COPY)
			{
				StringInfo jobDirectoryName = FUNC2(task->jobId);
				StringInfo taskFilename = FUNC5(jobDirectoryName, task->taskId);

				char *filename = taskFilename->data;
				int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
				int fileMode = (S_IRUSR | S_IWUSR);

				int32 fileDescriptor = FUNC1(filename, fileFlags, fileMode);
				if (fileDescriptor >= 0)
				{
					/*
					 * All files inside the job directory get automatically cleaned
					 * up on transaction commit or abort.
					 */
					fileDescriptorArray[currentNodeIndex] = fileDescriptor;
					nextTransmitStatus = EXEC_TRANSMIT_COPYING;
				}
				else
				{
					FUNC12(WARNING, (FUNC13(),
									  FUNC14("could not open file \"%s\": %m",
											 filename)));

					nextTransmitStatus = EXEC_TRANSMIT_TRACKER_RETRY;
				}
			}
			else
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_RETRY;
			}

			/*
			 * We use task tracker logic to manage file transmits as well, but that
			 * abstraction starts to leak after we drop into the copy protocol. To
			 * make our task tracker logic work, we need to "void" the tracker's
			 * connection if the transmit task failed in here.
			 */
			if (nextTransmitStatus == EXEC_TRANSMIT_TRACKER_RETRY)
			{
				transmitTracker->connectionBusy = false;
				transmitTracker->connectionBusyOnTask = NULL;
			}

			break;
		}

		case EXEC_TRANSMIT_COPYING:
		{
			int32 fileDescriptor = fileDescriptorArray[currentNodeIndex];
			CopyStatus copyStatus = CLIENT_INVALID_COPY;
			int closed = -1;
			uint64 bytesReceived = 0;

			/* the open connection belongs to this task */
			int32 connectionId = FUNC10(transmitTracker, task);
			FUNC0(connectionId != INVALID_CONNECTION_ID);

			copyStatus = FUNC3(connectionId, fileDescriptor,
											 &bytesReceived);

			if (SubPlanLevel > 0)
			{
				executionStats->totalIntermediateResultSize += bytesReceived;
			}

			if (copyStatus == CLIENT_COPY_MORE)
			{
				/* worker node continues to send more data, keep reading */
				nextTransmitStatus = EXEC_TRANSMIT_COPYING;
				break;
			}

			/* we are done copying data */
			if (copyStatus == CLIENT_COPY_DONE)
			{
				closed = FUNC11(fileDescriptor);
				fileDescriptorArray[currentNodeIndex] = -1;

				if (closed >= 0)
				{
					nextTransmitStatus = EXEC_TRANSMIT_DONE;
				}
				else
				{
					FUNC12(WARNING, (FUNC13(),
									  FUNC14("could not close copied file: %m")));

					nextTransmitStatus = EXEC_TRANSMIT_TRACKER_RETRY;
				}
			}
			else if (copyStatus == CLIENT_COPY_FAILED)
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_RETRY;

				closed = FUNC11(fileDescriptor);
				fileDescriptorArray[currentNodeIndex] = -1;

				if (closed < 0)
				{
					FUNC12(WARNING, (FUNC13(),
									  FUNC14("could not close copy file: %m")));
				}
			}

			/*
			 * We use task tracker logic to manage file transmits as well, but that
			 * abstraction leaks after we drop into the copy protocol. To make it
			 * work, we reset transmit tracker's connection for next file transmit.
			 */
			transmitTracker->connectionBusy = false;
			transmitTracker->connectionBusyOnTask = NULL;

			break;
		}

		case EXEC_TRANSMIT_TRACKER_RETRY:
		{
			bool trackerHealthy = false;
			bool trackerConnectionUp = false;

			/*
			 * The task tracker proxy handles connection errors. On the off chance
			 * that our connection is still up and the transmit tracker misbehaved,
			 * we capture this as an intermittent tracker failure.
			 */
			trackerConnectionUp = FUNC6(transmitTracker);
			if (trackerConnectionUp)
			{
				transmitTracker->trackerFailureCount++;
			}

			trackerHealthy = FUNC7(transmitTracker);
			if (trackerHealthy)
			{
				nextTransmitStatus = EXEC_TRANSMIT_UNASSIGNED;
			}
			else
			{
				nextTransmitStatus = EXEC_TRANSMIT_TRACKER_FAILED;
			}

			break;
		}

		case EXEC_TRANSMIT_TRACKER_FAILED:
		{
			/*
			 * This case exists to signal to the caller that we failed. The caller
			 * is now responsible for reassigning the transmit task (and downstream
			 * SQL task dependencies) and running the appropriate recovery logic.
			 */
			nextTransmitStatus = EXEC_TRANSMIT_UNASSIGNED;
			break;
		}

		case EXEC_TRANSMIT_DONE:
		{
			/* we are done with fetching task results to the master node */
			nextTransmitStatus = EXEC_TRANSMIT_DONE;
			break;
		}

		default:
		{
			/* we fatal here to avoid leaking client-side resources */
			FUNC12(FATAL, (FUNC14("invalid transmit status: %d",
								   currentTransmitStatus)));
			break;
		}
	}

	/* update file transmit status for most recent transmit tracker */
	nextNodeIndex = taskExecution->currentNodeIndex;
	transmitStatusArray[nextNodeIndex] = nextTransmitStatus;

	return nextTransmitStatus;
}