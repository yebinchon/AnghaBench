
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int turnstile_inheritor_t ;
typedef int thread_t ;
struct turnstile {int ts_waitq; } ;
typedef scalar_t__ mach_msg_timeout_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_option_t ;
typedef TYPE_2__* ipc_port_t ;
typedef TYPE_3__* ipc_mqueue_t ;
typedef TYPE_4__* ipc_kmsg_t ;
struct TYPE_21__ {TYPE_1__* ikm_header; } ;
struct TYPE_20__ {scalar_t__ imq_msgcount; int imq_fullwaiters; } ;
struct TYPE_19__ {scalar_t__ ip_receiver_name; int * ip_destination; } ;
struct TYPE_18__ {int msgh_bits; } ;


 int IPC_MQUEUE_FULL ;
 scalar_t__ MACH_MSGH_BITS_REMOTE (int ) ;
 int MACH_MSG_SUCCESS ;
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ;
 scalar_t__ MACH_PORT_NULL ;
 int MACH_SEND_ALWAYS ;
 int MACH_SEND_INTERRUPTED ;
 int MACH_SEND_INVALID_DEST ;
 int MACH_SEND_NO_BUFFER ;
 int MACH_SEND_TIMED_OUT ;
 int MACH_SEND_TIMEOUT ;
 int NSEC_PER_USEC ;
 int THREAD_ABORTSAFE ;

 int THREAD_CONTINUE_NULL ;



 int THREAD_WAITING ;
 int TIMEOUT_NO_LEEWAY ;
 int TIMEOUT_URGENCY_USER_NORMAL ;
 int TRUE ;
 int TURNSTILE_DELAYED_UPDATE ;
 int TURNSTILE_INHERITOR_NULL ;
 int TURNSTILE_INHERITOR_TURNSTILE ;
 int TURNSTILE_INTERLOCK_NOT_HELD ;
 struct turnstile* TURNSTILE_NULL ;
 int TURNSTILE_SYNC_IPC ;
 int assert (int) ;
 int c_ipc_mqueue_send_block ;
 int clock_interval_to_deadline (scalar_t__,int,scalar_t__*) ;
 int counter (int ) ;
 int current_thread () ;
 int imq_full (TYPE_3__*) ;
 scalar_t__ imq_full_kernel (TYPE_3__*) ;
 int imq_lock (TYPE_3__*) ;
 int imq_unlock (TYPE_3__*) ;
 scalar_t__ ip_active (TYPE_2__*) ;
 TYPE_2__* ip_from_mq (TYPE_3__*) ;
 int ipc_mqueue_post (TYPE_3__*,TYPE_4__*,int) ;
 int ipc_port_get_inheritor (TYPE_2__*) ;
 int kThreadWaitPortSend ;
 int panic (char*) ;
 int port_send_turnstile (int *) ;
 int port_send_turnstile_address (TYPE_2__*) ;
 int thread_block (int ) ;
 int thread_set_pending_block_hint (int ,int ) ;
 int turnstile_cleanup () ;
 int turnstile_complete (uintptr_t,int ,int *) ;
 struct turnstile* turnstile_prepare (uintptr_t,int ,struct turnstile*,int ) ;
 int turnstile_update_inheritor (struct turnstile*,int ,int) ;
 int turnstile_update_inheritor_complete (struct turnstile*,int ) ;
 int waitq_assert_wait64_leeway (int *,int ,int ,int ,scalar_t__,int ) ;

mach_msg_return_t
ipc_mqueue_send(
 ipc_mqueue_t mqueue,
 ipc_kmsg_t kmsg,
 mach_msg_option_t option,
 mach_msg_timeout_t send_timeout)
{
 int wresult;







 if (!imq_full(mqueue) ||
     (!imq_full_kernel(mqueue) &&
      ((option & MACH_SEND_ALWAYS) ||
       (MACH_MSGH_BITS_REMOTE(kmsg->ikm_header->msgh_bits) ==
        MACH_MSG_TYPE_PORT_SEND_ONCE)))) {
  mqueue->imq_msgcount++;
  assert(mqueue->imq_msgcount > 0);
  imq_unlock(mqueue);
 } else {
  thread_t cur_thread = current_thread();
  ipc_port_t port = ip_from_mq(mqueue);
  struct turnstile *send_turnstile = TURNSTILE_NULL;
  turnstile_inheritor_t inheritor = TURNSTILE_INHERITOR_NULL;
  uint64_t deadline;




  if ((option & MACH_SEND_TIMEOUT) && (send_timeout == 0)) {
   imq_unlock(mqueue);
   return MACH_SEND_TIMED_OUT;
  }
  if (imq_full_kernel(mqueue)) {
   imq_unlock(mqueue);
   return MACH_SEND_NO_BUFFER;
  }
  mqueue->imq_fullwaiters = TRUE;

  if (option & MACH_SEND_TIMEOUT)
   clock_interval_to_deadline(send_timeout, 1000*NSEC_PER_USEC, &deadline);
  else
   deadline = 0;

  thread_set_pending_block_hint(cur_thread, kThreadWaitPortSend);

  send_turnstile = turnstile_prepare((uintptr_t)port,
   port_send_turnstile_address(port),
   TURNSTILE_NULL, TURNSTILE_SYNC_IPC);


  if (ip_active(port) &&
      port->ip_receiver_name == MACH_PORT_NULL &&
      port->ip_destination != ((void*)0)) {
   inheritor = port_send_turnstile(port->ip_destination);
  } else {
   inheritor = ipc_port_get_inheritor(port);
  }

  turnstile_update_inheritor(send_turnstile, inheritor,
    TURNSTILE_DELAYED_UPDATE | TURNSTILE_INHERITOR_TURNSTILE);

  wresult = waitq_assert_wait64_leeway(
     &send_turnstile->ts_waitq,
     IPC_MQUEUE_FULL,
     THREAD_ABORTSAFE,
     TIMEOUT_URGENCY_USER_NORMAL,
     deadline,
     TIMEOUT_NO_LEEWAY);

  imq_unlock(mqueue);
  turnstile_update_inheritor_complete(send_turnstile,
    TURNSTILE_INTERLOCK_NOT_HELD);

  if (wresult == THREAD_WAITING) {
   wresult = thread_block(THREAD_CONTINUE_NULL);
   counter(c_ipc_mqueue_send_block++);
  }


  imq_lock(mqueue);
  turnstile_complete((uintptr_t)port, port_send_turnstile_address(port), ((void*)0));
  imq_unlock(mqueue);


  turnstile_cleanup();

  switch (wresult) {

  case 131:





   break;

  case 128:
   assert(option & MACH_SEND_TIMEOUT);
   return MACH_SEND_TIMED_OUT;

  case 130:
   return MACH_SEND_INTERRUPTED;

  case 129:

   return MACH_SEND_INVALID_DEST;
  default:
   panic("ipc_mqueue_send");
  }
 }

 ipc_mqueue_post(mqueue, kmsg, option);
 return MACH_MSG_SUCCESS;
}
