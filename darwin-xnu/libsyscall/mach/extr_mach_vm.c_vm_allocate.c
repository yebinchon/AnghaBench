
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_address_t ;
typedef int mach_vm_address_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int mach_vm_allocate (int ,int*,int ,int) ;

kern_return_t
vm_allocate(
 mach_port_name_t task,
 vm_address_t *address,
 vm_size_t size,
 int flags)
{
 kern_return_t rv;
 mach_vm_address_t mach_addr;

 mach_addr = (mach_vm_address_t)*address;
 rv = mach_vm_allocate(task, &mach_addr, size, flags);

 *address = mach_addr;




 return (rv);
}
