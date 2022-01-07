
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_13__ {void* status; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_14__ {int connectionBusy; int * connectionBusyOnTaskList; int connectionId; int * assignedTaskList; } ;
typedef TYPE_2__ TaskTracker ;
struct TYPE_15__ {int data; } ;
typedef TYPE_3__* StringInfo ;
typedef scalar_t__ ResultStatus ;
typedef int List ;


 int Assert (int ) ;
 int * AssignQueuedTasks (TYPE_2__*) ;
 scalar_t__ CLIENT_INVALID_RESULT_STATUS ;
 scalar_t__ CLIENT_RESULT_BUSY ;
 scalar_t__ CLIENT_RESULT_READY ;
 scalar_t__ CLIENT_RESULT_UNAVAILABLE ;
 scalar_t__ MultiClientResultStatus (int ) ;
 int MultiClientSendQuery (int ,int ) ;
 void* NIL ;
 int ReceiveTaskStatusBatchQueryResponse (TYPE_2__*) ;
 void* TASK_CLIENT_SIDE_STATUS_FAILED ;
 int * TaskStatusBatchList (TYPE_2__*) ;
 TYPE_3__* TaskStatusBatchQuery (int *) ;
 int TrackerConnectionUp (TYPE_2__*) ;
 int TrackerHealthy (TYPE_2__*) ;
 int TrackerReconnectPoll (TYPE_2__*) ;
 scalar_t__ linitial (int *) ;
 int * list_concat (int *,int *) ;
 int list_free (int *) ;
 int pfree (TYPE_3__*) ;

__attribute__((used)) static void
ManageTaskTracker(TaskTracker *taskTracker)
{
 bool trackerConnectionUp = 0;
 bool trackerHealthy = 0;

 trackerHealthy = TrackerHealthy(taskTracker);
 if (!trackerHealthy)
 {
  return;
 }

 trackerConnectionUp = TrackerConnectionUp(taskTracker);
 if (!trackerConnectionUp)
 {
  TrackerReconnectPoll(taskTracker);
  return;
 }





 if (!taskTracker->connectionBusy)
 {
  List *previousTaskList = taskTracker->assignedTaskList;
  List *newTaskList = AssignQueuedTasks(taskTracker);

  taskTracker->assignedTaskList = list_concat(previousTaskList, newTaskList);
 }





 if (!taskTracker->connectionBusy)
 {
  List *taskStatusBatchList = TaskStatusBatchList(taskTracker);


  if (taskStatusBatchList)
  {
   int32 connectionId = taskTracker->connectionId;
   StringInfo taskStatusBatchQuery = ((void*)0);
   bool querySent = 0;

   taskStatusBatchQuery = TaskStatusBatchQuery(taskStatusBatchList);

   querySent = MultiClientSendQuery(connectionId, taskStatusBatchQuery->data);
   if (querySent)
   {
    taskTracker->connectionBusy = 1;
    taskTracker->connectionBusyOnTaskList = taskStatusBatchList;
   }
   else
   {

    TrackerTaskState *taskState = (TrackerTaskState *) linitial(
     taskStatusBatchList);
    taskState->status = TASK_CLIENT_SIDE_STATUS_FAILED;

    list_free(taskStatusBatchList);

    taskTracker->connectionBusy = 0;
    taskTracker->connectionBusyOnTaskList = NIL;
   }

   pfree(taskStatusBatchQuery);
  }
 }




 if (taskTracker->connectionBusy)
 {
  int32 connectionId = taskTracker->connectionId;
  ResultStatus resultStatus = CLIENT_INVALID_RESULT_STATUS;


  resultStatus = MultiClientResultStatus(connectionId);
  if (resultStatus == CLIENT_RESULT_READY)
  {
   ReceiveTaskStatusBatchQueryResponse(taskTracker);
  }
  else if (resultStatus == CLIENT_RESULT_UNAVAILABLE)
  {
   TrackerTaskState *taskState = (TrackerTaskState *) linitial(
    taskTracker->connectionBusyOnTaskList);
   Assert(taskState != ((void*)0));
   taskState->status = TASK_CLIENT_SIDE_STATUS_FAILED;
  }


  if (resultStatus != CLIENT_RESULT_BUSY)
  {
   list_free(taskTracker->connectionBusyOnTaskList);

   taskTracker->connectionBusy = 0;
   taskTracker->connectionBusyOnTaskList = NIL;
  }
 }
}
