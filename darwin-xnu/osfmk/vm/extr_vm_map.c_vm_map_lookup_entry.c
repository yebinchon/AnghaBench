
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_t ;
typedef int vm_map_offset_t ;
typedef int vm_map_entry_t ;
typedef int boolean_t ;


 int vm_map_store_lookup_entry (int ,int ,int *) ;

boolean_t
vm_map_lookup_entry(
 vm_map_t map,
 vm_map_offset_t address,
 vm_map_entry_t *entry)
{
 return ( vm_map_store_lookup_entry( map, address, entry ));
}
