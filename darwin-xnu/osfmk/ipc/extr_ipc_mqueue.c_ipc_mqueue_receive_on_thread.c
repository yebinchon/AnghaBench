
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef scalar_t__ uint64_t ;
typedef int * turnstile_inheritor_t ;
typedef TYPE_1__* thread_t ;
struct turnstile {int dummy; } ;
typedef scalar_t__ mach_msg_timeout_t ;
typedef int mach_msg_size_t ;
typedef int mach_msg_option_t ;
typedef TYPE_2__* ipc_port_t ;
typedef TYPE_3__* ipc_mqueue_t ;
typedef int * ipc_kmsg_queue_t ;
struct TYPE_27__ {int waitq_type; } ;
struct TYPE_26__ {TYPE_5__ imq_wait_queue; int imq_messages; int imq_set_queue; } ;
struct TYPE_25__ {scalar_t__ ip_specialreply; } ;
struct TYPE_24__ {int ith_option; int ith_state; scalar_t__ ith_msize; int ith_rsize; } ;


 scalar_t__ IKM_NULL ;
 TYPE_3__* IMQ_NULL ;
 int IPC_MQUEUE_RECEIVE ;
 int MACH_PEEK_IN_PROGRESS ;
 int MACH_PEEK_MSG ;
 int MACH_RCV_IN_PROGRESS ;
 int MACH_RCV_TIMED_OUT ;
 int MACH_RCV_TIMEOUT ;
 int NSEC_PER_USEC ;
 scalar_t__ THREAD_AWAKENED ;
 scalar_t__ THREAD_NOT_WAITING ;
 scalar_t__ THREAD_RESTART ;
 int TIMEOUT_NO_LEEWAY ;
 int TIMEOUT_URGENCY_USER_NORMAL ;
 int TURNSTILE_DELAYED_UPDATE ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_SYNC_IPC ;
 int clock_interval_to_deadline (scalar_t__,int,scalar_t__*) ;
 scalar_t__ imq_is_queue (TYPE_3__*) ;
 scalar_t__ imq_is_set (TYPE_3__*) ;
 int imq_unlock (TYPE_3__*) ;
 int imq_valid (TYPE_3__*) ;
 TYPE_2__* ip_from_mq (TYPE_3__*) ;
 scalar_t__ ipc_kmsg_queue_first (int *) ;
 int ipc_mqueue_peek_on_thread (TYPE_3__*,int,TYPE_1__*) ;
 int ipc_mqueue_select_on_thread (TYPE_3__*,TYPE_3__*,int,int ,TYPE_1__*) ;
 int * ipc_port_get_special_reply_port_inheritor (TYPE_2__*) ;
 int kThreadWaitPortReceive ;
 int mqueue_process_prepost_receive ;
 int panic (char*,...) ;
 int port_rcv_turnstile_address (TYPE_2__*) ;
 int thread_set_pending_block_hint (TYPE_1__*,int ) ;
 struct turnstile* turnstile_prepare (uintptr_t,int ,struct turnstile*,int ) ;
 int turnstile_update_inheritor (struct turnstile*,int *,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;
 scalar_t__ waitq_assert_wait64_locked (TYPE_5__*,int ,int,int ,scalar_t__,int ,TYPE_1__*) ;
 int waitq_set_iterate_preposts (int *,TYPE_3__**,int ) ;

wait_result_t
ipc_mqueue_receive_on_thread(
 ipc_mqueue_t mqueue,
 mach_msg_option_t option,
 mach_msg_size_t max_size,
 mach_msg_timeout_t rcv_timeout,
 int interruptible,
 thread_t thread)
{
 wait_result_t wresult;
 uint64_t deadline;
 struct turnstile *rcv_turnstile = TURNSTILE_NULL;
 turnstile_inheritor_t inheritor = ((void*)0);





 if (!imq_valid(mqueue)) {

  imq_unlock(mqueue);





  return THREAD_RESTART;
 }

 if (imq_is_set(mqueue)) {
  ipc_mqueue_t port_mq = IMQ_NULL;

  (void)waitq_set_iterate_preposts(&mqueue->imq_set_queue,
       &port_mq,
                   mqueue_process_prepost_receive);

  if (port_mq != IMQ_NULL) {
   imq_unlock(mqueue);





   if (option & MACH_PEEK_MSG)
    ipc_mqueue_peek_on_thread(port_mq, option, thread);
   else
    ipc_mqueue_select_on_thread(port_mq, mqueue, option,
           max_size, thread);

   imq_unlock(port_mq);
   return THREAD_NOT_WAITING;
  }
 } else if (imq_is_queue(mqueue)) {
  ipc_kmsg_queue_t kmsgs;




  kmsgs = &mqueue->imq_messages;
  if (ipc_kmsg_queue_first(kmsgs) != IKM_NULL) {
   if (option & MACH_PEEK_MSG)
    ipc_mqueue_peek_on_thread(mqueue, option, thread);
   else
    ipc_mqueue_select_on_thread(mqueue, IMQ_NULL, option,
           max_size, thread);
   imq_unlock(mqueue);
   return THREAD_NOT_WAITING;
  }
 } else {
  panic("Unknown mqueue type 0x%x: likely memory corruption!\n",
        mqueue->imq_wait_queue.waitq_type);
 }






 if (option & MACH_RCV_TIMEOUT) {
  if (rcv_timeout == 0) {
   imq_unlock(mqueue);
   thread->ith_state = MACH_RCV_TIMED_OUT;
   return THREAD_NOT_WAITING;
  }
 }

 thread->ith_option = option;
 thread->ith_rsize = max_size;
 thread->ith_msize = 0;

 if (option & MACH_PEEK_MSG)
  thread->ith_state = MACH_PEEK_IN_PROGRESS;
 else
  thread->ith_state = MACH_RCV_IN_PROGRESS;

 if (option & MACH_RCV_TIMEOUT)
  clock_interval_to_deadline(rcv_timeout, 1000*NSEC_PER_USEC, &deadline);
 else
  deadline = 0;
 if (imq_is_queue(mqueue)) {
  ipc_port_t port = ip_from_mq(mqueue);
  rcv_turnstile = turnstile_prepare((uintptr_t)port,
   port_rcv_turnstile_address(port),
   TURNSTILE_NULL, TURNSTILE_SYNC_IPC);

  if (port->ip_specialreply) {
   inheritor = ipc_port_get_special_reply_port_inheritor(port);
  }

  turnstile_update_inheritor(rcv_turnstile, inheritor,
   (TURNSTILE_INHERITOR_TURNSTILE | TURNSTILE_DELAYED_UPDATE));
 }

 thread_set_pending_block_hint(thread, kThreadWaitPortReceive);
 wresult = waitq_assert_wait64_locked(&mqueue->imq_wait_queue,
          IPC_MQUEUE_RECEIVE,
          interruptible,
          TIMEOUT_URGENCY_USER_NORMAL,
          deadline,
          TIMEOUT_NO_LEEWAY,
          thread);

 if (wresult == THREAD_AWAKENED)
  panic("ipc_mqueue_receive_on_thread: sleep walking");

 imq_unlock(mqueue);


 if (rcv_turnstile != TURNSTILE_NULL) {
  turnstile_update_inheritor_complete(rcv_turnstile, TURNSTILE_INTERLOCK_NOT_HELD);
 }


 return wresult;
}
