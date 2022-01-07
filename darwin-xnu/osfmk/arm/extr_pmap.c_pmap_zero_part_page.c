
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ ppnum_t ;
typedef int addr64_t ;


 scalar_t__ PAGE_SIZE ;
 int assert (int) ;
 int bzero_phys (int ,scalar_t__) ;
 scalar_t__ ptoa (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;

void
pmap_zero_part_page(
 ppnum_t pn,
 vm_offset_t offset,
 vm_size_t len)
{
 assert(pn != vm_page_fictitious_addr);
 assert(offset + len <= PAGE_SIZE);
 bzero_phys((addr64_t) (ptoa(pn) + offset), len);
}
