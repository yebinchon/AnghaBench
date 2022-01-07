
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_prot_t ;
typedef int vm_address_t ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int mach_vm_protect (int ,int ,int ,int ,int ) ;

kern_return_t
vm_protect(
 mach_port_name_t task,
 vm_address_t address,
 vm_size_t size,
 boolean_t set_maximum,
 vm_prot_t new_protection)
{
 kern_return_t rv;

 rv = mach_vm_protect(task, address, size, set_maximum, new_protection);

 return (rv);
}
