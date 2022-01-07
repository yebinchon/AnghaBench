
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_offset_t ;
typedef int kern_return_t ;
typedef int host_priv_t ;


 int VM_KERN_MEMORY_MLOCK ;
 int mach_vm_wire_kernel (int ,int ,int ,int ,int ,int ) ;

kern_return_t
mach_vm_wire_external(
 host_priv_t host_priv,
 vm_map_t map,
 mach_vm_offset_t start,
 mach_vm_size_t size,
 vm_prot_t access)
{
 return (mach_vm_wire_kernel(host_priv, map, start, size, access, VM_KERN_MEMORY_MLOCK));
}
