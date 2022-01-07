
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; } ;
typedef TYPE_1__ TrackerTaskState ;
typedef int HTAB ;
typedef int HASH_SEQ_STATUS ;


 scalar_t__ TASK_FILE_TRANSMIT_QUEUED ;
 int hash_seq_init (int *,int *) ;
 scalar_t__ hash_seq_search (int *) ;
 int hash_seq_term (int *) ;

__attribute__((used)) static TrackerTaskState *
NextQueuedFileTransmit(HTAB *taskStateHash)
{
 HASH_SEQ_STATUS status;
 TrackerTaskState *taskState = ((void*)0);
 hash_seq_init(&status, taskStateHash);

 taskState = (TrackerTaskState *) hash_seq_search(&status);
 while (taskState != ((void*)0))
 {
  if (taskState->status == TASK_FILE_TRANSMIT_QUEUED)
  {
   hash_seq_term(&status);
   break;
  }

  taskState = (TrackerTaskState *) hash_seq_search(&status);
 }

 return taskState;
}
