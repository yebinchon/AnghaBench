
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_entry_t ;
struct TYPE_4__ {scalar_t__ holelistenabled; } ;


 int UPDATE_FIRST_FREE_LL (TYPE_1__*,int ) ;

void
update_first_free_ll( vm_map_t map, vm_map_entry_t new_first_free)
{
 if (map->holelistenabled)
  return;

 UPDATE_FIRST_FREE_LL( map, new_first_free);
}
