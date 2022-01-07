
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_4__ {scalar_t__ res_count; scalar_t__ map_refcnt; int s_lock; } ;


 TYPE_1__* VM_MAP_NULL ;
 int assert (int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

void
vm_map_reference(
 vm_map_t map)
{
 if (map == VM_MAP_NULL)
  return;

 lck_mtx_lock(&map->s_lock);





 map->map_refcnt++;
 lck_mtx_unlock(&map->s_lock);
}
