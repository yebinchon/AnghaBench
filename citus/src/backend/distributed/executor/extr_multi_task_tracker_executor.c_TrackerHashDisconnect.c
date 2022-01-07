
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connectionId; } ;
typedef TYPE_1__ TaskTracker ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ INVALID_CONNECTION_ID ;
 int MultiClientDisconnect (scalar_t__) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TrackerHashDisconnect(HTAB *taskTrackerHash)
{
 TaskTracker *taskTracker = ((void*)0);
 HASH_SEQ_STATUS status;
 hash_seq_init(&status, taskTrackerHash);

 taskTracker = (TaskTracker *) hash_seq_search(&status);
 while (taskTracker != ((void*)0))
 {
  if (taskTracker->connectionId != INVALID_CONNECTION_ID)
  {
   MultiClientDisconnect(taskTracker->connectionId);
   taskTracker->connectionId = INVALID_CONNECTION_ID;
  }

  taskTracker = (TaskTracker *) hash_seq_search(&status);
 }
}
