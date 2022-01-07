
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int thread_t ;
typedef scalar_t__ thread_inspect_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_THREAD ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ THREAD_INSPECT_NULL ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int thread_reference_internal (int ) ;

thread_inspect_t
convert_port_to_thread_inspect(
 ipc_port_t port)
{
 thread_inspect_t thread = THREAD_INSPECT_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);

  if (ip_active(port) &&
      ip_kotype(port) == IKOT_THREAD) {
   thread = (thread_inspect_t)port->ip_kobject;
   assert(thread != THREAD_INSPECT_NULL);
   thread_reference_internal((thread_t)thread);
  }
  ip_unlock(port);
 }

 return thread;
}
