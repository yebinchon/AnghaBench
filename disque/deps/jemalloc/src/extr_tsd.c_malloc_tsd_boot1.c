
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* tsd_arenas_cache_bypassp_get (int ) ;
 int tsd_boot1 () ;
 int tsd_fetch () ;

void
malloc_tsd_boot1(void)
{

 tsd_boot1();
 *tsd_arenas_cache_bypassp_get(tsd_fetch()) = 0;
}
