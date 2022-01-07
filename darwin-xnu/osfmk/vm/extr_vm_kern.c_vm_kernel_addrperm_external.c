
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ VM_KERNEL_ADDRESS (scalar_t__) ;
 scalar_t__ VM_KERNEL_IS_SLID (scalar_t__) ;
 scalar_t__ VM_KERNEL_UNSLIDE (scalar_t__) ;
 scalar_t__ vm_kernel_addrperm_ext ;

void
vm_kernel_addrperm_external(
 vm_offset_t addr,
 vm_offset_t *perm_addr)
{
 if (VM_KERNEL_IS_SLID(addr)) {
  *perm_addr = VM_KERNEL_UNSLIDE(addr);
 } else if (VM_KERNEL_ADDRESS(addr)) {
  *perm_addr = addr + vm_kernel_addrperm_ext;
 } else {
  *perm_addr = addr;
 }
}
