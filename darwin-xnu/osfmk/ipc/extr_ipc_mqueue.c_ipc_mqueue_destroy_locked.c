
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct turnstile {int ts_waitq; } ;
typedef TYPE_1__* ipc_mqueue_t ;
typedef TYPE_2__* ipc_kmsg_t ;
typedef int * ipc_kmsg_queue_t ;
typedef void* boolean_t ;
struct TYPE_11__ {int ikm_node; } ;
struct TYPE_10__ {scalar_t__ imq_preposts; scalar_t__ imq_in_pset; int imq_wait_queue; scalar_t__ imq_msgcount; int imq_fport; int imq_messages; void* imq_fullwaiters; } ;


 void* FALSE ;
 scalar_t__ FPORT_VALID (int ) ;
 TYPE_2__* IKM_NULL ;
 int IPC_MQUEUE_FULL ;
 scalar_t__ MACH_NODE_VALID (int ) ;
 int THREAD_RESTART ;
 int TRUE ;
 struct turnstile* TURNSTILE_NULL ;
 int WAITQ_ALL_PRIORITIES ;
 int assert (int) ;
 int flipc_msg_ack (int ,TYPE_1__*,int ) ;
 int imq_is_set (TYPE_1__*) ;
 int ip_from_mq (TYPE_1__*) ;
 void* ipc_kmsg_delayed_destroy (TYPE_2__*) ;
 TYPE_2__* ipc_kmsg_dequeue (int *) ;
 struct turnstile* port_send_turnstile (int ) ;
 int waitq_clear_prepost_locked (int *) ;
 int waitq_invalidate_locked (int *) ;
 int waitq_wakeup64_all (int *,int ,int ,int ) ;

boolean_t
ipc_mqueue_destroy_locked(ipc_mqueue_t mqueue)
{
 ipc_kmsg_queue_t kmqueue;
 ipc_kmsg_t kmsg;
 boolean_t reap = FALSE;
 struct turnstile *send_turnstile = port_send_turnstile(ip_from_mq(mqueue));

 assert(!imq_is_set(mqueue));






 mqueue->imq_fullwaiters = FALSE;

 if (send_turnstile != TURNSTILE_NULL) {
  waitq_wakeup64_all(&send_turnstile->ts_waitq,
       IPC_MQUEUE_FULL,
       THREAD_RESTART,
       WAITQ_ALL_PRIORITIES);
 }





 kmqueue = &mqueue->imq_messages;
 while ((kmsg = ipc_kmsg_dequeue(kmqueue)) != IKM_NULL) {




  boolean_t first;
  first = ipc_kmsg_delayed_destroy(kmsg);
  if (first)
   reap = first;
 }







 mqueue->imq_msgcount = 0;


 waitq_invalidate_locked(&mqueue->imq_wait_queue);


 waitq_clear_prepost_locked(&mqueue->imq_wait_queue);





 assert(mqueue->imq_preposts == 0);
 assert(mqueue->imq_in_pset == 0);

 return reap;
}
