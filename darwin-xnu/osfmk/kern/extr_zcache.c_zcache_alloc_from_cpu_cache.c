
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


 int ASAN_VALID ;
 int assert (int ) ;
 TYPE_5__* current_processor () ;
 int disable_preemption () ;
 int enable_preemption () ;
 int kasan_poison_range (int ,int ,int ) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock (int *) ;
 int zcache_canary_validate (TYPE_1__*,void*) ;
 scalar_t__ zcache_depot_available (struct zone_cache*) ;
 int zcache_mag_depot_swap_for_alloc (struct zone_cache*,struct zcc_per_cpu_cache*) ;
 scalar_t__ zcache_mag_fill (TYPE_1__*,int ) ;
 scalar_t__ zcache_mag_has_elements (int ) ;
 void* zcache_mag_pop (int ) ;
 int zcache_swap_magazines (int *,int *) ;

vm_offset_t zcache_alloc_from_cpu_cache(zone_t zone)
{
 int curcpu;
 void *ret = ((void*)0);
 struct zone_cache *zcache;
 struct zcc_per_cpu_cache *per_cpu_cache;

 disable_preemption();
 curcpu = current_processor()->cpu_id;
 zcache = zone->zcache;
 per_cpu_cache = &zcache->zcc_per_cpu_caches[curcpu];

 if (zcache_mag_has_elements(per_cpu_cache->current)) {

  goto allocate_from_current;
 } else if (zcache_mag_has_elements(per_cpu_cache->previous)) {

  zcache_swap_magazines(&per_cpu_cache->previous, &per_cpu_cache->current);
  goto allocate_from_current;
 } else {
  lck_mtx_lock_spin_always(&(zcache->zcc_depot_lock));
  if (zcache_depot_available(zcache) && (zcache->zcc_depot_index > 0)) {

   zcache_mag_depot_swap_for_alloc(zcache, per_cpu_cache);
   lck_mtx_unlock(&(zcache->zcc_depot_lock));
   goto allocate_from_current;
  }
  lck_mtx_unlock(&(zcache->zcc_depot_lock));

  if(zcache_mag_fill(zone, per_cpu_cache->current)){
   goto allocate_from_current;
  }
 }


 enable_preemption();
 return (vm_offset_t) ((void*)0);

allocate_from_current:
 ret = zcache_mag_pop(per_cpu_cache->current);
 assert(ret != ((void*)0));
 zcache_canary_validate(zone, ret);





 enable_preemption();
 return (vm_offset_t) ret;
}
