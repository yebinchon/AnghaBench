
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ pmap_t ;
typedef scalar_t__ pmap_paddr_t ;
struct TYPE_2__ {int map; } ;


 TYPE_1__* current_thread () ;
 scalar_t__ kernel_pmap ;
 scalar_t__ mmu_kvtop (int ) ;
 scalar_t__ mmu_uvtop (int ) ;
 scalar_t__ pmap_extract_internal (scalar_t__,int ) ;
 scalar_t__ vm_map_pmap (int ) ;

vm_offset_t
pmap_extract(
 pmap_t pmap,
 vm_map_address_t va)
{
 pmap_paddr_t pa=0;

 if (pmap == kernel_pmap)
  pa = mmu_kvtop(va);
 else if (pmap == vm_map_pmap(current_thread()->map))
  pa = mmu_uvtop(va);

 if (pa) return pa;

 return pmap_extract_internal(pmap, va);
}
