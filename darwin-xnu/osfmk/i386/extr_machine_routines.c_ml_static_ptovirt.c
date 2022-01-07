
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int LINEAR_KERNEL_ADDRESS ;
 unsigned long VM_MIN_KERNEL_ADDRESS ;

vm_offset_t
ml_static_ptovirt(
 vm_offset_t paddr)
{

 return (vm_offset_t)(((unsigned long) paddr) | VM_MIN_KERNEL_ADDRESS);



}
