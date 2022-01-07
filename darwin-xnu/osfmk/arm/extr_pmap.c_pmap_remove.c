
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int pmap_t ;


 int PMAP_OPTIONS_REMOVE ;
 int pmap_remove_options (int ,int ,int ,int ) ;

void
pmap_remove(
 pmap_t pmap,
 vm_map_address_t start,
 vm_map_address_t end)
{
 pmap_remove_options(pmap, start, end, PMAP_OPTIONS_REMOVE);
}
