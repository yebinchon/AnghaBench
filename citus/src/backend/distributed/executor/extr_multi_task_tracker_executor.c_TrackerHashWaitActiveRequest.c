
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connectionBusy; int connectionBusyOnTaskList; int * connectionBusyOnTask; int connectionId; } ;
typedef TYPE_1__ TaskTracker ;
typedef scalar_t__ QueryStatus ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ CLIENT_QUERY_DONE ;
 scalar_t__ MultiClientQueryStatus (int ) ;
 int NIL ;
 int TrackerConnectionUp (TYPE_1__*) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TrackerHashWaitActiveRequest(HTAB *taskTrackerHash)
{
 TaskTracker *taskTracker = ((void*)0);
 HASH_SEQ_STATUS status;
 hash_seq_init(&status, taskTrackerHash);

 taskTracker = (TaskTracker *) hash_seq_search(&status);
 while (taskTracker != ((void*)0))
 {
  bool trackerConnectionUp = TrackerConnectionUp(taskTracker);


  if (trackerConnectionUp && taskTracker->connectionBusy)
  {
   QueryStatus queryStatus = MultiClientQueryStatus(taskTracker->connectionId);
   if (queryStatus == CLIENT_QUERY_DONE)
   {
    taskTracker->connectionBusy = 0;
    taskTracker->connectionBusyOnTask = ((void*)0);
    taskTracker->connectionBusyOnTaskList = NIL;
   }
  }

  taskTracker = (TaskTracker *) hash_seq_search(&status);
 }
}
