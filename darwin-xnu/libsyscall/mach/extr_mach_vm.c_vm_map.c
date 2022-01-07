
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_offset_t ;
typedef int vm_inherit_t ;
typedef scalar_t__ vm_address_t ;
typedef int mem_entry_name_port_t ;
typedef scalar_t__ mach_port_name_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int VM_FLAGS_ALIAS_MASK ;
 int __syscall_logger (int,uintptr_t,uintptr_t,int ,uintptr_t,int ) ;
 int _kernelrpc_vm_map (scalar_t__,scalar_t__*,scalar_t__,int ,int,int ,int ,int ,int ,int ,int ) ;
 int stack_logging_type_mapped_file_or_shared_mem ;
 int stack_logging_type_vm_allocate ;

kern_return_t
vm_map(
 mach_port_name_t target,
 vm_address_t *address,
 vm_size_t size,
 vm_offset_t mask,
 int flags,
 mem_entry_name_port_t object,
 vm_offset_t offset,
 boolean_t copy,
 vm_prot_t cur_protection,
 vm_prot_t max_protection,
 vm_inherit_t inheritance)
{
 kern_return_t rv;

 rv = _kernelrpc_vm_map(target, address, size, mask, flags, object,
  offset, copy, cur_protection, max_protection, inheritance);

 if (__syscall_logger) {
  int eventTypeFlags = stack_logging_type_vm_allocate | stack_logging_type_mapped_file_or_shared_mem;
  int userTagFlags = flags & VM_FLAGS_ALIAS_MASK;
  __syscall_logger(eventTypeFlags | userTagFlags, (uintptr_t)target, (uintptr_t)size, 0, (uintptr_t)*address, 0);
 }

 return (rv);
}
