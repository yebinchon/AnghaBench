
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int cache_sync_page (int ) ;

void
pmap_sync_page_data_phys(
 ppnum_t pp)
{
 cache_sync_page(pp);
}
