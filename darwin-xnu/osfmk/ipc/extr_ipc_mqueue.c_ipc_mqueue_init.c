
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ipc_mqueue_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_3__ {int imq_klist; int imq_fport; int imq_fullwaiters; int imq_qlimit; scalar_t__ imq_msgcount; scalar_t__ imq_seqno; int imq_messages; int imq_wait_queue; int imq_set_queue; } ;


 int FALSE ;
 int FPORT_NULL ;
 int MACH_PORT_QLIMIT_DEFAULT ;
 int SYNC_POLICY_FIFO ;
 int SYNC_POLICY_PORT ;
 int SYNC_POLICY_PREPOST ;
 int ipc_kmsg_queue_init (int *) ;
 int klist_init (int *) ;
 int waitq_init (int *,int) ;
 int waitq_set_init (int *,int,int *,int *) ;

void
ipc_mqueue_init(
 ipc_mqueue_t mqueue,
 boolean_t is_set)
{
 if (is_set) {
  waitq_set_init(&mqueue->imq_set_queue,
          SYNC_POLICY_FIFO|SYNC_POLICY_PREPOST,
          ((void*)0), ((void*)0));
 } else {
  waitq_init(&mqueue->imq_wait_queue, SYNC_POLICY_FIFO | SYNC_POLICY_PORT);
  ipc_kmsg_queue_init(&mqueue->imq_messages);
  mqueue->imq_seqno = 0;
  mqueue->imq_msgcount = 0;
  mqueue->imq_qlimit = MACH_PORT_QLIMIT_DEFAULT;
  mqueue->imq_fullwaiters = FALSE;



 }
 klist_init(&mqueue->imq_klist);
}
