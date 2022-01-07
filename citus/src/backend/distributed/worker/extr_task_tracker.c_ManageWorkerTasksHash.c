
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ taskStatus; } ;
typedef TYPE_1__ WorkerTask ;
struct TYPE_6__ {int taskHashLock; int conninfosValid; } ;
typedef int List ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int InvalidateConnParamsHashEntries () ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int LW_SHARED ;
 int ManageWorkerTask (TYPE_1__*,int *) ;
 int * NIL ;
 int RemoveWorkerTask (TYPE_1__*,int *) ;
 int * SchedulableTaskList (int *) ;
 int ScheduleWorkerTasks (int *,int *) ;
 scalar_t__ TASK_TO_REMOVE ;
 TYPE_2__* WorkerTasksSharedState ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int list_free_deep (int *) ;

__attribute__((used)) static void
ManageWorkerTasksHash(HTAB *WorkerTasksHash)
{
 HASH_SEQ_STATUS status;
 List *schedulableTaskList = NIL;
 WorkerTask *currentTask = ((void*)0);


 LWLockAcquire(&WorkerTasksSharedState->taskHashLock, LW_SHARED);
 schedulableTaskList = SchedulableTaskList(WorkerTasksHash);
 LWLockRelease(&WorkerTasksSharedState->taskHashLock);

 LWLockAcquire(&WorkerTasksSharedState->taskHashLock, LW_EXCLUSIVE);

 if (!WorkerTasksSharedState->conninfosValid)
 {
  InvalidateConnParamsHashEntries();
 }


 if (schedulableTaskList != NIL)
 {
  ScheduleWorkerTasks(WorkerTasksHash, schedulableTaskList);
  list_free_deep(schedulableTaskList);
 }


 hash_seq_init(&status, WorkerTasksHash);

 currentTask = (WorkerTask *) hash_seq_search(&status);
 while (currentTask != ((void*)0))
 {
  ManageWorkerTask(currentTask, WorkerTasksHash);






  if (currentTask->taskStatus == TASK_TO_REMOVE)
  {
   RemoveWorkerTask(currentTask, WorkerTasksHash);
  }

  currentTask = (WorkerTask *) hash_seq_search(&status);
 }

 LWLockRelease(&WorkerTasksSharedState->taskHashLock);
}
