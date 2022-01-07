
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int map_disallow_data_exec; } ;


 int TRUE ;

void
vm_map_disallow_data_exec(vm_map_t map)
{
    if (map == ((void*)0))
        return;

    map->map_disallow_data_exec = TRUE;
}
