
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct turnstile {int ts_waitq; } ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_7__ {int imq_msgcount; int imq_wait_queue; int imq_messages; scalar_t__ imq_fullwaiters; } ;


 scalar_t__ FALSE ;
 int IPC_MQUEUE_FULL ;
 scalar_t__ KERN_SUCCESS ;
 int THREAD_AWAKENED ;
 struct turnstile* TURNSTILE_NULL ;
 int WAITQ_PROMOTE_PRIORITY ;
 int assert (int) ;
 int imq_full (TYPE_1__*) ;
 int imq_held (TYPE_1__*) ;
 int ip_from_mq (TYPE_1__*) ;
 scalar_t__ ipc_kmsg_queue_empty (int *) ;
 struct turnstile* port_send_turnstile (int ) ;
 int waitq_clear_prepost_locked (int *) ;
 scalar_t__ waitq_wakeup64_one (int *,int ,int ,int ) ;

void
ipc_mqueue_release_msgcount(ipc_mqueue_t port_mq, ipc_mqueue_t set_mq)
{
 struct turnstile *send_turnstile = port_send_turnstile(ip_from_mq(port_mq));
 (void)set_mq;
 assert(imq_held(port_mq));
 assert(port_mq->imq_msgcount > 1 || ipc_kmsg_queue_empty(&port_mq->imq_messages));

 port_mq->imq_msgcount--;

 if (!imq_full(port_mq) && port_mq->imq_fullwaiters &&
  send_turnstile != TURNSTILE_NULL) {
  if (waitq_wakeup64_one(&send_turnstile->ts_waitq,
           IPC_MQUEUE_FULL,
           THREAD_AWAKENED,
           WAITQ_PROMOTE_PRIORITY) != KERN_SUCCESS) {
   port_mq->imq_fullwaiters = FALSE;
  } else {

   port_mq->imq_msgcount++;
  }
 }

 if (ipc_kmsg_queue_empty(&port_mq->imq_messages)) {

  waitq_clear_prepost_locked(&port_mq->imq_wait_queue);
 }
}
