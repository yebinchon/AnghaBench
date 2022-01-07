
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef TYPE_2__* vm_map_entry_t ;
struct TYPE_13__ {scalar_t__ vme_start; struct TYPE_13__* vme_prev; } ;
struct TYPE_12__ {scalar_t__ holelistenabled; int hdr; TYPE_2__* first_free; } ;


 scalar_t__ FALSE ;
 int VM_MAP_ENTRY_DELETE ;
 int _vm_map_store_entry_unlink (int *,TYPE_2__*) ;
 int update_first_free_ll (TYPE_1__*,TYPE_2__*) ;
 int update_first_free_rb (TYPE_1__*,TYPE_2__*,scalar_t__) ;
 scalar_t__ vm_map_store_has_RB_support (int *) ;
 int vm_map_store_update (TYPE_1__*,TYPE_2__*,int ) ;

void
vm_map_store_entry_unlink( vm_map_t map, vm_map_entry_t entry)
{
 vm_map_t VMEU_map;
 vm_map_entry_t VMEU_entry = ((void*)0);
 vm_map_entry_t VMEU_first_free = ((void*)0);
 VMEU_map = (map);
 VMEU_entry = (entry);

 if (map->holelistenabled == FALSE) {
  if (VMEU_entry->vme_start <= VMEU_map->first_free->vme_start){
   VMEU_first_free = VMEU_entry->vme_prev;
  } else {
   VMEU_first_free = VMEU_map->first_free;
  }
 }
 _vm_map_store_entry_unlink(&VMEU_map->hdr, VMEU_entry);
 vm_map_store_update( map, entry, VM_MAP_ENTRY_DELETE);
 update_first_free_ll(VMEU_map, VMEU_first_free);





}
