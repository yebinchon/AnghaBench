
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int pt_entry_t ;
typedef scalar_t__ ppnum_t ;
typedef TYPE_1__* pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;
typedef int addr64_t ;
struct TYPE_6__ {int ref_count; } ;


 int* PD_ENTRY_NULL ;
 int PTE_PS ;
 int PTE_VALID_MASK (int ) ;
 int* PT_ENTRY_NULL ;
 scalar_t__ i386_btop (int ) ;
 int is_ept_pmap (TYPE_1__*) ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 int* pmap_pde (TYPE_1__*,int ) ;
 int* pmap_pte (TYPE_1__*,int ) ;
 int pte_to_pa (int) ;
 scalar_t__ ptenum (int ) ;

ppnum_t
pmap_find_phys(pmap_t pmap, addr64_t va)
{
 pt_entry_t *ptp;
 pd_entry_t *pdep;
 ppnum_t ppn = 0;
 pd_entry_t pde;
 pt_entry_t pte;
 boolean_t is_ept;

 is_ept = is_ept_pmap(pmap);

 mp_disable_preemption();






 if (!pmap->ref_count)
  goto pfp_exit;

 pdep = pmap_pde(pmap, va);

 if ((pdep != PD_ENTRY_NULL) && ((pde = *pdep) & PTE_VALID_MASK(is_ept))) {
  if (pde & PTE_PS) {
   ppn = (ppnum_t) i386_btop(pte_to_pa(pde));
   ppn += (ppnum_t) ptenum(va);
  }
  else {
   ptp = pmap_pte(pmap, va);
   if ((PT_ENTRY_NULL != ptp) && (((pte = *ptp) & PTE_VALID_MASK(is_ept)) != 0)) {
    ppn = (ppnum_t) i386_btop(pte_to_pa(pte));
   }
  }
 }
pfp_exit:
 mp_enable_preemption();

        return ppn;
}
