
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_14__ {int status; int taskId; int jobId; } ;
typedef TYPE_1__ TrackerTaskState ;
struct TYPE_15__ {int connectionBusy; TYPE_1__* connectionBusyOnTask; int connectionId; int taskStateHash; } ;
typedef TYPE_2__ TaskTracker ;
struct TYPE_16__ {int data; } ;
typedef TYPE_3__* StringInfo ;


 char* CurrentUserName () ;
 TYPE_3__* JobDirectoryName (int ) ;
 int MultiClientSendQuery (int ,int ) ;
 TYPE_1__* NextQueuedFileTransmit (int ) ;
 int TASK_ASSIGNED ;
 int TASK_CLIENT_SIDE_TRANSMIT_FAILED ;
 int TRANSMIT_WITH_USER_COMMAND ;
 TYPE_3__* TaskFilename (TYPE_3__*,int ) ;
 int TrackerConnectionUp (TYPE_2__*) ;
 int TrackerHealthy (TYPE_2__*) ;
 int TrackerReconnectPoll (TYPE_2__*) ;
 int appendStringInfo (TYPE_3__*,int ,int ,int ) ;
 TYPE_3__* makeStringInfo () ;
 int quote_literal_cstr (char*) ;

__attribute__((used)) static void
ManageTransmitTracker(TaskTracker *transmitTracker)
{
 TrackerTaskState *transmitState = ((void*)0);
 bool trackerHealthy = 0;
 bool trackerConnectionUp = 0;

 trackerHealthy = TrackerHealthy(transmitTracker);
 if (!trackerHealthy)
 {
  return;
 }

 trackerConnectionUp = TrackerConnectionUp(transmitTracker);
 if (!trackerConnectionUp)
 {
  TrackerReconnectPoll(transmitTracker);
  return;
 }


 if (transmitTracker->connectionBusy)
 {
  return;
 }

 transmitState = NextQueuedFileTransmit(transmitTracker->taskStateHash);
 if (transmitState != ((void*)0))
 {
  bool fileTransmitStarted = 0;
  int32 connectionId = transmitTracker->connectionId;
  StringInfo jobDirectoryName = JobDirectoryName(transmitState->jobId);
  StringInfo taskFilename = TaskFilename(jobDirectoryName, transmitState->taskId);
  char *userName = CurrentUserName();

  StringInfo fileTransmitQuery = makeStringInfo();
  appendStringInfo(fileTransmitQuery, TRANSMIT_WITH_USER_COMMAND,
       taskFilename->data, quote_literal_cstr(userName));

  fileTransmitStarted = MultiClientSendQuery(connectionId, fileTransmitQuery->data);
  if (fileTransmitStarted)
  {
   transmitState->status = TASK_ASSIGNED;

   transmitTracker->connectionBusy = 1;
   transmitTracker->connectionBusyOnTask = transmitState;
  }
  else
  {
   transmitState->status = TASK_CLIENT_SIDE_TRANSMIT_FAILED;

   transmitTracker->connectionBusy = 0;
   transmitTracker->connectionBusyOnTask = ((void*)0);
  }
 }
}
