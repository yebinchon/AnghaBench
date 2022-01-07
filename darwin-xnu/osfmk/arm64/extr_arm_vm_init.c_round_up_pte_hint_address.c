
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int ARM_PTE_HINT_ENTRIES_SHIFT ;
 int ARM_PTE_SIZE ;

__attribute__((used)) static vm_offset_t
round_up_pte_hint_address(vm_offset_t address)
{
 vm_offset_t hint_size = ARM_PTE_SIZE << ARM_PTE_HINT_ENTRIES_SHIFT;
 return ((address + (hint_size - 1)) & ~(hint_size - 1));
}
