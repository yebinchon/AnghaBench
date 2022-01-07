
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef TYPE_1__* ipc_mqueue_t ;
struct TYPE_2__ {int imq_messages; } ;


 int WQ_ITERATE_BREAK_KEEP_LOCKED ;
 int WQ_ITERATE_INVALIDATE_CONTINUE ;
 scalar_t__ ipc_kmsg_queue_empty (int *) ;

__attribute__((used)) static int mqueue_process_prepost_receive(void *ctx, struct waitq *waitq,
       struct waitq_set *wqset)
{
 ipc_mqueue_t port_mq, *pmq_ptr;

 (void)wqset;
 port_mq = (ipc_mqueue_t)waitq;





 if (ipc_kmsg_queue_empty(&port_mq->imq_messages))
  return WQ_ITERATE_INVALIDATE_CONTINUE;






 pmq_ptr = (ipc_mqueue_t *)ctx;
 if (pmq_ptr)
  *pmq_ptr = port_mq;
 return WQ_ITERATE_BREAK_KEEP_LOCKED;
}
