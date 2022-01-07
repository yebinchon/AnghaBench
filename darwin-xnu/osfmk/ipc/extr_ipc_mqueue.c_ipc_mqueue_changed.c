
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_4__ {int imq_wait_queue; int imq_klist; } ;


 scalar_t__ IMQ_KLIST_VALID (TYPE_1__*) ;
 int IPC_MQUEUE_RECEIVE ;
 int THREAD_RESTART ;
 int WAITQ_ALL_PRIORITIES ;
 int WAITQ_KEEP_LOCKED ;
 int klist_init (int *) ;
 int knote_vanish (int *) ;
 int waitq_wakeup64_all_locked (int *,int ,int ,int *,int ,int ) ;

void
ipc_mqueue_changed(
 ipc_mqueue_t mqueue)
{
 if (IMQ_KLIST_VALID(mqueue)) {
  knote_vanish(&mqueue->imq_klist);
  klist_init(&mqueue->imq_klist);
 }

 waitq_wakeup64_all_locked(&mqueue->imq_wait_queue,
      IPC_MQUEUE_RECEIVE,
      THREAD_RESTART,
      ((void*)0),
      WAITQ_ALL_PRIORITIES,
      WAITQ_KEEP_LOCKED);
}
