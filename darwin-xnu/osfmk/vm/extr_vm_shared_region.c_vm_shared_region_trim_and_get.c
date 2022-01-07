
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_3__* vm_shared_region_t ;
typedef TYPE_4__* vm_named_entry_t ;
typedef TYPE_5__* vm_map_t ;
typedef TYPE_6__* task_t ;
typedef TYPE_7__* ipc_port_t ;
struct TYPE_18__ {scalar_t__ ip_kobject; } ;
struct TYPE_17__ {TYPE_2__* map; } ;
struct TYPE_16__ {int pmap; } ;
struct TYPE_12__ {TYPE_5__* map; } ;
struct TYPE_15__ {TYPE_1__ backing; } ;
struct TYPE_14__ {TYPE_7__* sr_mem_entry; } ;
struct TYPE_13__ {int pmap; } ;


 int pmap_trim (int ,int ,int ,int ,int ) ;
 TYPE_3__* vm_shared_region_get (TYPE_6__*) ;

vm_shared_region_t
vm_shared_region_trim_and_get(task_t task)
{
 vm_shared_region_t shared_region;
 ipc_port_t sr_handle;
 vm_named_entry_t sr_mem_entry;
 vm_map_t sr_map;


 shared_region = vm_shared_region_get(task);
 if (shared_region == ((void*)0)) {
  return ((void*)0);
 }

 sr_handle = shared_region->sr_mem_entry;
 sr_mem_entry = (vm_named_entry_t) sr_handle->ip_kobject;
 sr_map = sr_mem_entry->backing.map;


 pmap_trim(task->map->pmap, sr_map->pmap, 0, 0, 0);

 return shared_region;
}
