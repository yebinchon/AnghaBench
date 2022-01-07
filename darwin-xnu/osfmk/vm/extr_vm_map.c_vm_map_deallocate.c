
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_6__ {unsigned int map_refcnt; int s_lock; } ;


 TYPE_1__* VM_MAP_NULL ;
 int VM_MAP_REMOVE_NO_FLAGS ;
 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int vm_map_destroy (TYPE_1__*,int ) ;
 int vm_map_res_deallocate (TYPE_1__*) ;

void
vm_map_deallocate(
 vm_map_t map)
{
 unsigned int ref;

 if (map == VM_MAP_NULL)
  return;

 lck_mtx_lock(&map->s_lock);
 ref = --map->map_refcnt;
 if (ref > 0) {
  vm_map_res_deallocate(map);
  lck_mtx_unlock(&map->s_lock);
  return;
 }
 assert(map->map_refcnt == 0);
 lck_mtx_unlock(&map->s_lock);
 vm_map_destroy(map, VM_MAP_REMOVE_NO_FLAGS);
}
