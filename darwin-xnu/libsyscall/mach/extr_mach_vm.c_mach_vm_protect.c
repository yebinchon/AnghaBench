
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;


 scalar_t__ MACH_SEND_INVALID_DEST ;
 scalar_t__ _kernelrpc_mach_vm_protect (int ,int ,int ,int ,int ) ;
 scalar_t__ _kernelrpc_mach_vm_protect_trap (int ,int ,int ,int ,int ) ;

kern_return_t
mach_vm_protect(
 mach_port_name_t task,
 mach_vm_address_t address,
 mach_vm_size_t size,
 boolean_t set_maximum,
 vm_prot_t new_protection)
{
 kern_return_t rv;

 rv = _kernelrpc_mach_vm_protect_trap(task, address, size, set_maximum,
  new_protection);

 if (rv == MACH_SEND_INVALID_DEST)
  rv = _kernelrpc_mach_vm_protect(task, address, size,
   set_maximum, new_protection);

 return (rv);
}
