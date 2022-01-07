
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_size_t ;
typedef TYPE_1__* task_t ;
typedef int mach_port_t ;
typedef scalar_t__* mach_port_array_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; scalar_t__* itk_registered; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 TYPE_1__* TASK_NULL ;
 int TASK_PORT_REGISTER_MAX ;
 int ipc_port_release_send (scalar_t__) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;
 int kfree (scalar_t__*,int ) ;

kern_return_t
mach_ports_register(
 task_t task,
 mach_port_array_t memory,
 mach_msg_type_number_t portsCnt)
{
 ipc_port_t ports[TASK_PORT_REGISTER_MAX];
 unsigned int i;

 if ((task == TASK_NULL) ||
     (portsCnt > TASK_PORT_REGISTER_MAX) ||
     (portsCnt && memory == ((void*)0)))
  return KERN_INVALID_ARGUMENT;





 for (i = 0; i < portsCnt; i++)
  ports[i] = memory[i];
 for (; i < TASK_PORT_REGISTER_MAX; i++)
  ports[i] = IP_NULL;

 itk_lock(task);
 if (task->itk_self == IP_NULL) {
  itk_unlock(task);
  return KERN_INVALID_ARGUMENT;
 }






 for (i = 0; i < TASK_PORT_REGISTER_MAX; i++) {
  ipc_port_t old;

  old = task->itk_registered[i];
  task->itk_registered[i] = ports[i];
  ports[i] = old;
 }

 itk_unlock(task);

 for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
  if (IP_VALID(ports[i]))
   ipc_port_release_send(ports[i]);






 if (portsCnt != 0)
  kfree(memory,
        (vm_size_t) (portsCnt * sizeof(mach_port_t)));

 return KERN_SUCCESS;
}
