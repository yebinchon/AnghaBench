
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_8__ {int * taskStateHash; } ;
typedef TYPE_2__ TaskTracker ;
struct TYPE_9__ {int taskId; int jobId; } ;
typedef TYPE_3__ Task ;
typedef int HTAB ;


 int TASK_FILE_TRANSMIT_QUEUED ;
 TYPE_1__* TaskStateHashEnter (int *,int ,int ) ;

__attribute__((used)) static void
TrackerQueueFileTransmit(TaskTracker *transmitTracker, Task *task)
{
 HTAB *transmitStateHash = transmitTracker->taskStateHash;
 TrackerTaskState *transmitState = ((void*)0);

 transmitState = TaskStateHashEnter(transmitStateHash, task->jobId, task->taskId);
 transmitState->status = TASK_FILE_TRANSMIT_QUEUED;
}
