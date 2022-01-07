
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_13__ {scalar_t__ ip_kobject; } ;
struct TYPE_12__ {int task; } ;


 scalar_t__ IKOT_THREAD ;
 scalar_t__ IP_VALID (TYPE_2__*) ;
 scalar_t__ KERN_SUCCESS ;
 TYPE_1__* THREAD_NULL ;
 int assert (int) ;
 int current_task () ;
 scalar_t__ ip_active (TYPE_2__*) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 scalar_t__ task_conversion_eval (int ,int ) ;
 int thread_reference_internal (TYPE_1__*) ;

thread_t
convert_port_to_thread(
 ipc_port_t port)
{
 thread_t thread = THREAD_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);

  if (ip_active(port) &&
      ip_kotype(port) == IKOT_THREAD) {
   thread = (thread_t)port->ip_kobject;
   assert(thread != THREAD_NULL);


   if (task_conversion_eval(current_task(), thread->task) != KERN_SUCCESS) {
    ip_unlock(port);
    return THREAD_NULL;
   }

   thread_reference_internal(thread);
  }

  ip_unlock(port);
 }

 return (thread);
}
