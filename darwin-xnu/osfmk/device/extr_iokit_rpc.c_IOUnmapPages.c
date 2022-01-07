
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
typedef int pmap_t ;
typedef scalar_t__ mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int pmap; } ;


 int KERN_SUCCESS ;
 int pmap_remove (int ,int ,int ) ;
 int round_page_64 (scalar_t__) ;
 int trunc_page_64 (scalar_t__) ;

kern_return_t IOUnmapPages(vm_map_t map, mach_vm_address_t va, mach_vm_size_t length)
{
    pmap_t pmap = map->pmap;

    pmap_remove(pmap, trunc_page_64(va), round_page_64(va + length));

    return( KERN_SUCCESS );
}
