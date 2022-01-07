
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
struct zone_cache {int zcc_depot_index; int zcc_depot_lock; int * zcc_depot_list; } ;
struct TYPE_4__ {struct zone_cache* zcache; } ;


 int ZCACHE_DEPOT_INVALID ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock (int *) ;
 int zcache_depot_available (struct zone_cache*) ;
 int zcache_mag_drain (TYPE_1__*,int ) ;

void zcache_drain_depot(zone_t zone)
{
 struct zone_cache *zcache = zone->zcache;
 int drain_depot_index = 0;





 lck_mtx_lock_spin_always(&(zcache->zcc_depot_lock));
 if (!zcache_depot_available(zcache) || (zcache->zcc_depot_index == 0)) {

  lck_mtx_unlock(&(zcache->zcc_depot_lock));
  return;
 }
 drain_depot_index = zcache->zcc_depot_index;

 zcache->zcc_depot_index = ZCACHE_DEPOT_INVALID;
 lck_mtx_unlock(&(zcache->zcc_depot_lock));


 for (int i = 0; i < drain_depot_index; i++)
  zcache_mag_drain(zone, zcache->zcc_depot_list[i]);

 lck_mtx_lock_spin_always(&(zcache->zcc_depot_lock));

 zcache->zcc_depot_index = 0;
 lck_mtx_unlock(&(zcache->zcc_depot_lock));
}
