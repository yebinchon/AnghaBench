
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_9__ {int * vme_prev; struct TYPE_9__* vme_next; } ;
struct TYPE_8__ {int first_free; scalar_t__ holelistenabled; int * holes_list; } ;


 TYPE_2__* CAST_TO_VM_MAP_ENTRY (int *) ;
 scalar_t__ FALSE ;
 int SAVE_HINT_HOLE_WRITE (TYPE_1__*,int *) ;
 int vm_map_first_entry (TYPE_1__*) ;
 int vm_map_holes_zone ;
 int zfree (int ,TYPE_2__*) ;

void
vm_map_disable_hole_optimization(vm_map_t map)
{
 vm_map_entry_t head_entry, hole_entry, next_hole_entry;

 if (map->holelistenabled) {

  head_entry = hole_entry = CAST_TO_VM_MAP_ENTRY(map->holes_list);

  while (hole_entry != ((void*)0)) {

   next_hole_entry = hole_entry->vme_next;

   hole_entry->vme_next = ((void*)0);
   hole_entry->vme_prev = ((void*)0);
   zfree(vm_map_holes_zone, hole_entry);

   if (next_hole_entry == head_entry) {
    hole_entry = ((void*)0);
   } else {
    hole_entry = next_hole_entry;
   }
  }

  map->holes_list = ((void*)0);
  map->holelistenabled = FALSE;

  map->first_free = vm_map_first_entry(map);
  SAVE_HINT_HOLE_WRITE(map, ((void*)0));
 }
}
