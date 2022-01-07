
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mcache_t ;


 int mcache_bkt_ws_reap (int *) ;

__attribute__((used)) static void
mcache_cache_reap(mcache_t *cp)
{
 mcache_bkt_ws_reap(cp);
}
