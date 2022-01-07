
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_address_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ mach_msg_type_number_t ;
typedef int kern_return_t ;


 int __syscall_logger (int,uintptr_t,uintptr_t,int ,int ,int ) ;
 int _kernelrpc_vm_read (int ,int ,int ,int *,scalar_t__*) ;
 scalar_t__ mach_task_self () ;
 int stack_logging_type_mapped_file_or_shared_mem ;
 int stack_logging_type_vm_allocate ;

kern_return_t
vm_read(
 mach_port_name_t target,
 vm_address_t address,
 vm_size_t size,
 vm_offset_t *data,
 mach_msg_type_number_t *dataCnt)
{
 kern_return_t rv;

 rv = _kernelrpc_vm_read(target, address, size, data, dataCnt);

 if (__syscall_logger) {
  int eventTypeFlags = stack_logging_type_vm_allocate | stack_logging_type_mapped_file_or_shared_mem;


  __syscall_logger(eventTypeFlags, (uintptr_t)mach_task_self(), (uintptr_t)*dataCnt, 0, *data, 0);
 }

 return (rv);
}
