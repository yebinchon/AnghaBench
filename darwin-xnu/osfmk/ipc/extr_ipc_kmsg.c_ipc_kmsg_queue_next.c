
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* ipc_kmsg_t ;
typedef TYPE_2__* ipc_kmsg_queue_t ;
struct TYPE_7__ {scalar_t__ ikmq_base; } ;
struct TYPE_6__ {struct TYPE_6__* ikm_next; } ;


 scalar_t__ IKM_NULL ;
 int assert (int) ;

ipc_kmsg_t
ipc_kmsg_queue_next(
 ipc_kmsg_queue_t queue,
 ipc_kmsg_t kmsg)
{
 ipc_kmsg_t next;

 assert(queue->ikmq_base != IKM_NULL);

 next = kmsg->ikm_next;
 if (queue->ikmq_base == next)
  next = IKM_NULL;

 return next;
}
