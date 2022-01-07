
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int tt_entry_t ;
typedef int pt_entry_t ;
typedef int pmap_paddr_t ;


 int ARM_PGBYTES ;
 int ARM_PTE_AF ;
 int ARM_PTE_AP (int) ;
 int ARM_PTE_ATTRINDX (int ) ;
 int ARM_PTE_NX ;
 int ARM_PTE_SH ;
 int ARM_PTE_TYPE ;
 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TT_L1_PT_OFFMASK ;
 int CACHE_ATTRINDX_DEFAULT ;
 int assert (int) ;
 int avail_end ;
 int avail_start ;
 int bzero (int*,int) ;
 int* cpu_tte ;
 int gPhysBase ;
 int gVirtBase ;
 scalar_t__ kvtophys (int) ;
 int pa_to_tte (scalar_t__) ;
 scalar_t__ phystokv (int) ;
 size_t ttenum (int) ;

__attribute__((used)) static void
arm_vm_page_granular_helper(vm_offset_t start, vm_offset_t _end, vm_offset_t va,
                            int pte_prot_APX, int pte_prot_XN)
{
 if (va & ARM_TT_L1_PT_OFFMASK) {
  va &= (~ARM_TT_L1_PT_OFFMASK);
  tt_entry_t *tte = &cpu_tte[ttenum(va)];
  tt_entry_t tmplate = *tte;
  pmap_paddr_t pa;
  pt_entry_t *ppte, ptmp;
  unsigned int i;

  pa = va - gVirtBase + gPhysBase;

  if (pa >= avail_end)
   return;

  assert(_end >= va);

  if (ARM_TTE_TYPE_TABLE == (tmplate & ARM_TTE_TYPE_MASK)) {

   ppte = (pt_entry_t *)phystokv((tmplate & ARM_TTE_TABLE_MASK));
  } else {

   ppte = (pt_entry_t *)phystokv(avail_start);
   avail_start += ARM_PGBYTES;
   bzero(ppte, ARM_PGBYTES);

   for (i = 0; i < 4; ++i)
    tte[i] = pa_to_tte(kvtophys((vm_offset_t)ppte) + (i * 0x400)) | ARM_TTE_TYPE_TABLE;
  }

  vm_offset_t len = _end - va;
  if ((pa + len) > avail_end)
   _end -= (pa + len - avail_end);
  assert((start - gVirtBase + gPhysBase) >= gPhysBase);


  for (i = 0; i < (ARM_PGBYTES / sizeof(*ppte)); i++) {
   if (start <= va && va < _end) {

    ptmp = pa | ARM_PTE_AF | ARM_PTE_SH | ARM_PTE_TYPE;
    ptmp = ptmp | ARM_PTE_ATTRINDX(CACHE_ATTRINDX_DEFAULT);
    ptmp = ptmp | ARM_PTE_AP(pte_prot_APX);
    if (pte_prot_XN)
     ptmp = ptmp | ARM_PTE_NX;

    ppte[i] = ptmp;
   }

   va += ARM_PGBYTES;
   pa += ARM_PGBYTES;
  }
 }
}
