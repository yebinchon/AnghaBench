
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_address_t ;
typedef scalar_t__ pmap_paddr_t ;


 scalar_t__ gPhysBase ;
 scalar_t__ gVirtBase ;

vm_map_address_t
phystokv(pmap_paddr_t pa)
{
 return (pa - gPhysBase + gVirtBase);
}
