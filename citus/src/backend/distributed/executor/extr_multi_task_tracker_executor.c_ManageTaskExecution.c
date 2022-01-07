
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef size_t uint32 ;
typedef int TaskType ;
struct TYPE_20__ {int trackerFailureCount; } ;
typedef TYPE_1__ TaskTracker ;
typedef int TaskStatus ;
struct TYPE_21__ {int* taskStatusArray; size_t currentNodeIndex; size_t querySourceNodeIndex; } ;
typedef TYPE_2__ TaskExecution ;
typedef int TaskExecStatus ;
struct TYPE_22__ {int taskType; TYPE_2__* taskExecution; int dependedTaskList; int queryString; } ;
typedef TYPE_3__ Task ;
struct TYPE_23__ {int data; } ;
typedef TYPE_4__* StringInfo ;


 int Assert (int) ;



 int EXEC_TASK_INVALID_FIRST ;




 int FATAL ;
 int MAP_OUTPUT_FETCH_TASK ;
 TYPE_4__* MapFetchTaskQueryString (TYPE_3__*,TYPE_3__*) ;
 int SQL_TASK ;
 int TASK_CLIENT_SIDE_ASSIGN_FAILED ;
 int TASK_CLIENT_SIDE_STATUS_FAILED ;
 int TASK_PERMANENTLY_FAILED ;
 int TASK_STATUS_INVALID_FIRST ;
 int TASK_SUCCEEDED ;
 int TASK_TYPE_INVALID_FIRST ;
 int TaskExecutionsCompleted (int ) ;
 int TrackerConnectionUp (TYPE_1__*) ;
 int TrackerHealthy (TYPE_1__*) ;
 int TrackerQueueSqlTask (TYPE_1__*,TYPE_3__*) ;
 int TrackerQueueTask (TYPE_1__*,TYPE_3__*) ;
 int TrackerTaskStatus (TYPE_1__*,TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int) ;
 scalar_t__ linitial (int ) ;

__attribute__((used)) static TaskExecStatus
ManageTaskExecution(TaskTracker *taskTracker, TaskTracker *sourceTaskTracker,
     Task *task, TaskExecution *taskExecution)
{
 TaskExecStatus *taskStatusArray = taskExecution->taskStatusArray;
 uint32 currentNodeIndex = taskExecution->currentNodeIndex;
 uint32 nextNodeIndex = 0;

 TaskExecStatus currentExecutionStatus = taskStatusArray[currentNodeIndex];
 TaskExecStatus nextExecutionStatus = EXEC_TASK_INVALID_FIRST;

 switch (currentExecutionStatus)
 {
  case 128:
  {
   bool taskExecutionsCompleted = 1;
   TaskType taskType = TASK_TYPE_INVALID_FIRST;

   bool trackerHealthy = TrackerHealthy(taskTracker);
   if (!trackerHealthy)
   {
    nextExecutionStatus = 130;
    break;
   }





   taskExecutionsCompleted = TaskExecutionsCompleted(task->dependedTaskList);
   if (!taskExecutionsCompleted)
   {
    nextExecutionStatus = 128;
    break;
   }


   taskType = task->taskType;
   if (taskType == MAP_OUTPUT_FETCH_TASK)
   {
    StringInfo mapFetchTaskQueryString = ((void*)0);
    Task *mapTask = (Task *) linitial(task->dependedTaskList);
    TaskExecution *mapTaskExecution = mapTask->taskExecution;

    mapFetchTaskQueryString = MapFetchTaskQueryString(task, mapTask);
    task->queryString = mapFetchTaskQueryString->data;
    taskExecution->querySourceNodeIndex = mapTaskExecution->currentNodeIndex;
   }





   if (taskType == SQL_TASK)
   {
    TrackerQueueSqlTask(taskTracker, task);
   }
   else
   {
    TrackerQueueTask(taskTracker, task);
   }

   nextExecutionStatus = 131;
   break;
  }

  case 131:
  {
   TaskStatus remoteTaskStatus = TASK_STATUS_INVALID_FIRST;

   bool trackerHealthy = TrackerHealthy(taskTracker);
   if (!trackerHealthy)
   {
    nextExecutionStatus = 130;
    break;
   }

   remoteTaskStatus = TrackerTaskStatus(taskTracker, task);
   if (remoteTaskStatus == TASK_SUCCEEDED)
   {
    nextExecutionStatus = 132;
   }
   else if (remoteTaskStatus == TASK_CLIENT_SIDE_ASSIGN_FAILED ||
      remoteTaskStatus == TASK_CLIENT_SIDE_STATUS_FAILED)
   {
    nextExecutionStatus = 129;
   }
   else if (remoteTaskStatus == TASK_PERMANENTLY_FAILED)
   {






    if (task->taskType == MAP_OUTPUT_FETCH_TASK)
    {
     nextExecutionStatus = 133;
    }
    else
    {
     nextExecutionStatus = 130;
    }
   }
   else
   {

    nextExecutionStatus = 131;
   }

   break;
  }

  case 129:
  {
   bool trackerHealthy = 0;
   bool trackerConnectionUp = 0;







   trackerConnectionUp = TrackerConnectionUp(taskTracker);
   if (trackerConnectionUp)
   {
    taskTracker->trackerFailureCount++;
   }

   trackerHealthy = TrackerHealthy(taskTracker);
   if (trackerHealthy)
   {
    TaskStatus remoteTaskStatus = TrackerTaskStatus(taskTracker, task);
    if (remoteTaskStatus == TASK_CLIENT_SIDE_ASSIGN_FAILED)
    {
     nextExecutionStatus = 128;
    }
    else if (remoteTaskStatus == TASK_CLIENT_SIDE_STATUS_FAILED)
    {
     nextExecutionStatus = 131;
    }
   }
   else
   {
    nextExecutionStatus = 130;
   }

   break;
  }

  case 133:
  {
   Task *mapTask = (Task *) linitial(task->dependedTaskList);
   TaskExecution *mapTaskExecution = mapTask->taskExecution;
   uint32 sourceNodeIndex = mapTaskExecution->currentNodeIndex;

   bool sourceTrackerHealthy = 0;
   Assert(sourceTaskTracker != ((void*)0));
   Assert(task->taskType == MAP_OUTPUT_FETCH_TASK);
   if (taskExecution->querySourceNodeIndex == sourceNodeIndex)
   {
    bool sourceTrackerConnectionUp = TrackerConnectionUp(sourceTaskTracker);
    if (sourceTrackerConnectionUp)
    {
     sourceTaskTracker->trackerFailureCount++;
    }
   }

   sourceTrackerHealthy = TrackerHealthy(sourceTaskTracker);
   if (sourceTrackerHealthy)
   {





    nextExecutionStatus = 128;
   }
   else
   {
    nextExecutionStatus = 134;
   }

   break;
  }

  case 130:
  case 134:
  {





   nextExecutionStatus = 128;
   break;
  }

  case 132:
  {

   nextExecutionStatus = 132;
   break;
  }

  default:
  {

   ereport(FATAL, (errmsg("invalid execution status: %d",
           currentExecutionStatus)));
   break;
  }
 }


 nextNodeIndex = taskExecution->currentNodeIndex;
 taskStatusArray[nextNodeIndex] = nextExecutionStatus;

 return nextExecutionStatus;
}
