
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int vm_kernel_addrperm_external (int ,int *) ;

void
vm_kernel_unslide_or_perm_external(
 vm_offset_t addr,
 vm_offset_t *up_addr)
{
 vm_kernel_addrperm_external(addr, up_addr);
}
