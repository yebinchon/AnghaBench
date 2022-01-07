
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int task_t ;
typedef scalar_t__ task_inspect_t ;
typedef TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;


 scalar_t__ IKOT_TASK ;
 scalar_t__ IP_VALID (TYPE_1__*) ;
 scalar_t__ TASK_INSPECT_NULL ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 scalar_t__ ip_kotype (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int mutex_pause (int) ;
 scalar_t__ task_lock_try (int ) ;

task_inspect_t
convert_port_to_locked_task_inspect(ipc_port_t port)
{
        int try_failed_count = 0;

 while (IP_VALID(port)) {
  task_inspect_t task;

  ip_lock(port);
  if (!ip_active(port) || (ip_kotype(port) != IKOT_TASK)) {
   ip_unlock(port);
   return TASK_INSPECT_NULL;
  }
  task = (task_inspect_t)port->ip_kobject;
  assert(task != TASK_INSPECT_NULL);




  if (task_lock_try((task_t)task)) {
   ip_unlock(port);
   return task;
  }
  try_failed_count++;

  ip_unlock(port);
  mutex_pause(try_failed_count);
 }
 return TASK_INSPECT_NULL;
}
