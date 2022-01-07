
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_2__* zone_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int options; } ;
struct TYPE_9__ {int all_free; } ;
struct TYPE_10__ {TYPE_1__ pages; int collectable; } ;


 int TH_OPT_ZONE_GC ;
 int ZALLOC_DEBUG_ZONEGC ;
 TYPE_2__* ZONE_NULL ;
 int all_zones_lock ;
 int assert (int) ;
 TYPE_7__* current_thread () ;
 int drop_free_elements (TYPE_2__*) ;
 int kill_process_in_largest_zone () ;
 int kprintf (char*) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 unsigned int num_zones ;
 scalar_t__ queue_empty (int *) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 int zalloc_debug ;
 int zcache_drain_depot (TYPE_2__*) ;
 TYPE_2__* zone_array ;
 scalar_t__ zone_caching_enabled (TYPE_2__*) ;
 int zone_gc_lock ;

void
zone_gc(boolean_t consider_jetsams)
{
 unsigned int max_zones;
 zone_t z;
 unsigned int i;

 if (consider_jetsams) {
  kill_process_in_largest_zone();





 }

 lck_mtx_lock(&zone_gc_lock);

 current_thread()->options |= TH_OPT_ZONE_GC;

 simple_lock(&all_zones_lock);
 max_zones = num_zones;
 simple_unlock(&all_zones_lock);

 if (zalloc_debug & ZALLOC_DEBUG_ZONEGC)
  kprintf("zone_gc() starting...\n");

 for (i = 0; i < max_zones; i++) {
  z = &(zone_array[i]);
  assert(z != ZONE_NULL);

  if (!z->collectable) {
   continue;
  }





  if (queue_empty(&z->pages.all_free)) {
   continue;
  }

  drop_free_elements(z);
 }

 current_thread()->options &= ~TH_OPT_ZONE_GC;

 lck_mtx_unlock(&zone_gc_lock);
}
