
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;
struct TYPE_3__ {scalar_t__ ith_rpc_reply; int ith_messages; scalar_t__ ith_assertions; int * exc_actions; int * ith_special_reply_port; int ith_sself; scalar_t__ ith_self; } ;


 int IKOT_THREAD ;
 scalar_t__ IP_NULL ;
 int ipc_kmsg_queue_init (int *) ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 int ipc_port_make_send (scalar_t__) ;
 int panic (char*) ;

void
ipc_thread_init(
 thread_t thread)
{
 ipc_port_t kport;

 kport = ipc_port_alloc_kernel();
 if (kport == IP_NULL)
  panic("ipc_thread_init");

 thread->ith_self = kport;
 thread->ith_sself = ipc_port_make_send(kport);
 thread->ith_special_reply_port = ((void*)0);
 thread->exc_actions = ((void*)0);

 ipc_kobject_set(kport, (ipc_kobject_t)thread, IKOT_THREAD);





 ipc_kmsg_queue_init(&thread->ith_messages);

 thread->ith_rpc_reply = IP_NULL;
}
