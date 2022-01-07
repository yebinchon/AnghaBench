
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_offset_t ;
struct zone_cache {scalar_t__ zcc_depot_index; int zcc_depot_lock; struct zcc_per_cpu_cache* zcc_per_cpu_caches; } ;
struct zcc_per_cpu_cache {int current; int previous; } ;
struct TYPE_7__ {int cpu_id; } ;
struct TYPE_6__ {int elem_size; struct zone_cache* zcache; } ;


 int ASAN_HEAP_FREED ;
 int FALSE ;
 int TRUE ;
 int assert (scalar_t__) ;
 TYPE_5__* current_processor () ;
 scalar_t__ depot_element_count ;
 int disable_preemption () ;
 int enable_preemption () ;
 int kasan_poison_range (int ,int ,int ) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock (int *) ;
 int zcache_canary_add (TYPE_1__*,void*) ;
 scalar_t__ zcache_depot_available (struct zone_cache*) ;
 int zcache_mag_depot_swap_for_free (struct zone_cache*,struct zcc_per_cpu_cache*) ;
 int zcache_mag_drain (TYPE_1__*,int ) ;
 scalar_t__ zcache_mag_has_space (int ) ;
 int zcache_mag_push (int ,void*) ;
 int zcache_swap_magazines (int *,int *) ;

bool zcache_free_to_cpu_cache(zone_t zone, void *addr)
{
 int curcpu;
 struct zone_cache *zcache;
 struct zcc_per_cpu_cache *per_cpu_cache;

 disable_preemption();
 curcpu = current_processor()->cpu_id;
 zcache = zone->zcache;
 per_cpu_cache = &zcache->zcc_per_cpu_caches[curcpu];

 if (zcache_mag_has_space(per_cpu_cache->current)) {

  goto free_to_current;
 } else if (zcache_mag_has_space(per_cpu_cache->previous)) {

  zcache_swap_magazines(&per_cpu_cache->previous, &per_cpu_cache->current);
  goto free_to_current;
 } else{
  lck_mtx_lock_spin_always(&(zcache->zcc_depot_lock));
  if (zcache_depot_available(zcache) && (zcache->zcc_depot_index < depot_element_count)) {

   zcache_mag_depot_swap_for_free(zcache, per_cpu_cache);
   lck_mtx_unlock(&(zcache->zcc_depot_lock));
   goto free_to_current;
  }
  lck_mtx_unlock(&(zcache->zcc_depot_lock));

  zcache_mag_drain(zone, per_cpu_cache->current);
  if(zcache_mag_has_space(per_cpu_cache->current)){
   goto free_to_current;
  }
 }


 enable_preemption();
 return FALSE;

free_to_current:
 assert(zcache_mag_has_space(per_cpu_cache->current));
 zcache_canary_add(zone, addr);
 zcache_mag_push(per_cpu_cache->current, addr);





 enable_preemption();
 return TRUE;
}
