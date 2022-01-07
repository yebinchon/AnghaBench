
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int * pmap; } ;


 int pmap_disable_NX (int *) ;

void
vm_map_disable_NX(vm_map_t map)
{
        if (map == ((void*)0))
         return;
        if (map->pmap == ((void*)0))
         return;

        pmap_disable_NX(map->pmap);
}
