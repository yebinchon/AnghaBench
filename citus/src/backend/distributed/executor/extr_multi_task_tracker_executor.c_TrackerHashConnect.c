
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32 ;
typedef scalar_t__ TrackerStatus ;
typedef int TaskTracker ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 long RemoteTaskCheckInterval ;
 scalar_t__ TRACKER_CONNECTED ;
 scalar_t__ TRACKER_CONNECTION_FAILED ;
 scalar_t__ TrackerConnectPoll (int *) ;
 int hash_get_num_entries (int *) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int pg_usleep (long) ;

__attribute__((used)) static void
TrackerHashConnect(HTAB *taskTrackerHash)
{
 uint32 taskTrackerCount = (uint32) hash_get_num_entries(taskTrackerHash);
 uint32 triedTrackerCount = 0;


 while (triedTrackerCount < taskTrackerCount)
 {
  TaskTracker *taskTracker = ((void*)0);
  HASH_SEQ_STATUS status;
  long sleepIntervalPerCycle = 0;


  triedTrackerCount = 0;
  hash_seq_init(&status, taskTrackerHash);

  taskTracker = (TaskTracker *) hash_seq_search(&status);
  while (taskTracker != ((void*)0))
  {
   TrackerStatus trackerStatus = TrackerConnectPoll(taskTracker);
   if (trackerStatus == TRACKER_CONNECTED ||
    trackerStatus == TRACKER_CONNECTION_FAILED)
   {
    triedTrackerCount++;
   }

   taskTracker = (TaskTracker *) hash_seq_search(&status);
  }


  sleepIntervalPerCycle = RemoteTaskCheckInterval * 1000L;
  pg_usleep(sleepIntervalPerCycle);
 }
}
