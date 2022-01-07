
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ taskStatus; scalar_t__ failureCount; int taskCallString; } ;
typedef TYPE_1__ WorkerTask ;
typedef scalar_t__ TaskStatus ;


 int Assert (int) ;
 int MaxTaskStringSize ;
 scalar_t__ TASK_ASSIGNED ;
 scalar_t__ TASK_CANCELED ;
 scalar_t__ TASK_CANCEL_REQUESTED ;
 scalar_t__ TASK_PERMANENTLY_FAILED ;
 scalar_t__ TASK_STATUS_INVALID_FIRST ;
 scalar_t__ TASK_SUCCEEDED ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static void
UpdateTask(WorkerTask *workerTask, char *taskCallString)
{
 TaskStatus taskStatus = TASK_STATUS_INVALID_FIRST;

 taskStatus = workerTask->taskStatus;
 Assert(taskStatus != TASK_STATUS_INVALID_FIRST);
 if (taskStatus == TASK_SUCCEEDED || taskStatus == TASK_CANCEL_REQUESTED ||
  taskStatus == TASK_CANCELED)
 {

 }
 else if (taskStatus == TASK_PERMANENTLY_FAILED)
 {
  strlcpy(workerTask->taskCallString, taskCallString, MaxTaskStringSize);
  workerTask->failureCount = 0;
  workerTask->taskStatus = TASK_ASSIGNED;
 }
 else
 {
  strlcpy(workerTask->taskCallString, taskCallString, MaxTaskStringSize);
  workerTask->failureCount = 0;
 }
}
