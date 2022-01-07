
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; int itk_debug_control; int itk_task_access; int itk_seatbelt; int itk_bootstrap; int itk_host; int itk_nself; int itk_sself; } ;


 scalar_t__ IP_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;






 TYPE_1__* TASK_NULL ;

 int ipc_port_copy_send (int ) ;
 int ipc_port_make_send (int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;

kern_return_t
task_get_special_port(
 task_t task,
 int which,
 ipc_port_t *portp)
{
 ipc_port_t port;

 if (task == TASK_NULL)
  return KERN_INVALID_ARGUMENT;

 itk_lock(task);
 if (task->itk_self == IP_NULL) {
  itk_unlock(task);
  return KERN_FAILURE;
 }

 switch (which) {
 case 130:
  port = ipc_port_copy_send(task->itk_sself);
  break;

 case 129:
  port = ipc_port_make_send(task->itk_nself);
  break;

 case 131:
  port = ipc_port_copy_send(task->itk_host);
  break;

 case 133:
  port = ipc_port_copy_send(task->itk_bootstrap);
  break;

 case 128:
  port = ipc_port_copy_send(task->itk_seatbelt);
  break;

 case 134:
  port = ipc_port_copy_send(task->itk_task_access);
  break;

 case 132:
  port = ipc_port_copy_send(task->itk_debug_control);
  break;

 default:
     itk_unlock(task);
  return KERN_INVALID_ARGUMENT;
 }
 itk_unlock(task);

 *portp = port;
 return KERN_SUCCESS;
}
