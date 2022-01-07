
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int VM_KERNEL_UNSLIDE (int ) ;

vm_offset_t
ml_static_unslide(
 vm_offset_t vaddr)
{
 return VM_KERNEL_UNSLIDE(vaddr);
}
