
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_map_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_1__* vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ vme_end; scalar_t__ vme_start; struct TYPE_5__* vme_next; } ;


 int FALSE ;
 int TRUE ;
 int vm_map_lookup_entry (int ,scalar_t__,TYPE_1__**) ;
 scalar_t__ vm_map_max (int ) ;
 scalar_t__ vm_map_min (int ) ;
 TYPE_1__* vm_map_to_entry (int ) ;

__attribute__((used)) static boolean_t
vm_map_range_check(
 vm_map_t map,
 vm_map_offset_t start,
 vm_map_offset_t end,
 vm_map_entry_t *entry)
{
 vm_map_entry_t cur;
 vm_map_offset_t prev;




 if (start < vm_map_min(map) || end > vm_map_max(map) || start > end)
  return (FALSE);





 if (!vm_map_lookup_entry(map, start, &cur))
  return (FALSE);





 if (entry != (vm_map_entry_t *) ((void*)0))
  *entry = cur;
 if (end <= cur->vme_end)
  return (TRUE);





 prev = cur->vme_end;
 cur = cur->vme_next;
 while ((cur != vm_map_to_entry(map)) && (prev == cur->vme_start)) {
  if (end <= cur->vme_end)
   return (TRUE);
  prev = cur->vme_end;
  cur = cur->vme_next;
 }
 return (FALSE);
}
