
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int ppnum_t ;


 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int TRUE ;
 int flush_dcache (int ,int ,int ) ;

void
pmap_sync_page_attributes_phys(
 ppnum_t pp)
{
 flush_dcache((vm_offset_t) (pp << PAGE_SHIFT), PAGE_SIZE, TRUE);
}
