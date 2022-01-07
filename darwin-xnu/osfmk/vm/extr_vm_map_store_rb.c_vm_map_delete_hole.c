
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct vm_map_links {scalar_t__ prev; scalar_t__ next; } ;
struct TYPE_9__ {struct TYPE_9__* vme_prev; struct TYPE_9__* vme_next; } ;
struct TYPE_8__ {struct vm_map_links* holes_list; } ;


 TYPE_2__* CAST_TO_VM_MAP_ENTRY (struct vm_map_links*) ;
 int SAVE_HINT_HOLE_WRITE (TYPE_1__*,struct vm_map_links*) ;
 int vm_map_holes_zone ;
 int zfree (int ,TYPE_2__*) ;

void
vm_map_delete_hole(vm_map_t map, vm_map_entry_t hole_entry)
{
 if (hole_entry == CAST_TO_VM_MAP_ENTRY(map->holes_list)) {

  if (hole_entry->vme_next == CAST_TO_VM_MAP_ENTRY(map->holes_list)) {

   map->holes_list = ((void*)0);
   SAVE_HINT_HOLE_WRITE(map, ((void*)0));
  } else {

   vm_map_entry_t l_next, l_prev;

   l_next = (vm_map_entry_t) map->holes_list->next;
   l_prev = (vm_map_entry_t) map->holes_list->prev;
   map->holes_list = (struct vm_map_links*) l_next;

   l_next->vme_prev = l_prev;
   l_prev->vme_next = l_next;

   SAVE_HINT_HOLE_WRITE(map, (struct vm_map_links*) l_next);
  }
 } else {

  SAVE_HINT_HOLE_WRITE(map, (struct vm_map_links*) hole_entry->vme_prev);

  hole_entry->vme_prev->vme_next = hole_entry->vme_next;
  hole_entry->vme_next->vme_prev = hole_entry->vme_prev;
 }

 hole_entry->vme_next = ((void*)0);
 hole_entry->vme_prev = ((void*)0);
 zfree(vm_map_holes_zone, hole_entry);
}
