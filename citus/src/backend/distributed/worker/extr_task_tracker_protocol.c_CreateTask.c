
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64 ;
typedef scalar_t__ uint32 ;
struct TYPE_3__ {int userName; int databaseName; scalar_t__ failureCount; int connectionId; int taskStatus; int taskCallString; scalar_t__ assignedAt; } ;
typedef TYPE_1__ WorkerTask ;


 char* CurrentDatabaseName () ;
 char* CurrentUserName () ;
 scalar_t__ HIGH_PRIORITY_TASK_TIME ;
 int INVALID_CONNECTION_ID ;
 scalar_t__ JOB_CLEANUP_TASK_ID ;
 int MaxTaskStringSize ;
 int NAMEDATALEN ;
 int TASK_ASSIGNED ;
 TYPE_1__* WorkerTasksHashEnter (int ,scalar_t__) ;
 int strlcpy (int ,char*,int ) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void
CreateTask(uint64 jobId, uint32 taskId, char *taskCallString)
{
 WorkerTask *workerTask = ((void*)0);
 uint32 assignmentTime = 0;
 char *databaseName = CurrentDatabaseName();
 char *userName = CurrentUserName();


 assignmentTime = (uint32) time(((void*)0));
 if (taskId == JOB_CLEANUP_TASK_ID)
 {
  assignmentTime = HIGH_PRIORITY_TASK_TIME;
 }


 workerTask = WorkerTasksHashEnter(jobId, taskId);
 workerTask->assignedAt = assignmentTime;
 strlcpy(workerTask->taskCallString, taskCallString, MaxTaskStringSize);

 workerTask->taskStatus = TASK_ASSIGNED;
 workerTask->connectionId = INVALID_CONNECTION_ID;
 workerTask->failureCount = 0;
 strlcpy(workerTask->databaseName, databaseName, NAMEDATALEN);
 strlcpy(workerTask->userName, userName, NAMEDATALEN);
}
