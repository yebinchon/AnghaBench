
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_cache {size_t zcc_depot_index; int * zcc_depot_list; } ;
struct zcc_per_cpu_cache {int current; } ;


 int assert (int) ;
 int zcache_depot_available (struct zone_cache*) ;
 int zcache_swap_magazines (int *,int *) ;

void zcache_mag_depot_swap_for_alloc(struct zone_cache *zcache, struct zcc_per_cpu_cache *cache)
{

 assert(zcache_depot_available(zcache));
 assert(zcache->zcc_depot_index > 0);
 zcache->zcc_depot_index --;
 zcache_swap_magazines(&cache->current, &zcache->zcc_depot_list[zcache->zcc_depot_index]);
}
