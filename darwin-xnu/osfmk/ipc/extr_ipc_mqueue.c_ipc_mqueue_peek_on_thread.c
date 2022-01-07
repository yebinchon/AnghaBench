
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int mach_msg_option_t ;
typedef TYPE_2__* ipc_mqueue_t ;
struct TYPE_7__ {int imq_messages; } ;
struct TYPE_6__ {int ith_state; TYPE_2__* ith_peekq; } ;


 scalar_t__ IKM_NULL ;
 int MACH_PEEK_MSG ;
 int MACH_PEEK_READY ;
 int assert (int) ;
 int ip_reference_mq (TYPE_2__*) ;
 scalar_t__ ipc_kmsg_queue_first (int *) ;

void
ipc_mqueue_peek_on_thread(
 ipc_mqueue_t port_mq,
 mach_msg_option_t option,
 thread_t thread)
{
 (void)option;
 assert(option & MACH_PEEK_MSG);
 assert(ipc_kmsg_queue_first(&port_mq->imq_messages) != IKM_NULL);






 ip_reference_mq(port_mq);
 thread->ith_peekq = port_mq;
 thread->ith_state = MACH_PEEK_READY;
}
