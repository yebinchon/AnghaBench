
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct vm_map_links {scalar_t__ start; scalar_t__ end; TYPE_2__* next; TYPE_2__* prev; } ;
struct vm_map_entry {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {scalar_t__ vme_end; scalar_t__ vme_start; struct TYPE_12__* vme_prev; struct TYPE_12__* vme_next; } ;
struct TYPE_11__ {struct vm_map_links* holes_list; struct vm_map_links* hole_hint; } ;


 TYPE_2__* CAST_TO_VM_MAP_ENTRY (struct vm_map_links*) ;
 scalar_t__ FALSE ;
 int SAVE_HINT_HOLE_WRITE (TYPE_1__*,struct vm_map_links*) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int check_map_sanity (TYPE_1__*,struct vm_map_entry*) ;
 int copy_hole_info (TYPE_2__*,struct vm_map_entry*) ;
 int panic (char*,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ;
 int vm_map_combine_hole (TYPE_1__*,TYPE_2__*) ;
 int vm_map_holes_zone ;
 struct vm_map_links* zalloc (int ) ;

void
update_holes_on_entry_deletion(vm_map_t map, vm_map_entry_t old_entry)
{




 vm_map_entry_t hole_entry, next_hole_entry;



 boolean_t create_new_hole = TRUE;

 hole_entry = CAST_TO_VM_MAP_ENTRY(map->hole_hint);

 if (hole_entry) {

  if (hole_entry->vme_end == old_entry->vme_start) {





  } else if (hole_entry->vme_start == old_entry->vme_end) {

   if (hole_entry != CAST_TO_VM_MAP_ENTRY(map->holes_list)) {
    hole_entry = hole_entry->vme_prev;
   }

  } else if (hole_entry->vme_start > old_entry->vme_end) {





   hole_entry = CAST_TO_VM_MAP_ENTRY(map->holes_list);
  }

  if (hole_entry != CAST_TO_VM_MAP_ENTRY(map->holes_list)) {
   if (hole_entry->vme_start > old_entry->vme_start) {
    panic("Hole hint failed: Hole entry start: 0x%llx, entry start: 0x%llx, map hole start: 0x%llx, map hint start: 0x%llx\n",
     (unsigned long long)hole_entry->vme_start,
     (unsigned long long)old_entry->vme_start,
     (unsigned long long)map->holes_list->start,
     (unsigned long long)map->hole_hint->start);
   }
   if (hole_entry->vme_end > old_entry->vme_start) {
    panic("Hole hint failed: Hole entry end: 0x%llx, entry start: 0x%llx, map hole start: 0x%llx, map hint start: 0x%llx\n",
     (unsigned long long)hole_entry->vme_end,
     (unsigned long long)old_entry->vme_start,
     (unsigned long long)map->holes_list->start,
     (unsigned long long)map->hole_hint->start);
   }
  }

  while (1) {

   next_hole_entry = hole_entry->vme_next;




   if (hole_entry->vme_end == old_entry->vme_start) {
    if (old_entry->vme_end == hole_entry->vme_next->vme_start) {

     vm_map_combine_hole(map, hole_entry);
    } else {

     hole_entry->vme_end = old_entry->vme_end;
    }
    create_new_hole = FALSE;



    break;
   }




   if (hole_entry->vme_start == old_entry->vme_end) {





    hole_entry->vme_start = old_entry->vme_start;
    create_new_hole = FALSE;




    break;
   }






   if (hole_entry->vme_start > old_entry->vme_end) {





    if (hole_entry != CAST_TO_VM_MAP_ENTRY(map->holes_list)) {
     assert(hole_entry->vme_start != old_entry->vme_start);
     hole_entry = hole_entry->vme_prev;
    }
    break;
   }

   hole_entry = next_hole_entry;

   if (hole_entry == CAST_TO_VM_MAP_ENTRY(map->holes_list)) {
    hole_entry = hole_entry->vme_prev;
    break;
   }
  }
 }

 if (create_new_hole) {
  struct vm_map_links *new_hole_entry = ((void*)0);
  vm_map_entry_t l_next, l_prev;

  new_hole_entry = zalloc(vm_map_holes_zone);






  if (map->holes_list == ((void*)0) || (hole_entry == CAST_TO_VM_MAP_ENTRY(map->holes_list) && hole_entry->vme_start > old_entry->vme_start)) {

   if (map->holes_list == ((void*)0)) {

    map->holes_list = new_hole_entry;
    new_hole_entry->prev = new_hole_entry->next = CAST_TO_VM_MAP_ENTRY(map->holes_list);
   } else {

    l_next = CAST_TO_VM_MAP_ENTRY(map->holes_list);
    l_prev = map->holes_list->prev;
    map->holes_list = new_hole_entry;
    new_hole_entry->next = l_next;
    new_hole_entry->prev = l_prev;

    l_prev->vme_next = l_next->vme_prev = CAST_TO_VM_MAP_ENTRY(new_hole_entry);
   }
  } else {

   l_next = hole_entry->vme_next;
   l_prev = hole_entry->vme_next->vme_prev;

   new_hole_entry->prev = hole_entry;
   new_hole_entry->next = l_next;

   hole_entry->vme_next = CAST_TO_VM_MAP_ENTRY(new_hole_entry);
   l_next->vme_prev = CAST_TO_VM_MAP_ENTRY(new_hole_entry);
  }

  new_hole_entry->start = old_entry->vme_start;
  new_hole_entry->end = old_entry->vme_end;

  hole_entry = CAST_TO_VM_MAP_ENTRY(new_hole_entry);

  assert(new_hole_entry->start < new_hole_entry->end);
 }





 SAVE_HINT_HOLE_WRITE(map, (struct vm_map_links*) hole_entry);
 return;
}
