
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int VM_WIMG_IO ;
 int io_map (int ,int ,int ) ;

vm_offset_t ml_io_map(
 vm_offset_t phys_addr,
 vm_size_t size)
{
 return(io_map(phys_addr,size,VM_WIMG_IO));
}
