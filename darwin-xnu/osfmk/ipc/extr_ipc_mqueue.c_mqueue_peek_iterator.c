
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef TYPE_1__* ipc_mqueue_t ;
typedef int * ipc_kmsg_queue_t ;
struct TYPE_2__ {int imq_messages; } ;


 scalar_t__ IKM_NULL ;
 int WQ_ITERATE_BREAK ;
 int WQ_ITERATE_CONTINUE ;
 scalar_t__ ipc_kmsg_queue_first (int *) ;

__attribute__((used)) static int mqueue_peek_iterator(void *ctx, struct waitq *waitq,
    struct waitq_set *wqset)
{
 ipc_mqueue_t port_mq = (ipc_mqueue_t)waitq;
 ipc_kmsg_queue_t kmsgs = &port_mq->imq_messages;

 (void)ctx;
 (void)wqset;

 if (ipc_kmsg_queue_first(kmsgs) != IKM_NULL)
  return WQ_ITERATE_BREAK;

 return WQ_ITERATE_CONTINUE;
}
