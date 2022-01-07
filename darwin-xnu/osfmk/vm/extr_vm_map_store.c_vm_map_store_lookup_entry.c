
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_offset_t ;
typedef int vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_5__ {int hdr; } ;


 int FALSE ;
 int panic (char*) ;
 scalar_t__ vm_map_store_has_RB_support (int *) ;
 int vm_map_store_lookup_entry_ll (TYPE_1__*,int ,int *) ;
 int vm_map_store_lookup_entry_rb (TYPE_1__*,int ,int *) ;

boolean_t
vm_map_store_lookup_entry(
 vm_map_t map,
 vm_map_offset_t address,
 vm_map_entry_t *entry)
{
}
