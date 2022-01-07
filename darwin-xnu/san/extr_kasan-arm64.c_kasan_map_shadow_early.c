
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_address_t ;
typedef int uint64_t ;


 int AP_RONA ;
 int AP_RWNA ;
 scalar_t__ ARM_PGBYTES ;
 int ARM_PTE_AF ;
 int ARM_PTE_AP (int ) ;
 int ARM_PTE_APMASK ;
 int ARM_PTE_ATTRINDX (int ) ;
 int ARM_PTE_NX ;
 int ARM_PTE_PNX ;
 int ARM_PTE_SH (int ) ;
 int ARM_PTE_TYPE ;
 int ARM_PTE_TYPE_VALID ;
 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TTE_VALID ;
 scalar_t__ ARM_TT_L1_INDEX_MASK ;
 scalar_t__ ARM_TT_L1_SHIFT ;
 scalar_t__ ARM_TT_L2_INDEX_MASK ;
 scalar_t__ ARM_TT_L2_SHIFT ;
 scalar_t__ ARM_TT_L3_INDEX_MASK ;
 scalar_t__ ARM_TT_L3_SHIFT ;
 int CACHE_ATTRINDX_DEFAULT ;
 scalar_t__ KASAN_SHADOW_MAX ;
 scalar_t__ KASAN_SHADOW_MIN ;
 int SHADOW_FOR_ADDRESS (scalar_t__) ;
 int SH_OUTER_MEMORY ;
 int __nosan_bzero (void*,scalar_t__) ;
 int align_to_page (scalar_t__*,scalar_t__*) ;
 int alloc_page () ;
 int assert (int) ;
 scalar_t__ bootstrap_pgtable_phys ;
 int flush_mmu_tlb () ;
 scalar_t__ zero_page_phys ;

__attribute__((used)) static void
kasan_map_shadow_early(vm_offset_t address, vm_size_t size, bool is_zero)
{
 align_to_page(&address, &size);

 vm_size_t j;
 uint64_t *pte;

 for (j = 0; j < size; j += ARM_PGBYTES) {
  vm_offset_t virt_shadow_target = (vm_offset_t)SHADOW_FOR_ADDRESS(address + j);

  assert(virt_shadow_target >= KASAN_SHADOW_MIN);
  assert(virt_shadow_target < KASAN_SHADOW_MAX);

  uint64_t *base = (uint64_t *)bootstrap_pgtable_phys;



  pte = base + ((virt_shadow_target & ARM_TT_L1_INDEX_MASK) >> ARM_TT_L1_SHIFT);
  if (*pte & ARM_TTE_VALID) {
   assert((*pte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE);
  } else {

   vm_address_t pg = alloc_page();
   __nosan_bzero((void *)pg, ARM_PGBYTES);
   *pte = ((uint64_t)pg & ARM_TTE_TABLE_MASK) | ARM_TTE_VALID | ARM_TTE_TYPE_TABLE;
  }
  base = (uint64_t *)(*pte & ARM_TTE_TABLE_MASK);



  pte = base + ((virt_shadow_target & ARM_TT_L2_INDEX_MASK) >> ARM_TT_L2_SHIFT);
  if (*pte & ARM_TTE_VALID) {
   assert((*pte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE);
  } else {

   vm_address_t pg = alloc_page();
   __nosan_bzero((void *)pg, ARM_PGBYTES);
   *pte = ((uint64_t)pg & ARM_TTE_TABLE_MASK) | ARM_TTE_VALID | ARM_TTE_TYPE_TABLE;
  }
  base = (uint64_t *)(*pte & ARM_TTE_TABLE_MASK);


  pte = base + ((virt_shadow_target & ARM_TT_L3_INDEX_MASK) >> ARM_TT_L3_SHIFT);

  if ((*pte & (ARM_PTE_TYPE|ARM_PTE_APMASK)) == (ARM_PTE_TYPE_VALID|ARM_PTE_AP(AP_RWNA))) {

  } else {


   uint64_t newpte;
   if (is_zero) {

    newpte = (uint64_t)zero_page_phys | ARM_PTE_AP(AP_RONA);
   } else {

    vm_address_t pg = alloc_page();
    __nosan_bzero((void *)pg, ARM_PGBYTES);
    newpte = pg | ARM_PTE_AP(AP_RWNA);
   }


   newpte |= ARM_PTE_TYPE_VALID
    | ARM_PTE_AF
    | ARM_PTE_SH(SH_OUTER_MEMORY)
    | ARM_PTE_ATTRINDX(CACHE_ATTRINDX_DEFAULT)
    | ARM_PTE_NX
    | ARM_PTE_PNX;

   *pte = newpte;
  }
 }

 flush_mmu_tlb();
}
