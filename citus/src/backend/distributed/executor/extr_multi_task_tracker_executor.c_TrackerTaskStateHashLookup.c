
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int taskId; int jobId; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_6__ {int taskId; int jobId; } ;
typedef TYPE_2__ Task ;
typedef int HTAB ;


 int HASH_FIND ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;

__attribute__((used)) static TrackerTaskState *
TrackerTaskStateHashLookup(HTAB *taskStateHash, Task *task)
{
 TrackerTaskState *taskState = ((void*)0);
 void *hashKey = ((void*)0);
 bool handleFound = 0;

 TrackerTaskState taskStateKey;
 taskStateKey.jobId = task->jobId;
 taskStateKey.taskId = task->taskId;

 hashKey = (void *) &taskStateKey;
 taskState = (TrackerTaskState *) hash_search(taskStateHash, hashKey,
             HASH_FIND, &handleFound);

 return taskState;
}
