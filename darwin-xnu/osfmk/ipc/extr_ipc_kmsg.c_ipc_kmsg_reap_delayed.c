
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ipc_kmsg_t ;
typedef int * ipc_kmsg_queue_t ;
struct TYPE_2__ {int ith_messages; } ;


 int IKM_NULL ;
 TYPE_1__* current_thread () ;
 int ipc_kmsg_clean (int ) ;
 int ipc_kmsg_free (int ) ;
 int ipc_kmsg_queue_first (int *) ;
 int ipc_kmsg_rmqueue (int *,int ) ;

void
ipc_kmsg_reap_delayed(void)
{
 ipc_kmsg_queue_t queue = &(current_thread()->ith_messages);
 ipc_kmsg_t kmsg;





 while ((kmsg = ipc_kmsg_queue_first(queue)) != IKM_NULL) {
  ipc_kmsg_clean(kmsg);
  ipc_kmsg_rmqueue(queue, kmsg);
  ipc_kmsg_free(kmsg);
 }
}
