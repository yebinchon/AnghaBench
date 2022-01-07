
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef TYPE_2__* ipc_port_t ;
struct TYPE_15__ {int ip_srights; } ;
struct TYPE_14__ {scalar_t__ itk_self; TYPE_2__* itk_sself; } ;


 scalar_t__ IP_NULL ;
 int assert (int) ;
 TYPE_1__* current_task () ;
 int ip_active (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_reference (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 TYPE_2__* ipc_port_copy_send (TYPE_2__*) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;

ipc_port_t
retrieve_task_self_fast(
 task_t task)
{
 ipc_port_t port;

 assert(task == current_task());

 itk_lock(task);
 assert(task->itk_self != IP_NULL);

 if ((port = task->itk_sself) == task->itk_self) {


  ip_lock(port);
  assert(ip_active(port));
  ip_reference(port);
  port->ip_srights++;
  ip_unlock(port);
 } else
  port = ipc_port_copy_send(port);
 itk_unlock(task);

 return port;
}
