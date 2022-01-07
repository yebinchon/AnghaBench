
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ppnum_t ;
typedef int addr64_t ;


 int PAGE_SIZE ;
 int assert (int) ;
 int bzero_phys (int ,int ) ;
 scalar_t__ i386_ptob (scalar_t__) ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

void
pmap_zero_page(
       ppnum_t pn)
{
 assert(pn != vm_page_fictitious_addr);
 assert(pn != vm_page_guard_addr);
 bzero_phys((addr64_t)i386_ptob(pn), PAGE_SIZE);
}
