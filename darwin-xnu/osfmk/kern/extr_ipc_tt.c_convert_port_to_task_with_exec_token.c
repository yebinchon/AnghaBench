
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* task_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_16__ {scalar_t__ ip_kobject; } ;
struct TYPE_15__ {int exec_token; } ;


 scalar_t__ IKOT_TASK ;
 scalar_t__ IP_VALID (TYPE_2__*) ;
 TYPE_1__* TASK_NULL ;
 int assert (int) ;
 TYPE_1__* current_task () ;
 scalar_t__ ip_active (TYPE_2__*) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 scalar_t__ task_conversion_eval (TYPE_1__*,TYPE_1__*) ;
 int task_reference_internal (TYPE_1__*) ;

task_t
convert_port_to_task_with_exec_token(
 ipc_port_t port,
 uint32_t *exec_token)
{
 task_t task = TASK_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);

  if ( ip_active(port) &&
    ip_kotype(port) == IKOT_TASK ) {
   task_t ct = current_task();
   task = (task_t)port->ip_kobject;
   assert(task != TASK_NULL);

   if (task_conversion_eval(ct, task)) {
    ip_unlock(port);
    return TASK_NULL;
   }

   if (exec_token) {
    *exec_token = task->exec_token;
   }
   task_reference_internal(task);
  }

  ip_unlock(port);
 }

 return (task);
}
