
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; int itk_debug_control; int itk_task_access; int itk_seatbelt; int itk_bootstrap; int itk_host; int itk_sself; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_NO_ACCESS ;
 int KERN_SUCCESS ;





 TYPE_1__* TASK_NULL ;

 int ipc_port_release_send (int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;

kern_return_t
task_set_special_port(
 task_t task,
 int which,
 ipc_port_t port)
{
 ipc_port_t *whichp;
 ipc_port_t old;

 if (task == TASK_NULL)
  return KERN_INVALID_ARGUMENT;

 switch (which) {
 case 129:
     whichp = &task->itk_sself;
     break;

 case 130:
     whichp = &task->itk_host;
     break;

 case 132:
     whichp = &task->itk_bootstrap;
     break;

 case 128:
     whichp = &task->itk_seatbelt;
     break;

 case 133:
     whichp = &task->itk_task_access;
     break;

 case 131:
     whichp = &task->itk_debug_control;
     break;

 default:
     return KERN_INVALID_ARGUMENT;
 }

 itk_lock(task);
 if (task->itk_self == IP_NULL) {
  itk_unlock(task);
  return KERN_FAILURE;
 }


 if ((128 == which || 133 == which)
  && IP_VALID(*whichp)) {
   itk_unlock(task);
   return KERN_NO_ACCESS;
 }

 old = *whichp;
 *whichp = port;
 itk_unlock(task);

 if (IP_VALID(old))
  ipc_port_release_send(old);
 return KERN_SUCCESS;
}
