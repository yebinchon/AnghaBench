
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int ppnum_t ;
typedef int addr64_t ;


 int bcopy_phys (int ,int ,int ) ;
 scalar_t__ ptoa (int ) ;

void
pmap_copy_part_page(
 ppnum_t psrc,
 vm_offset_t src_offset,
 ppnum_t pdst,
 vm_offset_t dst_offset,
 vm_size_t len)
{
 bcopy_phys((addr64_t) (ptoa(psrc) + src_offset),
       (addr64_t) (ptoa(pdst) + dst_offset),
       len);
}
