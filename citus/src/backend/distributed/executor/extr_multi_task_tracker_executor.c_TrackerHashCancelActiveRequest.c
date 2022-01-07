
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int connectionId; scalar_t__ connectionBusy; } ;
typedef TYPE_1__ TaskTracker ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 int MultiClientCancel (int ) ;
 int TrackerConnectionUp (TYPE_1__*) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TrackerHashCancelActiveRequest(HTAB *taskTrackerHash)
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
   MultiClientCancel(taskTracker->connectionId);
  }

  taskTracker = (TaskTracker *) hash_seq_search(&status);
 }
}
