
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_purgable_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mach_vm_offset_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int mach_vm_purgable_control (int ,int ,int ,int*) ;

kern_return_t
vm_purgable_control(
 mach_port_name_t task,
 vm_offset_t address,
 vm_purgable_t control,
 int *state)
{
 return mach_vm_purgable_control(task,
     (mach_vm_offset_t) address,
     control,
     state);
}
