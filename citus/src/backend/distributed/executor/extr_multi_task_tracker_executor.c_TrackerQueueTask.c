
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * taskAssignmentQuery; int status; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_9__ {int * taskStateHash; } ;
typedef TYPE_2__ TaskTracker ;
struct TYPE_10__ {int taskId; int jobId; int queryString; } ;
typedef TYPE_3__ Task ;
typedef int * StringInfo ;
typedef int HTAB ;


 int TASK_CLIENT_SIDE_QUEUED ;
 int * TaskAssignmentQuery (TYPE_3__*,int ) ;
 TYPE_1__* TaskStateHashEnter (int *,int ,int ) ;

__attribute__((used)) static void
TrackerQueueTask(TaskTracker *taskTracker, Task *task)
{
 HTAB *taskStateHash = taskTracker->taskStateHash;
 TrackerTaskState *taskState = ((void*)0);
 StringInfo taskAssignmentQuery = ((void*)0);


 taskAssignmentQuery = TaskAssignmentQuery(task, task->queryString);

 taskState = TaskStateHashEnter(taskStateHash, task->jobId, task->taskId);
 taskState->status = TASK_CLIENT_SIDE_QUEUED;
 taskState->taskAssignmentQuery = taskAssignmentQuery;
}
