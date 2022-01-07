
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ task_name_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_TASK ;
 scalar_t__ IKOT_TASK_NAME ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ TASK_NAME_NULL ;
 scalar_t__ TASK_NULL ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int task_reference_internal (scalar_t__) ;

task_name_t
convert_port_to_task_name(
 ipc_port_t port)
{
 task_name_t task = TASK_NULL;

 if (IP_VALID(port)) {
  ip_lock(port);

  if ( ip_active(port) &&
    (ip_kotype(port) == IKOT_TASK ||
     ip_kotype(port) == IKOT_TASK_NAME)) {
   task = (task_name_t)port->ip_kobject;
   assert(task != TASK_NAME_NULL);

   task_reference_internal(task);
  }

  ip_unlock(port);
 }

 return (task);
}
