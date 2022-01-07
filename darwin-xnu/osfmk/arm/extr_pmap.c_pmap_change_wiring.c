
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 int pmap_change_wiring_internal (int ,int ,int ) ;

void
pmap_change_wiring(
 pmap_t pmap,
 vm_map_address_t v,
 boolean_t wired)
{
 pmap_change_wiring_internal(pmap, v, wired);
}
