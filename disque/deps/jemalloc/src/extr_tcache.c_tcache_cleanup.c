
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsd_t ;
typedef int tcache_t ;


 int config_tcache ;
 int tcache_destroy (int *,int *) ;
 int * tsd_tcache_get (int *) ;
 int tsd_tcache_set (int *,int *) ;

void
tcache_cleanup(tsd_t *tsd)
{
 tcache_t *tcache;

 if (!config_tcache)
  return;

 if ((tcache = tsd_tcache_get(tsd)) != ((void*)0)) {
  tcache_destroy(tsd, tcache);
  tsd_tcache_set(tsd, ((void*)0));
 }
}
