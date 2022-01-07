
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_size_t ;
typedef int vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef int kern_return_t ;


 int TRUE ;
 int VM_INHERIT_DEFAULT ;
 int VM_PROT_ALL ;
 int VM_PROT_DEFAULT ;
 int vm_map_copyout_internal (int ,int *,int ,int ,int ,int ,int ,int ) ;

kern_return_t
vm_map_copyout_size(
 vm_map_t dst_map,
 vm_map_address_t *dst_addr,
 vm_map_copy_t copy,
 vm_map_size_t copy_size)
{
 return vm_map_copyout_internal(dst_map, dst_addr, copy, copy_size,
                                TRUE,
                                VM_PROT_DEFAULT,
                                VM_PROT_ALL,
                                VM_INHERIT_DEFAULT);
}
