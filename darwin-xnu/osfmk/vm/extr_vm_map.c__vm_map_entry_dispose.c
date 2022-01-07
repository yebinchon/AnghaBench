
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zone_t ;
typedef TYPE_1__* vm_map_entry_t ;
struct vm_map_header {scalar_t__ entries_pageable; } ;
struct TYPE_4__ {int from_reserved_zone; } ;


 int OSAddAtomic (int,int *) ;
 int nonreserved_zalloc_count ;
 int reserved_zalloc_count ;
 scalar_t__ vm_map_entry_reserved_zone ;
 scalar_t__ vm_map_entry_zone ;
 int zfree (scalar_t__,TYPE_1__*) ;

__attribute__((used)) static void
_vm_map_entry_dispose(
 struct vm_map_header *map_header,
 vm_map_entry_t entry)
{
 zone_t zone;

 if (map_header->entries_pageable || !(entry->from_reserved_zone))
  zone = vm_map_entry_zone;
 else
  zone = vm_map_entry_reserved_zone;

 if (!map_header->entries_pageable) {
  if (zone == vm_map_entry_zone)
   OSAddAtomic(-1, &nonreserved_zalloc_count);
  else
   OSAddAtomic(-1, &reserved_zalloc_count);
 }

 zfree(zone, entry);
}
