
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ pmap; } ;


 scalar_t__ kernel_pmap ;

boolean_t
vm_kernel_map_is_kernel(vm_map_t map) {
 return (map->pmap == kernel_pmap);
}
