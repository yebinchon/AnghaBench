
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int workerPort; int workerName; } ;
typedef TYPE_1__ TaskTracker ;
typedef int HTAB ;


 int ERROR ;
 int HASH_FIND ;
 int WORKER_LENGTH ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*,int ) ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memset (int ,int ,int ) ;
 int strlcpy (int ,char const*,int ) ;

__attribute__((used)) static TaskTracker *
TrackerHashLookup(HTAB *trackerHash, const char *nodeName, uint32 nodePort)
{
 TaskTracker *taskTracker = ((void*)0);
 void *hashKey = ((void*)0);
 bool handleFound = 0;

 TaskTracker taskTrackerKey;
 memset(taskTrackerKey.workerName, 0, WORKER_LENGTH);
 strlcpy(taskTrackerKey.workerName, nodeName, WORKER_LENGTH);
 taskTrackerKey.workerPort = nodePort;

 hashKey = (void *) &taskTrackerKey;
 taskTracker = (TaskTracker *) hash_search(trackerHash, hashKey,
             HASH_FIND, &handleFound);
 if (taskTracker == ((void*)0) || !handleFound)
 {
  ereport(ERROR, (errmsg("could not find task tracker for node \"%s:%u\"",
          nodeName, nodePort)));
 }

 return taskTracker;
}
