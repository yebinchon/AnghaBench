
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_kmsg_t ;
typedef int ipc_kmsg_queue_t ;


 scalar_t__ IKM_NULL ;
 scalar_t__ ipc_kmsg_queue_first (int ) ;
 int ipc_kmsg_rmqueue (int ,scalar_t__) ;

ipc_kmsg_t
ipc_kmsg_dequeue(
 ipc_kmsg_queue_t queue)
{
 ipc_kmsg_t first;

 first = ipc_kmsg_queue_first(queue);

 if (first != IKM_NULL)
  ipc_kmsg_rmqueue(queue, first);

 return first;
}
