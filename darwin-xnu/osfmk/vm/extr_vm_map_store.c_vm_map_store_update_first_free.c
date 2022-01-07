
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_entry_t ;
typedef int boolean_t ;
struct TYPE_5__ {int hdr; } ;


 int update_first_free_ll (TYPE_1__*,int ) ;
 int update_first_free_rb (TYPE_1__*,int ,int ) ;
 scalar_t__ vm_map_store_has_RB_support (int *) ;

void
vm_map_store_update_first_free( vm_map_t map, vm_map_entry_t first_free_entry, boolean_t new_entry_creation)
{
 update_first_free_ll(map, first_free_entry);





}
