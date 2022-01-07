
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_8__ {int assignedAt; int taskId; int jobId; } ;
typedef TYPE_1__ WorkerTask ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int CompareTasksByTime ;
 int CountTasksMatchingCriteria (int *,scalar_t__ (*) (TYPE_1__*)) ;
 scalar_t__ SchedulableTask (TYPE_1__*) ;
 TYPE_1__* WORKER_TASK_AT (TYPE_1__*,int) ;
 int WORKER_TASK_SIZE ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 scalar_t__ palloc0 (int) ;
 int qsort (TYPE_1__*,int,int,int ) ;

__attribute__((used)) static WorkerTask *
SchedulableTaskPriorityQueue(HTAB *WorkerTasksHash)
{
 HASH_SEQ_STATUS status;
 WorkerTask *currentTask = ((void*)0);
 WorkerTask *priorityQueue = ((void*)0);
 uint32 queueSize = 0;
 uint32 queueIndex = 0;


 queueSize = CountTasksMatchingCriteria(WorkerTasksHash, &SchedulableTask);
 if (queueSize == 0)
 {
  return ((void*)0);
 }


 priorityQueue = (WorkerTask *) palloc0(WORKER_TASK_SIZE * queueSize);


 hash_seq_init(&status, WorkerTasksHash);

 currentTask = (WorkerTask *) hash_seq_search(&status);
 while (currentTask != ((void*)0))
 {
  if (SchedulableTask(currentTask))
  {

   WorkerTask *queueTask = WORKER_TASK_AT(priorityQueue, queueIndex);

   queueTask->jobId = currentTask->jobId;
   queueTask->taskId = currentTask->taskId;
   queueTask->assignedAt = currentTask->assignedAt;

   queueIndex++;
  }

  currentTask = (WorkerTask *) hash_seq_search(&status);
 }


 qsort(priorityQueue, queueSize, WORKER_TASK_SIZE, CompareTasksByTime);

 return priorityQueue;
}
