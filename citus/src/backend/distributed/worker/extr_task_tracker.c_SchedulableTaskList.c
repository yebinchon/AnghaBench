
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_7__ {int taskId; int jobId; } ;
typedef TYPE_1__ WorkerTask ;
typedef int List ;
typedef int HTAB ;


 scalar_t__ CountTasksMatchingCriteria (int *,int *) ;
 scalar_t__ MaxRunningTasksPerNode ;
 int * NIL ;
 int RunningTask ;
 int SchedulableTask ;
 TYPE_1__* SchedulableTaskPriorityQueue (int *) ;
 TYPE_1__* WORKER_TASK_AT (TYPE_1__*,scalar_t__) ;
 int WORKER_TASK_SIZE ;
 int * lappend (int *,TYPE_1__*) ;
 scalar_t__ palloc0 (int ) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static List *
SchedulableTaskList(HTAB *WorkerTasksHash)
{
 List *schedulableTaskList = NIL;
 WorkerTask *schedulableTaskQueue = ((void*)0);
 uint32 runningTaskCount = 0;
 uint32 schedulableTaskCount = 0;
 uint32 tasksToScheduleCount = 0;
 uint32 queueIndex = 0;

 runningTaskCount = CountTasksMatchingCriteria(WorkerTasksHash, &RunningTask);
 if (runningTaskCount >= MaxRunningTasksPerNode)
 {
  return NIL;
 }

 schedulableTaskCount = CountTasksMatchingCriteria(WorkerTasksHash, &SchedulableTask);
 if (schedulableTaskCount == 0)
 {
  return NIL;
 }

 tasksToScheduleCount = MaxRunningTasksPerNode - runningTaskCount;
 if (tasksToScheduleCount > schedulableTaskCount)
 {
  tasksToScheduleCount = schedulableTaskCount;
 }


 schedulableTaskQueue = SchedulableTaskPriorityQueue(WorkerTasksHash);

 for (queueIndex = 0; queueIndex < tasksToScheduleCount; queueIndex++)
 {
  WorkerTask *schedulableTask = (WorkerTask *) palloc0(WORKER_TASK_SIZE);
  WorkerTask *queuedTask = WORKER_TASK_AT(schedulableTaskQueue, queueIndex);
  schedulableTask->jobId = queuedTask->jobId;
  schedulableTask->taskId = queuedTask->taskId;

  schedulableTaskList = lappend(schedulableTaskList, schedulableTask);
 }


 pfree(schedulableTaskQueue);

 return schedulableTaskList;
}
