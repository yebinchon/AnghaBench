
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ncleanups ;
 int* tsd_arenas_cache_bypassp_get (int ) ;
 scalar_t__ tsd_boot0 () ;
 int tsd_fetch () ;

bool
malloc_tsd_boot0(void)
{

 ncleanups = 0;
 if (tsd_boot0())
  return (1);
 *tsd_arenas_cache_bypassp_get(tsd_fetch()) = 1;
 return (0);
}
