
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
typedef int TaskType ;
struct TYPE_4__ {int taskId; int jobId; int taskType; } ;
typedef TYPE_1__ TaskMapKey ;
struct TYPE_5__ {int * task; } ;
typedef TYPE_2__ TaskMapEntry ;
typedef int Task ;
typedef int HTAB ;


 int HASH_FIND ;
 scalar_t__ hash_search (int *,void*,int ,int*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static Task *
TaskHashLookup(HTAB *taskHash, TaskType taskType, uint64 jobId, uint32 taskId)
{
 TaskMapEntry *taskEntry = ((void*)0);
 Task *task = ((void*)0);
 void *hashKey = ((void*)0);
 bool handleFound = 0;

 TaskMapKey taskKey;
 memset(&taskKey, 0, sizeof(TaskMapKey));

 taskKey.taskType = taskType;
 taskKey.jobId = jobId;
 taskKey.taskId = taskId;

 hashKey = (void *) &taskKey;
 taskEntry = (TaskMapEntry *) hash_search(taskHash, hashKey, HASH_FIND, &handleFound);

 if (taskEntry != ((void*)0))
 {
  task = taskEntry->task;
 }

 return task;
}
