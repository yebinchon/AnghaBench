
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int vm_map_size_t ;
struct TYPE_3__ {int size; } ;



vm_map_size_t
get_vmmap_size(
 vm_map_t map)
{
 return(map->size);
}
