
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* zone_t ;
typedef int vm_size_t ;
struct zone_cache {scalar_t__ zcc_depot_index; struct zcc_magazine** zcc_depot_list; int zcc_depot_lock; TYPE_1__* zcc_per_cpu_caches; } ;
struct zcc_magazine {int dummy; } ;
struct TYPE_7__ {int cpu_cache_enabled; struct zone_cache* zcache; } ;
struct TYPE_6__ {struct zcc_magazine* previous; struct zcc_magazine* current; } ;


 int LCK_ATTR_NULL ;
 int MAX_CPUS ;
 int TRUE ;
 int assert (int) ;
 int depot_element_count ;
 scalar_t__ kalloc (int) ;
 int lck_mtx_init (int *,int *,int ) ;
 int lock_zone (TYPE_2__*) ;
 int magazine_element_count ;
 int magazine_zone ;
 int unlock_zone (TYPE_2__*) ;
 scalar_t__ zalloc (int ) ;
 int zcache_locks_grp ;
 int zcache_mag_init (struct zcc_magazine*,int ) ;

void zcache_init(zone_t zone)
 {
  int i;
 vm_size_t total_size;
 struct zone_cache *temp_cache;


 total_size = sizeof(struct zone_cache) + (depot_element_count * sizeof(void *));

 temp_cache = (struct zone_cache *) kalloc(total_size);



  for (i = 0; i < MAX_CPUS; i++) {
   temp_cache->zcc_per_cpu_caches[i].current = (struct zcc_magazine *)zalloc(magazine_zone);
   temp_cache->zcc_per_cpu_caches[i].previous = (struct zcc_magazine *)zalloc(magazine_zone);

   assert(temp_cache->zcc_per_cpu_caches[i].current != ((void*)0) && temp_cache->zcc_per_cpu_caches[i].previous != ((void*)0));

   zcache_mag_init(temp_cache->zcc_per_cpu_caches[i].current, magazine_element_count);
   zcache_mag_init(temp_cache->zcc_per_cpu_caches[i].previous, magazine_element_count);
  }


  lck_mtx_init(&(temp_cache->zcc_depot_lock), &zcache_locks_grp, LCK_ATTR_NULL);


 for (i = 0; i < depot_element_count; i++) {
  temp_cache->zcc_depot_list[i] = (struct zcc_magazine *)zalloc(magazine_zone);

  assert(temp_cache->zcc_depot_list[i] != ((void*)0));

  zcache_mag_init(temp_cache->zcc_depot_list[i], magazine_element_count);
 }

 temp_cache->zcc_depot_index = 0;

  lock_zone(zone);
 zone->zcache = temp_cache;

  zone->cpu_cache_enabled = TRUE;
  unlock_zone(zone);
  return;
 }
