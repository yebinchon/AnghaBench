
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int cache_flush_page_phys (int ) ;

void
pmap_sync_page_attributes_phys(ppnum_t pa)
{
 cache_flush_page_phys(pa);
}
