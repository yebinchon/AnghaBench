
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ connectionId; } ;
typedef TYPE_1__ WorkerTask ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ INVALID_CONNECTION_ID ;
 int MultiClientDisconnect (scalar_t__) ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;

__attribute__((used)) static void
TrackerCleanupConnections(HTAB *WorkerTasksHash)
{
 HASH_SEQ_STATUS status;
 WorkerTask *currentTask = ((void*)0);

 hash_seq_init(&status, WorkerTasksHash);

 currentTask = (WorkerTask *) hash_seq_search(&status);
 while (currentTask != ((void*)0))
 {
  if (currentTask->connectionId != INVALID_CONNECTION_ID)
  {
   MultiClientDisconnect(currentTask->connectionId);
   currentTask->connectionId = INVALID_CONNECTION_ID;
  }

  currentTask = (WorkerTask *) hash_seq_search(&status);
 }
}
