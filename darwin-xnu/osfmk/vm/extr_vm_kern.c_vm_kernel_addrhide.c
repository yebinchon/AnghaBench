
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int VM_KERNEL_ADDRHIDE (int ) ;

void
vm_kernel_addrhide(
 vm_offset_t addr,
 vm_offset_t *hide_addr)
{
 *hide_addr = VM_KERNEL_ADDRHIDE(addr);
}
