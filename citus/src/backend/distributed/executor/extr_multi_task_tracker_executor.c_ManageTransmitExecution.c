
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int uint64 ;
typedef size_t uint32 ;
typedef int int32 ;
typedef int TransmitExecStatus ;
struct TYPE_21__ {int connectionBusy; int trackerFailureCount; int * connectionBusyOnTask; } ;
typedef TYPE_1__ TaskTracker ;
typedef int TaskStatus ;
struct TYPE_22__ {int* fileDescriptorArray; size_t currentNodeIndex; int* transmitStatusArray; int * taskStatusArray; } ;
typedef TYPE_2__ TaskExecution ;
typedef int TaskExecStatus ;
struct TYPE_23__ {scalar_t__ taskType; int taskId; int jobId; } ;
typedef TYPE_3__ Task ;
struct TYPE_25__ {int totalIntermediateResultSize; } ;
struct TYPE_24__ {char* data; } ;
typedef TYPE_4__* StringInfo ;
typedef int QueryStatus ;
typedef TYPE_5__ DistributedExecutionStats ;
typedef int CopyStatus ;


 int Assert (int) ;
 int BasicOpenFilePerm (char*,int,int) ;
 int CLIENT_COPY_DONE ;
 int CLIENT_COPY_FAILED ;
 int CLIENT_COPY_MORE ;
 int CLIENT_INVALID_COPY ;
 int CLIENT_INVALID_QUERY ;
 int CLIENT_QUERY_COPY ;
 int EXEC_TASK_DONE ;


 int EXEC_TRANSMIT_INVALID_FIRST ;




 int FATAL ;
 int INVALID_CONNECTION_ID ;
 TYPE_4__* MasterJobDirectoryName (int ) ;
 int MultiClientCopyData (int,int,int *) ;
 int MultiClientQueryStatus (int) ;
 int O_APPEND ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int PG_BINARY ;
 scalar_t__ SQL_TASK ;
 int S_IRUSR ;
 int S_IWUSR ;
 int SubPlanLevel ;
 int TASK_ASSIGNED ;
 int TASK_CLIENT_SIDE_TRANSMIT_FAILED ;
 int TASK_FILE_TRANSMIT_QUEUED ;
 int TASK_STATUS_INVALID_FIRST ;
 TYPE_4__* TaskFilename (TYPE_4__*,int ) ;
 int TrackerConnectionUp (TYPE_1__*) ;
 int TrackerHealthy (TYPE_1__*) ;
 int TrackerQueueFileTransmit (TYPE_1__*,TYPE_3__*) ;
 int TrackerTaskStatus (TYPE_1__*,TYPE_3__*) ;
 int TransmitTrackerConnectionId (TYPE_1__*,TYPE_3__*) ;
 int WARNING ;
 int close (int) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;

__attribute__((used)) static TransmitExecStatus
ManageTransmitExecution(TaskTracker *transmitTracker,
      Task *task, TaskExecution *taskExecution,
      DistributedExecutionStats *executionStats)
{
 int32 *fileDescriptorArray = taskExecution->fileDescriptorArray;
 uint32 currentNodeIndex = taskExecution->currentNodeIndex;
 uint32 nextNodeIndex = 0;

 TransmitExecStatus *transmitStatusArray = taskExecution->transmitStatusArray;
 TransmitExecStatus currentTransmitStatus = transmitStatusArray[currentNodeIndex];
 TransmitExecStatus nextTransmitStatus = EXEC_TRANSMIT_INVALID_FIRST;
 Assert(task->taskType == SQL_TASK);

 switch (currentTransmitStatus)
 {
  case 128:
  {
   TaskExecStatus *taskStatusArray = taskExecution->taskStatusArray;
   TaskExecStatus currentExecutionStatus = taskStatusArray[currentNodeIndex];
   bool trackerHealthy = 0;


   if (currentExecutionStatus != EXEC_TASK_DONE)
   {
    nextTransmitStatus = 128;
    break;
   }

   trackerHealthy = TrackerHealthy(transmitTracker);
   if (!trackerHealthy)
   {
    nextTransmitStatus = 130;
    break;
   }

   TrackerQueueFileTransmit(transmitTracker, task);
   nextTransmitStatus = 131;
   break;
  }

  case 131:
  {
   QueryStatus queryStatus = CLIENT_INVALID_QUERY;
   int32 connectionId = INVALID_CONNECTION_ID;
   TaskStatus taskStatus = TASK_STATUS_INVALID_FIRST;

   bool trackerHealthy = TrackerHealthy(transmitTracker);
   if (!trackerHealthy)
   {
    nextTransmitStatus = 130;
    break;
   }

   taskStatus = TrackerTaskStatus(transmitTracker, task);
   if (taskStatus == TASK_FILE_TRANSMIT_QUEUED)
   {

    nextTransmitStatus = 131;
    break;
   }
   else if (taskStatus == TASK_CLIENT_SIDE_TRANSMIT_FAILED)
   {
    nextTransmitStatus = 129;
    break;
   }


   connectionId = TransmitTrackerConnectionId(transmitTracker, task);
   Assert(connectionId != INVALID_CONNECTION_ID);
   Assert(taskStatus == TASK_ASSIGNED);


   queryStatus = MultiClientQueryStatus(connectionId);
   if (queryStatus == CLIENT_QUERY_COPY)
   {
    StringInfo jobDirectoryName = MasterJobDirectoryName(task->jobId);
    StringInfo taskFilename = TaskFilename(jobDirectoryName, task->taskId);

    char *filename = taskFilename->data;
    int fileFlags = (O_APPEND | O_CREAT | O_RDWR | O_TRUNC | PG_BINARY);
    int fileMode = (S_IRUSR | S_IWUSR);

    int32 fileDescriptor = BasicOpenFilePerm(filename, fileFlags, fileMode);
    if (fileDescriptor >= 0)
    {




     fileDescriptorArray[currentNodeIndex] = fileDescriptor;
     nextTransmitStatus = 133;
    }
    else
    {
     ereport(WARNING, (errcode_for_file_access(),
           errmsg("could not open file \"%s\": %m",
            filename)));

     nextTransmitStatus = 129;
    }
   }
   else
   {
    nextTransmitStatus = 129;
   }







   if (nextTransmitStatus == 129)
   {
    transmitTracker->connectionBusy = 0;
    transmitTracker->connectionBusyOnTask = ((void*)0);
   }

   break;
  }

  case 133:
  {
   int32 fileDescriptor = fileDescriptorArray[currentNodeIndex];
   CopyStatus copyStatus = CLIENT_INVALID_COPY;
   int closed = -1;
   uint64 bytesReceived = 0;


   int32 connectionId = TransmitTrackerConnectionId(transmitTracker, task);
   Assert(connectionId != INVALID_CONNECTION_ID);

   copyStatus = MultiClientCopyData(connectionId, fileDescriptor,
            &bytesReceived);

   if (SubPlanLevel > 0)
   {
    executionStats->totalIntermediateResultSize += bytesReceived;
   }

   if (copyStatus == CLIENT_COPY_MORE)
   {

    nextTransmitStatus = 133;
    break;
   }


   if (copyStatus == CLIENT_COPY_DONE)
   {
    closed = close(fileDescriptor);
    fileDescriptorArray[currentNodeIndex] = -1;

    if (closed >= 0)
    {
     nextTransmitStatus = 132;
    }
    else
    {
     ereport(WARNING, (errcode_for_file_access(),
           errmsg("could not close copied file: %m")));

     nextTransmitStatus = 129;
    }
   }
   else if (copyStatus == CLIENT_COPY_FAILED)
   {
    nextTransmitStatus = 129;

    closed = close(fileDescriptor);
    fileDescriptorArray[currentNodeIndex] = -1;

    if (closed < 0)
    {
     ereport(WARNING, (errcode_for_file_access(),
           errmsg("could not close copy file: %m")));
    }
   }






   transmitTracker->connectionBusy = 0;
   transmitTracker->connectionBusyOnTask = ((void*)0);

   break;
  }

  case 129:
  {
   bool trackerHealthy = 0;
   bool trackerConnectionUp = 0;






   trackerConnectionUp = TrackerConnectionUp(transmitTracker);
   if (trackerConnectionUp)
   {
    transmitTracker->trackerFailureCount++;
   }

   trackerHealthy = TrackerHealthy(transmitTracker);
   if (trackerHealthy)
   {
    nextTransmitStatus = 128;
   }
   else
   {
    nextTransmitStatus = 130;
   }

   break;
  }

  case 130:
  {





   nextTransmitStatus = 128;
   break;
  }

  case 132:
  {

   nextTransmitStatus = 132;
   break;
  }

  default:
  {

   ereport(FATAL, (errmsg("invalid transmit status: %d",
           currentTransmitStatus)));
   break;
  }
 }


 nextNodeIndex = taskExecution->currentNodeIndex;
 transmitStatusArray[nextNodeIndex] = nextTransmitStatus;

 return nextTransmitStatus;
}
