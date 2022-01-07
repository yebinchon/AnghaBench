
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_6__ {int currentTaskIndex; int connectionId; int trackerStatus; int workerPort; int workerName; } ;
typedef TYPE_1__ TaskTracker ;
typedef int HTAB ;


 int HASH_ENTER ;
 int INVALID_CONNECTION_ID ;
 int TRACKER_CONNECT_START ;
 int WARNING ;
 int WORKER_LENGTH ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*,int ) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static TaskTracker *
TrackerHashEnter(HTAB *taskTrackerHash, char *nodeName, uint32 nodePort)
{
 TaskTracker *taskTracker = ((void*)0);
 void *hashKey = ((void*)0);
 bool handleFound = 0;

 TaskTracker taskTrackerKey;
 memset(&taskTrackerKey, 0, sizeof(TaskTracker));
 strlcpy(taskTrackerKey.workerName, nodeName, WORKER_LENGTH);
 taskTrackerKey.workerPort = nodePort;

 hashKey = (void *) &taskTrackerKey;
 taskTracker = (TaskTracker *) hash_search(taskTrackerHash, hashKey,
             HASH_ENTER, &handleFound);


 if (handleFound)
 {
  ereport(WARNING, (errmsg("multiple entries for task tracker: \"%s:%u\"",
         nodeName, nodePort)));
 }


 memcpy(taskTracker, &taskTrackerKey, sizeof(TaskTracker));
 taskTracker->trackerStatus = TRACKER_CONNECT_START;
 taskTracker->connectionId = INVALID_CONNECTION_ID;
 taskTracker->currentTaskIndex = -1;

 return taskTracker;
}
