
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* thread_t ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef int spl_t ;
typedef int mach_node_t ;
typedef scalar_t__ mach_msg_size_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_2__* ipc_mqueue_t ;
typedef TYPE_3__* ipc_kmsg_t ;
typedef int * ipc_kmsg_queue_t ;
struct TYPE_24__ {int ikm_node; } ;
struct TYPE_23__ {int imq_fport; int imq_seqno; int imq_receiver_name; int imq_messages; struct waitq_set imq_set_queue; struct waitq imq_wait_queue; } ;
struct TYPE_22__ {scalar_t__ ith_state; int ith_option; scalar_t__ ith_rsize; scalar_t__ ith_seqno; TYPE_3__* ith_kmsg; int ith_receiver_name; scalar_t__ ith_msize; int map; } ;


 scalar_t__ FPORT_VALID (int ) ;
 TYPE_3__* IKM_NULL ;
 int IMQ_NULL ;
 int IPC_MQUEUE_RECEIVE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_MSG_SUCCESS ;
 scalar_t__ MACH_NODE_VALID (int ) ;
 scalar_t__ MACH_PEEK_IN_PROGRESS ;
 scalar_t__ MACH_RCV_IN_PROGRESS ;
 int MACH_RCV_LARGE ;
 scalar_t__ MACH_RCV_TOO_LARGE ;
 scalar_t__ REQUESTED_TRAILER_SIZE (int ,int) ;
 int THREAD_AWAKENED ;
 TYPE_1__* THREAD_NULL ;
 int TRUE ;
 int WAITQ_ALL_PRIORITIES ;
 int WAITQ_ALREADY_LOCKED ;
 int WAITQ_KEEP_LOCKED ;
 int assert (int ) ;
 int flipc_msg_ack (int ,TYPE_2__*,int ) ;
 int imq_lock (TYPE_2__*) ;
 int imq_unlock (TYPE_2__*) ;
 scalar_t__ ipc_kmsg_copyout_size (TYPE_3__*,int ) ;
 TYPE_3__* ipc_kmsg_queue_first (int *) ;
 TYPE_3__* ipc_kmsg_queue_next (int *,TYPE_3__*) ;
 int ipc_kmsg_rmqueue (int *,TYPE_3__*) ;
 int ipc_mqueue_peek_on_thread (TYPE_2__*,int,TYPE_1__*) ;
 int ipc_mqueue_release_msgcount (TYPE_2__*,int ) ;
 int splx (int ) ;
 int thread_is_64bit_addr (TYPE_1__*) ;
 int thread_unlock (TYPE_1__*) ;
 scalar_t__ waitq_link (struct waitq*,struct waitq_set*,int ,scalar_t__*) ;
 TYPE_1__* waitq_wakeup64_identify_locked (struct waitq*,int ,int ,int *,scalar_t__*,int ,int ) ;
 int waitqs_is_linked (struct waitq_set*) ;

kern_return_t
ipc_mqueue_add(
 ipc_mqueue_t port_mqueue,
 ipc_mqueue_t set_mqueue,
 uint64_t *reserved_link,
 uint64_t *reserved_prepost)
{
 struct waitq *port_waitq = &port_mqueue->imq_wait_queue;
 struct waitq_set *set_waitq = &set_mqueue->imq_set_queue;
 ipc_kmsg_queue_t kmsgq;
 ipc_kmsg_t kmsg, next;
 kern_return_t kr;

 assert(reserved_link && *reserved_link != 0);
 assert(waitqs_is_linked(set_waitq));

 imq_lock(port_mqueue);





 kr = waitq_link(port_waitq, set_waitq, WAITQ_ALREADY_LOCKED, reserved_link);
 if (kr != KERN_SUCCESS) {
  imq_unlock(port_mqueue);
  return kr;
 }






 kmsgq = &port_mqueue->imq_messages;
 for (kmsg = ipc_kmsg_queue_first(kmsgq);
      kmsg != IKM_NULL;
      kmsg = next) {
  next = ipc_kmsg_queue_next(kmsgq, kmsg);

  for (;;) {
   thread_t th;
   mach_msg_size_t msize;
   spl_t th_spl;

   th = waitq_wakeup64_identify_locked(
      port_waitq,
      IPC_MQUEUE_RECEIVE,
      THREAD_AWAKENED, &th_spl,
      reserved_prepost, WAITQ_ALL_PRIORITIES,
      WAITQ_KEEP_LOCKED);


   if (th == THREAD_NULL)
    goto leave;







   if (th->ith_state != MACH_RCV_IN_PROGRESS) {
    if (th->ith_state == MACH_PEEK_IN_PROGRESS) {






     ipc_mqueue_peek_on_thread(port_mqueue,
          th->ith_option,
          th);
    }
    thread_unlock(th);
    splx(th_spl);
    continue;
   }
   msize = ipc_kmsg_copyout_size(kmsg, th->map);
   if (th->ith_rsize <
     (msize + REQUESTED_TRAILER_SIZE(thread_is_64bit_addr(th), th->ith_option))) {
    th->ith_state = MACH_RCV_TOO_LARGE;
    th->ith_msize = msize;
    if (th->ith_option & MACH_RCV_LARGE) {



     th->ith_receiver_name = port_mqueue->imq_receiver_name;
     th->ith_kmsg = IKM_NULL;
     th->ith_seqno = 0;
     thread_unlock(th);
     splx(th_spl);
     continue;
    }
   } else {
    th->ith_state = MACH_MSG_SUCCESS;
   }





   ipc_kmsg_rmqueue(kmsgq, kmsg);



   ipc_mqueue_release_msgcount(port_mqueue, IMQ_NULL);

   th->ith_kmsg = kmsg;
   th->ith_seqno = port_mqueue->imq_seqno++;
   thread_unlock(th);
   splx(th_spl);




   break;
  }
 }
 leave:
 imq_unlock(port_mqueue);
 return KERN_SUCCESS;
}
