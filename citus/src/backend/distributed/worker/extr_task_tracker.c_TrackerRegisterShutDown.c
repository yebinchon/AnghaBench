
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64 ;
typedef int uint32 ;
struct TYPE_4__ {int connectionId; int taskStatus; } ;
typedef TYPE_1__ WorkerTask ;
struct TYPE_5__ {int taskHashLock; } ;
typedef int HTAB ;


 int INVALID_CONNECTION_ID ;
 int LWLockAcquire (int *,int ) ;
 int LWLockRelease (int *) ;
 int LW_EXCLUSIVE ;
 int RESERVED_JOB_ID ;
 int SHUTDOWN_MARKER_TASK_ID ;
 int TASK_SUCCEEDED ;
 TYPE_1__* WorkerTasksHashEnter (int ,int ) ;
 TYPE_2__* WorkerTasksSharedState ;

__attribute__((used)) static void
TrackerRegisterShutDown(HTAB *WorkerTasksHash)
{
 uint64 jobId = RESERVED_JOB_ID;
 uint32 taskId = SHUTDOWN_MARKER_TASK_ID;
 WorkerTask *shutdownMarkerTask = ((void*)0);

 LWLockAcquire(&WorkerTasksSharedState->taskHashLock, LW_EXCLUSIVE);

 shutdownMarkerTask = WorkerTasksHashEnter(jobId, taskId);
 shutdownMarkerTask->taskStatus = TASK_SUCCEEDED;
 shutdownMarkerTask->connectionId = INVALID_CONNECTION_ID;

 LWLockRelease(&WorkerTasksSharedState->taskHashLock);
}
