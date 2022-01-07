
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* int32 ;
struct TYPE_3__ {int taskStatus; void* connectionId; scalar_t__ failureCount; int taskId; int taskCallString; int userName; int databaseName; int jobId; } ;
typedef TYPE_1__ WorkerTask ;
typedef int ResultStatus ;
typedef int QueryStatus ;
typedef int HTAB ;


 int Assert (int) ;
 int CLIENT_QUERY_DONE ;
 int CLIENT_QUERY_FAILED ;
 int CLIENT_RESULT_BUSY ;
 int CLIENT_RESULT_READY ;
 int CLIENT_RESULT_UNAVAILABLE ;
 void* ConnectToLocalBackend (int ,int ) ;
 int CreateJobDirectoryIfNotExists (int ) ;
 int FATAL ;
 void* INVALID_CONNECTION_ID ;
 int JOB_CLEANUP_TASK_ID ;
 scalar_t__ MAX_TASK_FAILURE_COUNT ;
 int MultiClientCancel (void*) ;
 int MultiClientDisconnect (void*) ;
 int MultiClientQueryStatus (void*) ;
 int MultiClientResultStatus (void*) ;
 int MultiClientSendQuery (void*,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int) ;

__attribute__((used)) static void
ManageWorkerTask(WorkerTask *workerTask, HTAB *WorkerTasksHash)
{
 switch (workerTask->taskStatus)
 {
  case 136:
  {
   break;
  }

  case 130:
  {

   CreateJobDirectoryIfNotExists(workerTask->jobId);


   workerTask->connectionId = ConnectToLocalBackend(workerTask->databaseName,
                workerTask->userName);

   if (workerTask->connectionId != INVALID_CONNECTION_ID)
   {
    bool taskSent = MultiClientSendQuery(workerTask->connectionId,
              workerTask->taskCallString);
    if (taskSent)
    {
     workerTask->taskStatus = 131;
    }
    else
    {
     workerTask->taskStatus = 133;
     workerTask->failureCount++;

     MultiClientDisconnect(workerTask->connectionId);
     workerTask->connectionId = INVALID_CONNECTION_ID;
    }
   }
   else
   {
    workerTask->taskStatus = 133;
    workerTask->failureCount++;
   }

   break;
  }

  case 131:
  {
   int32 connectionId = workerTask->connectionId;
   ResultStatus resultStatus = MultiClientResultStatus(connectionId);


   if (resultStatus == CLIENT_RESULT_READY)
   {
    QueryStatus queryStatus = MultiClientQueryStatus(connectionId);
    if (queryStatus == CLIENT_QUERY_DONE)
    {
     workerTask->taskStatus = 129;
    }
    else if (queryStatus == CLIENT_QUERY_FAILED)
    {
     workerTask->taskStatus = 133;
     workerTask->failureCount++;
    }
    else
    {
     ereport(FATAL, (errmsg("invalid query status: %d", queryStatus)));
    }
   }
   else if (resultStatus == CLIENT_RESULT_BUSY)
   {
    workerTask->taskStatus = 131;
   }
   else if (resultStatus == CLIENT_RESULT_UNAVAILABLE)
   {
    workerTask->taskStatus = 133;
    workerTask->failureCount++;
   }


   if (resultStatus != CLIENT_RESULT_BUSY)
   {
    MultiClientDisconnect(workerTask->connectionId);
    workerTask->connectionId = INVALID_CONNECTION_ID;
   }

   break;
  }

  case 133:
  {
   if (workerTask->failureCount < MAX_TASK_FAILURE_COUNT)
   {
    workerTask->taskStatus = 136;
   }
   else
   {
    workerTask->taskStatus = 132;
   }

   break;
  }

  case 132:
  case 129:
  {
   break;
  }

  case 134:
  {






   if (workerTask->taskId == JOB_CLEANUP_TASK_ID)
   {
    workerTask->taskStatus = 135;
    break;
   }

   if (workerTask->connectionId != INVALID_CONNECTION_ID)
   {
    int32 connectionId = workerTask->connectionId;

    ResultStatus status = MultiClientResultStatus(connectionId);
    if (status == CLIENT_RESULT_BUSY)
    {
     MultiClientCancel(connectionId);
    }
   }


   workerTask->taskStatus = 135;
   break;
  }

  case 135:
  {
   if (workerTask->connectionId != INVALID_CONNECTION_ID)
   {
    MultiClientDisconnect(workerTask->connectionId);
    workerTask->connectionId = INVALID_CONNECTION_ID;
   }

   workerTask->taskStatus = 128;
   break;
  }

  case 128:
  default:
  {

   ereport(FATAL, (errmsg("invalid task status: %d", workerTask->taskStatus)));
   break;
  }
 }

 Assert(workerTask->failureCount <= MAX_TASK_FAILURE_COUNT);
}
