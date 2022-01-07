
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_3__ {int taskId; int jobId; } ;
typedef TYPE_1__ WorkerTask ;


 int HASH_FIND ;
 int TaskTrackerTaskHash ;
 scalar_t__ hash_search (int ,void*,int ,int *) ;

WorkerTask *
WorkerTasksHashFind(uint64 jobId, uint32 taskId)
{
 WorkerTask *workerTask = ((void*)0);
 void *hashKey = ((void*)0);

 WorkerTask searchTask;
 searchTask.jobId = jobId;
 searchTask.taskId = taskId;

 hashKey = (void *) &searchTask;
 workerTask = (WorkerTask *) hash_search(TaskTrackerTaskHash, hashKey,
           HASH_FIND, ((void*)0));

 return workerTask;
}
