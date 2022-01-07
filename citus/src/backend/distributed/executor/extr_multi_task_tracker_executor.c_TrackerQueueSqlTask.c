
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {TYPE_4__* taskAssignmentQuery; int status; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_13__ {int * taskStateHash; } ;
typedef TYPE_2__ TaskTracker ;
struct TYPE_14__ {int taskId; int jobId; int queryString; } ;
typedef TYPE_3__ Task ;
struct TYPE_15__ {int data; } ;
typedef TYPE_4__* StringInfo ;
typedef int HTAB ;


 scalar_t__ BinaryMasterCopyFormat ;
 int EXECUTE_SQL_TASK_TO_FILE_BINARY ;
 int EXECUTE_SQL_TASK_TO_FILE_TEXT ;
 int TASK_CLIENT_SIDE_QUEUED ;
 TYPE_4__* TaskAssignmentQuery (TYPE_3__*,int ) ;
 TYPE_1__* TaskStateHashEnter (int *,int ,int ) ;
 int appendStringInfo (TYPE_4__*,int ,int ,int ,char*) ;
 TYPE_4__* makeStringInfo () ;
 char* quote_literal_cstr (int ) ;

__attribute__((used)) static void
TrackerQueueSqlTask(TaskTracker *taskTracker, Task *task)
{
 HTAB *taskStateHash = taskTracker->taskStateHash;
 TrackerTaskState *taskState = ((void*)0);
 StringInfo taskAssignmentQuery = ((void*)0);
 StringInfo sqlTaskQueryString = makeStringInfo();
 char *escapedTaskQueryString = quote_literal_cstr(task->queryString);

 if (BinaryMasterCopyFormat)
 {
  appendStringInfo(sqlTaskQueryString, EXECUTE_SQL_TASK_TO_FILE_BINARY,
       task->jobId, task->taskId, escapedTaskQueryString);
 }
 else
 {
  appendStringInfo(sqlTaskQueryString, EXECUTE_SQL_TASK_TO_FILE_TEXT,
       task->jobId, task->taskId, escapedTaskQueryString);
 }


 taskAssignmentQuery = TaskAssignmentQuery(task, sqlTaskQueryString->data);

 taskState = TaskStateHashEnter(taskStateHash, task->jobId, task->taskId);
 taskState->status = TASK_CLIENT_SIDE_QUEUED;
 taskState->taskAssignmentQuery = taskAssignmentQuery;
}
