
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef void* int32 ;
typedef int TrackerStatus ;
struct TYPE_3__ {int trackerStatus; char* workerName; char* userName; int connectPollCount; void* connectionId; int workerPort; } ;
typedef TYPE_1__ TaskTracker ;
typedef int ConnectStatus ;


 int CLIENT_CONNECTION_BAD ;
 int CLIENT_CONNECTION_BUSY ;
 int CLIENT_CONNECTION_BUSY_READ ;
 int CLIENT_CONNECTION_BUSY_WRITE ;
 int CLIENT_CONNECTION_READY ;
 char* CurrentDatabaseName () ;
 int FATAL ;
 void* INVALID_CONNECTION_ID ;
 int MultiClientConnectPoll (void*) ;
 void* MultiClientConnectStart (char*,int ,char*,char*) ;
 int MultiClientDisconnect (void*) ;
 float NodeConnectionTimeout ;
 float RemoteTaskCheckInterval ;




 int WARNING ;
 int ceil (float) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int) ;

__attribute__((used)) static TrackerStatus
TrackerConnectPoll(TaskTracker *taskTracker)
{
 switch (taskTracker->trackerStatus)
 {
  case 128:
  {
   char *nodeName = taskTracker->workerName;
   uint32 nodePort = taskTracker->workerPort;
   char *nodeDatabase = CurrentDatabaseName();
   char *nodeUser = taskTracker->userName;

   int32 connectionId = MultiClientConnectStart(nodeName, nodePort,
               nodeDatabase, nodeUser);
   if (connectionId != INVALID_CONNECTION_ID)
   {
    taskTracker->connectionId = connectionId;
    taskTracker->trackerStatus = 129;
   }
   else
   {
    taskTracker->trackerStatus = 130;
   }

   break;
  }

  case 129:
  {
   int32 connectionId = taskTracker->connectionId;

   ConnectStatus pollStatus = MultiClientConnectPoll(connectionId);
   if (pollStatus == CLIENT_CONNECTION_READY)
   {
    taskTracker->trackerStatus = 131;
   }
   else if (pollStatus == CLIENT_CONNECTION_BUSY ||
      pollStatus == CLIENT_CONNECTION_BUSY_READ ||
      pollStatus == CLIENT_CONNECTION_BUSY_WRITE)
   {
    taskTracker->trackerStatus = 129;
   }
   else if (pollStatus == CLIENT_CONNECTION_BAD)
   {
    taskTracker->trackerStatus = 130;

    MultiClientDisconnect(connectionId);
    taskTracker->connectionId = INVALID_CONNECTION_ID;
   }


   taskTracker->connectPollCount++;
   if (pollStatus == CLIENT_CONNECTION_BUSY_READ ||
    pollStatus == CLIENT_CONNECTION_BUSY_WRITE)
   {
    uint32 maxCount =
     ceil(NodeConnectionTimeout * 1.0f / RemoteTaskCheckInterval);
    uint32 currentCount = taskTracker->connectPollCount;
    if (currentCount >= maxCount)
    {
     ereport(WARNING, (errmsg("could not establish asynchronous "
            "connection after %u ms",
            NodeConnectionTimeout)));

     taskTracker->trackerStatus = 130;

     MultiClientDisconnect(connectionId);
     taskTracker->connectionId = INVALID_CONNECTION_ID;
    }
   }

   break;
  }

  case 131:
  case 130:
  {

   taskTracker->connectPollCount = 0;
   break;
  }

  default:
  {
   int trackerStatus = (int) taskTracker->trackerStatus;
   ereport(FATAL, (errmsg("invalid task tracker status: %d", trackerStatus)));
   break;
  }
 }

 return taskTracker->trackerStatus;
}
