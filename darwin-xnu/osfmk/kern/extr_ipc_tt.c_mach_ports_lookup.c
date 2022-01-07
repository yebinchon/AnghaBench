
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef TYPE_1__* task_t ;
typedef scalar_t__ mach_port_array_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; int * itk_registered; } ;


 scalar_t__ IP_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_RESOURCE_SHORTAGE ;
 int KERN_SUCCESS ;
 TYPE_1__* TASK_NULL ;
 int TASK_PORT_REGISTER_MAX ;
 int ipc_port_copy_send (int ) ;
 int itk_lock (TYPE_1__*) ;
 int itk_unlock (TYPE_1__*) ;
 void* kalloc (scalar_t__) ;
 int kfree (void*,scalar_t__) ;

kern_return_t
mach_ports_lookup(
 task_t task,
 mach_port_array_t *portsp,
 mach_msg_type_number_t *portsCnt)
{
 void *memory;
 vm_size_t size;
 ipc_port_t *ports;
 int i;

 if (task == TASK_NULL)
  return KERN_INVALID_ARGUMENT;

 size = (vm_size_t) (TASK_PORT_REGISTER_MAX * sizeof(ipc_port_t));

 memory = kalloc(size);
 if (memory == 0)
  return KERN_RESOURCE_SHORTAGE;

 itk_lock(task);
 if (task->itk_self == IP_NULL) {
  itk_unlock(task);

  kfree(memory, size);
  return KERN_INVALID_ARGUMENT;
 }

 ports = (ipc_port_t *) memory;






 for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
  ports[i] = ipc_port_copy_send(task->itk_registered[i]);

 itk_unlock(task);

 *portsp = (mach_port_array_t) ports;
 *portsCnt = TASK_PORT_REGISTER_MAX;
 return KERN_SUCCESS;
}
