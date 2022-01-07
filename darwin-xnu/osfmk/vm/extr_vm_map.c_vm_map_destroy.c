
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_2__* vm_map_t ;
struct TYPE_13__ {int lck_attr_val; } ;
struct TYPE_11__ {scalar_t__ nentries; } ;
struct TYPE_12__ {int min_offset; int max_offset; int s_lock; int lock; scalar_t__ pmap; TYPE_1__ hdr; } ;


 int LCK_ATTR_DEBUG ;
 int VM_MAP_NULL ;
 int VM_MAP_REMOVE_GAPS_OK ;
 int VM_MAP_REMOVE_IMMUTABLE ;
 int VM_MAP_REMOVE_NO_UNNESTING ;
 int assert (int) ;
 int lck_mtx_destroy (int *,int *) ;
 int lck_rw_destroy (int *,int *) ;
 int pmap_destroy (scalar_t__) ;
 int vm_map_corpse_footprint_destroy (TYPE_2__*) ;
 int vm_map_delete (TYPE_2__*,int,int,int,int ) ;
 int vm_map_disable_hole_optimization (TYPE_2__*) ;
 TYPE_6__ vm_map_lck_attr ;
 int vm_map_lck_grp ;
 int vm_map_lock (TYPE_2__*) ;
 int vm_map_unlock (TYPE_2__*) ;
 int vm_map_zone ;
 int zfree (int ,TYPE_2__*) ;

void
vm_map_destroy(
 vm_map_t map,
 int flags)
{
 vm_map_lock(map);


 flags |= VM_MAP_REMOVE_NO_UNNESTING;

 flags |= VM_MAP_REMOVE_IMMUTABLE;

 flags |= VM_MAP_REMOVE_GAPS_OK;


 (void) vm_map_delete(map, map->min_offset, map->max_offset,
        flags, VM_MAP_NULL);


 (void) vm_map_delete(map, 0x0, 0xFFFFFFFFFFFFF000ULL,
        flags, VM_MAP_NULL);


 vm_map_disable_hole_optimization(map);
 vm_map_corpse_footprint_destroy(map);

 vm_map_unlock(map);

 assert(map->hdr.nentries == 0);

 if(map->pmap)
  pmap_destroy(map->pmap);

 if (vm_map_lck_attr.lck_attr_val & LCK_ATTR_DEBUG) {
 } else {
  lck_rw_destroy(&(map)->lock, &vm_map_lck_grp);
  lck_mtx_destroy(&(map)->s_lock, &vm_map_lck_grp);
 }

 zfree(vm_map_zone, map);
}
