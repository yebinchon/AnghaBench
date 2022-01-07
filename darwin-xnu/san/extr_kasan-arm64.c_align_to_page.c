
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 int ARM_PGMASK ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;

__attribute__((used)) static void
align_to_page(vm_offset_t *addrp, vm_offset_t *sizep)
{
 vm_offset_t addr_aligned = vm_map_trunc_page(*addrp, ARM_PGMASK);
 *sizep = vm_map_round_page(*sizep + (*addrp - addr_aligned), ARM_PGMASK);
 *addrp = addr_aligned;
}
