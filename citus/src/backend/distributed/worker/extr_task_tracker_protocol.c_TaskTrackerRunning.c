
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WorkerTask ;
struct TYPE_2__ {int taskHashLock; } ;


 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_SHARED ;
 int PostmasterIsAlive () ;
 int RESERVED_JOB_ID ;
 int SHUTDOWN_MARKER_TASK_ID ;
 int * WorkerTasksHashFind (int ,int ) ;
 TYPE_1__* WorkerTasksSharedState ;

__attribute__((used)) static bool
TaskTrackerRunning(void)
{
 WorkerTask *workerTask = ((void*)0);
 bool postmasterAlive = 1;
 bool taskTrackerRunning = 1;


 postmasterAlive = PostmasterIsAlive();
 if (!postmasterAlive)
 {
  return 0;
 }






 LWLockAcquire(&WorkerTasksSharedState->taskHashLock, LW_SHARED);

 workerTask = WorkerTasksHashFind(RESERVED_JOB_ID, SHUTDOWN_MARKER_TASK_ID);
 if (workerTask != ((void*)0))
 {
  taskTrackerRunning = 0;
 }

 LWLockRelease(&WorkerTasksSharedState->taskHashLock);

 return taskTrackerRunning;
}
