
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_7__ {scalar_t__ ith_self; scalar_t__ ith_sself; scalar_t__ ith_assertions; scalar_t__ ith_special_reply_port; scalar_t__ ith_rpc_reply; int ith_messages; TYPE_1__* exc_actions; } ;
struct TYPE_6__ {scalar_t__ port; } ;


 int EXC_TYPES_COUNT ;
 int FIRST_EXCEPTION ;
 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 int TRUE ;
 int assert (int) ;
 int ipc_kmsg_queue_empty (int *) ;
 int ipc_port_dealloc_kernel (scalar_t__) ;
 int ipc_port_dealloc_reply (scalar_t__) ;
 int ipc_port_release_send (scalar_t__) ;
 int ipc_port_unbind_special_reply_port (TYPE_2__*,int ) ;
 int ipc_thread_destroy_exc_actions (TYPE_2__*) ;

void
ipc_thread_terminate(
 thread_t thread)
{
 ipc_port_t kport = thread->ith_self;

 if (kport != IP_NULL) {
  int i;

  if (IP_VALID(thread->ith_sself))
   ipc_port_release_send(thread->ith_sself);

  thread->ith_sself = thread->ith_self = IP_NULL;

  if (thread->exc_actions != ((void*)0)) {
   for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i) {
    if (IP_VALID(thread->exc_actions[i].port))
     ipc_port_release_send(thread->exc_actions[i].port);
   }
   ipc_thread_destroy_exc_actions(thread);
  }

  ipc_port_dealloc_kernel(kport);
 }






 if (IP_VALID(thread->ith_special_reply_port)) {
  ipc_port_unbind_special_reply_port(thread, TRUE);
 }

 assert(ipc_kmsg_queue_empty(&thread->ith_messages));

 if (thread->ith_rpc_reply != IP_NULL)
  ipc_port_dealloc_reply(thread->ith_rpc_reply);

 thread->ith_rpc_reply = IP_NULL;
}
