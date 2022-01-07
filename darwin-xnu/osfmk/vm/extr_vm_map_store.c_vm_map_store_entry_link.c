
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_kernel_flags_t ;
typedef int vm_map_entry_t ;
struct TYPE_7__ {scalar_t__ disable_vmentry_reuse; int hdr; int first_free; } ;


 scalar_t__ TRUE ;
 int UPDATE_HIGHEST_ENTRY_END (TYPE_1__*,int ) ;
 int _vm_map_store_entry_link (int *,int ,int ) ;
 int update_first_free_ll (TYPE_1__*,int ) ;
 int update_first_free_rb (TYPE_1__*,int ,scalar_t__) ;
 int vm_map_entry_cs_associate (TYPE_1__*,int ,int ) ;
 scalar_t__ vm_map_store_has_RB_support (int *) ;

void
vm_map_store_entry_link(
 vm_map_t map,
 vm_map_entry_t after_where,
 vm_map_entry_t entry,
 vm_map_kernel_flags_t vmk_flags)
{
 vm_map_t VMEL_map;
 vm_map_entry_t VMEL_entry;
 VMEL_map = (map);
 VMEL_entry = (entry);

 _vm_map_store_entry_link(&VMEL_map->hdr, after_where, VMEL_entry);
 if( VMEL_map->disable_vmentry_reuse == TRUE ) {
  UPDATE_HIGHEST_ENTRY_END( VMEL_map, VMEL_entry);
 } else {
  update_first_free_ll(VMEL_map, VMEL_map->first_free);





 }



 (void) vmk_flags;

}
