
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef void* vm_map_entry_t ;
struct TYPE_4__ {void* hint; void* first_free; int holelistenabled; } ;


 int FALSE ;


 void* vm_map_to_entry (TYPE_1__*) ;

void
vm_map_store_update( vm_map_t map, vm_map_entry_t entry, int update_type )
{
 switch (update_type) {
  case 129:
   break;
  case 128:
   if((map->holelistenabled == FALSE) && ((entry) == (map)->first_free)) {
    (map)->first_free = vm_map_to_entry(map);
   }
   if((entry) == (map)->hint) {
    (map)->hint = vm_map_to_entry(map);
   }
   break;
  default:
   break;
 }
}
