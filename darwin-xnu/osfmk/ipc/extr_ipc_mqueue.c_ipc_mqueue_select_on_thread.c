
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ mach_msg_size_t ;
typedef void* mach_msg_return_t ;
typedef int mach_msg_option_t ;
typedef TYPE_2__* ipc_mqueue_t ;
typedef TYPE_3__* ipc_kmsg_t ;
struct TYPE_19__ {int ikm_node; } ;
struct TYPE_18__ {int imq_seqno; int imq_fport; int imq_messages; int imq_receiver_name; } ;
struct TYPE_17__ {void* ith_state; TYPE_3__* ith_kmsg; scalar_t__ ith_seqno; scalar_t__ ith_msize; int ith_receiver_name; int map; } ;
struct TYPE_16__ {int messages_received; } ;


 scalar_t__ FPORT_VALID (int ) ;
 TYPE_3__* IKM_NULL ;
 void* MACH_MSG_SUCCESS ;
 scalar_t__ MACH_NODE_VALID (int ) ;
 int MACH_RCV_LARGE ;
 void* MACH_RCV_TOO_LARGE ;
 scalar_t__ REQUESTED_TRAILER_SIZE (int ,int) ;
 int TRUE ;
 int assert (int) ;
 TYPE_14__* current_task () ;
 int flipc_msg_ack (int ,TYPE_2__*,int ) ;
 scalar_t__ ipc_kmsg_copyout_size (TYPE_3__*,int ) ;
 TYPE_3__* ipc_kmsg_queue_first (int *) ;
 int ipc_kmsg_rmqueue (int *,TYPE_3__*) ;
 int ipc_mqueue_release_msgcount (TYPE_2__*,TYPE_2__*) ;
 int thread_is_64bit_addr (TYPE_1__*) ;

void
ipc_mqueue_select_on_thread(
 ipc_mqueue_t port_mq,
 ipc_mqueue_t set_mq,
 mach_msg_option_t option,
 mach_msg_size_t max_size,
 thread_t thread)
{
 ipc_kmsg_t kmsg;
 mach_msg_return_t mr = MACH_MSG_SUCCESS;
 mach_msg_size_t msize;





 kmsg = ipc_kmsg_queue_first(&port_mq->imq_messages);
 assert(kmsg != IKM_NULL);







 msize = ipc_kmsg_copyout_size(kmsg, thread->map);
 if (msize + REQUESTED_TRAILER_SIZE(thread_is_64bit_addr(thread), option) > max_size) {
  mr = MACH_RCV_TOO_LARGE;
  if (option & MACH_RCV_LARGE) {
   thread->ith_receiver_name = port_mq->imq_receiver_name;
   thread->ith_kmsg = IKM_NULL;
   thread->ith_msize = msize;
   thread->ith_seqno = 0;
   thread->ith_state = mr;
   return;
  }
 }

 ipc_kmsg_rmqueue(&port_mq->imq_messages, kmsg);




 ipc_mqueue_release_msgcount(port_mq, set_mq);
 thread->ith_seqno = port_mq->imq_seqno++;
 thread->ith_kmsg = kmsg;
 thread->ith_state = mr;

 current_task()->messages_received++;
 return;
}
