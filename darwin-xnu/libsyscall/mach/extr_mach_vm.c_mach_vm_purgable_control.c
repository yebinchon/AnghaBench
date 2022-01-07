
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_purgable_t ;
typedef int mach_vm_offset_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_vm_purgable_control (int ,int ,int ,int*) ;
 scalar_t__ _kernelrpc_mach_vm_purgable_control_trap (int ,int ,int ,int*) ;

kern_return_t
mach_vm_purgable_control(
 mach_port_name_t target,
 mach_vm_offset_t address,
 vm_purgable_t control,
 int *state)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_vm_purgable_control_trap(target, address, control, state);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_vm_purgable_control(target, address, control, state);

 return (rv);
}
