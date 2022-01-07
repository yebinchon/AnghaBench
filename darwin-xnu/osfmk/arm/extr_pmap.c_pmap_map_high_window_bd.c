
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_map_address_t ;
typedef scalar_t__ pt_entry_t ;


 int AP_RONA ;
 int AP_RWNA ;
 scalar_t__ ARM_PTE_AF ;
 scalar_t__ ARM_PTE_AP (int ) ;
 scalar_t__ ARM_PTE_ATTRINDX (int ) ;
 int ARM_PTE_IS_COMPRESSED (scalar_t__) ;
 scalar_t__ ARM_PTE_NG ;
 scalar_t__ ARM_PTE_NX ;
 scalar_t__ ARM_PTE_PNX ;
 scalar_t__ ARM_PTE_SH ;
 scalar_t__ ARM_PTE_TYPE ;
 scalar_t__ ARM_PTE_TYPE_FAULT ;
 int CACHE_ATTRINDX_DEFAULT ;
 scalar_t__ PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int PMAP_UPDATE_TLBS (int ,scalar_t__,scalar_t__) ;
 int SH_OUTER_MEMORY ;
 scalar_t__ VM_HIGH_KERNEL_WINDOW ;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 int VM_PROT_WRITE ;
 scalar_t__ VREGION1_SIZE ;
 scalar_t__ VREGION1_START ;
 int WRITE_PTE_STRONG (scalar_t__*,scalar_t__) ;
 int assert (int) ;
 int kasan_notify_address (scalar_t__,scalar_t__) ;
 int kernel_pmap ;
 scalar_t__ pa_to_pte (scalar_t__) ;
 int panic (char*) ;
 scalar_t__* pmap_pte (int ,scalar_t__) ;

vm_map_address_t
pmap_map_high_window_bd(
 vm_offset_t pa_start,
 vm_size_t len,
 vm_prot_t prot)
{
 pt_entry_t *ptep, pte;




 vm_map_address_t va_start = VREGION1_START;
 vm_map_address_t va_max = VREGION1_START + VREGION1_SIZE;

 vm_map_address_t va_end;
 vm_map_address_t va;
 vm_size_t offset;

 offset = pa_start & PAGE_MASK;
 pa_start -= offset;
 len += offset;

 if (len > (va_max - va_start)) {
  panic("pmap_map_high_window_bd: area too large\n");
 }

scan:
 for ( ; va_start < va_max; va_start += PAGE_SIZE) {
  ptep = pmap_pte(kernel_pmap, va_start);
  assert(!ARM_PTE_IS_COMPRESSED(*ptep));
  if (*ptep == ARM_PTE_TYPE_FAULT)
   break;
 }
 if (va_start > va_max) {
  panic("pmap_map_high_window_bd: insufficient pages\n");
 }

 for (va_end = va_start + PAGE_SIZE; va_end < va_start + len; va_end += PAGE_SIZE) {
  ptep = pmap_pte(kernel_pmap, va_end);
  assert(!ARM_PTE_IS_COMPRESSED(*ptep));
  if (*ptep != ARM_PTE_TYPE_FAULT) {
   va_start = va_end + PAGE_SIZE;
   goto scan;
  }
 }

 for (va = va_start; va < va_end; va += PAGE_SIZE, pa_start += PAGE_SIZE) {
  ptep = pmap_pte(kernel_pmap, va);
  pte = pa_to_pte(pa_start)
           | ARM_PTE_TYPE | ARM_PTE_AF | ARM_PTE_NX | ARM_PTE_PNX
        | ARM_PTE_AP((prot & VM_PROT_WRITE) ? AP_RWNA : AP_RONA)
           | ARM_PTE_ATTRINDX(CACHE_ATTRINDX_DEFAULT);



  pte |= ARM_PTE_SH;




  WRITE_PTE_STRONG(ptep, pte);
 }
 PMAP_UPDATE_TLBS(kernel_pmap, va_start, va_start + len);



 return va_start;
}
