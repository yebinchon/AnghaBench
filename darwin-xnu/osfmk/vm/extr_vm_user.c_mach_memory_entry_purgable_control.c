
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_purgable_t ;
typedef int kern_return_t ;
typedef int ipc_port_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ VM_PURGABLE_SET_STATE_FROM_KERNEL ;
 int memory_entry_purgeable_control_internal (int ,scalar_t__,int*) ;

kern_return_t
mach_memory_entry_purgable_control(
 ipc_port_t entry_port,
 vm_purgable_t control,
 int *state)
{
 if (control == VM_PURGABLE_SET_STATE_FROM_KERNEL) {

  return KERN_INVALID_ARGUMENT;
 }

 return memory_entry_purgeable_control_internal(entry_port, control, state);
}
