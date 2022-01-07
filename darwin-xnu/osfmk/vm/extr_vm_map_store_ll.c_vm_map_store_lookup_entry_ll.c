
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_12__ {scalar_t__ vme_start; scalar_t__ vme_end; struct TYPE_12__* vme_prev; struct TYPE_12__* vme_next; } ;
struct TYPE_11__ {TYPE_2__* hint; } ;


 int FALSE ;
 int SAVE_HINT_MAP_READ (TYPE_1__*,TYPE_2__*) ;
 int TRUE ;
 TYPE_2__* vm_map_first_entry (TYPE_1__*) ;
 TYPE_2__* vm_map_to_entry (TYPE_1__*) ;

boolean_t
vm_map_store_lookup_entry_ll(
 vm_map_t map,
 vm_map_offset_t address,
 vm_map_entry_t *entry)
{
 vm_map_entry_t cur;
 vm_map_entry_t last;





 cur = map->hint;

 if (cur == vm_map_to_entry(map))
  cur = cur->vme_next;

 if (address >= cur->vme_start) {
  last = vm_map_to_entry(map);
  if ((cur != last) && (cur->vme_end > address)) {
   *entry = cur;
   return(TRUE);
  }
 }
 else {



  last = cur->vme_next;
  cur = vm_map_first_entry(map);
 }





 while (cur != last) {
  if (cur->vme_end > address) {
   if (address >= cur->vme_start) {





    *entry = cur;
    SAVE_HINT_MAP_READ(map, cur);

    return(TRUE);
   }
   break;
  }
  cur = cur->vme_next;
 }
 *entry = cur->vme_prev;
 SAVE_HINT_MAP_READ(map, *entry);

 return(FALSE);
}
