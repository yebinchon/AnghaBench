
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_prot_t ;
typedef int vm_map_offset_t ;
typedef int pmap_t ;


 int pmap_protect_options (int ,int ,int ,int ,int ,int *) ;

void
pmap_protect(
 pmap_t map,
 vm_map_offset_t sva,
 vm_map_offset_t eva,
 vm_prot_t prot)
{
 pmap_protect_options(map, sva, eva, prot, 0, ((void*)0));
}
