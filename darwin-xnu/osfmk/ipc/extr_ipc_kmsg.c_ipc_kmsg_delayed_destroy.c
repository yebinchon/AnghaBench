
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ipc_kmsg_t ;
typedef int * ipc_kmsg_queue_t ;
typedef int boolean_t ;
struct TYPE_2__ {int ith_messages; } ;


 TYPE_1__* current_thread () ;
 int ipc_kmsg_enqueue (int *,int ) ;
 int ipc_kmsg_queue_empty (int *) ;

boolean_t ipc_kmsg_delayed_destroy(
 ipc_kmsg_t kmsg)
{
 ipc_kmsg_queue_t queue = &(current_thread()->ith_messages);
 boolean_t first = ipc_kmsg_queue_empty(queue);

 ipc_kmsg_enqueue(queue, kmsg);
 return first;
}
