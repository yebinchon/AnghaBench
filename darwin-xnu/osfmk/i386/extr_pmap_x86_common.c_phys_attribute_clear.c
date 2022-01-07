
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_2__* pv_rooted_entry_t ;
typedef TYPE_3__* pv_hashed_entry_t ;
typedef char pt_entry_t ;
typedef scalar_t__ ppnum_t ;
typedef TYPE_4__* pmap_t ;
typedef int pmap_flush_context ;
typedef scalar_t__ boolean_t ;
struct TYPE_20__ {int phys_footprint; int internal; } ;
struct TYPE_16__ {scalar_t__ reusable; scalar_t__ internal; scalar_t__ external; } ;
struct TYPE_19__ {TYPE_1__ stats; } ;
struct TYPE_18__ {int qlink; TYPE_4__* pmap; } ;
struct TYPE_17__ {scalar_t__ pmap; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 scalar_t__ FALSE ;
 char INTEL_EPT_MOD ;
 scalar_t__ IS_ALTACCT_PAGE (int,TYPE_3__*) ;
 scalar_t__ IS_INTERNAL_PAGE (int) ;
 int IS_MANAGED_PAGE (int) ;
 scalar_t__ IS_REUSABLE_PAGE (int) ;
 int LOCK_PVH (int) ;
 int OSAddAtomic (int,scalar_t__*) ;
 scalar_t__ PAGE_SIZE ;
 int PHYS_MODIFIED ;
 int PHYS_REFERENCED ;
 char PHYS_REUSABLE ;
 int PMAP_CODE (int ) ;
 scalar_t__ PMAP_NULL ;
 unsigned int PMAP_OPTIONS_CLEAR_REUSABLE ;
 unsigned int PMAP_OPTIONS_CLEAR_WRITE ;
 unsigned int PMAP_OPTIONS_NOFLUSH ;
 unsigned int PMAP_OPTIONS_SET_REUSABLE ;
 int PMAP_STATS_PEAK (scalar_t__) ;
 int PMAP_TRACE (int,...) ;
 int PMAP_UPDATE_TLBS (TYPE_4__*,scalar_t__,scalar_t__) ;
 int PMAP_UPDATE_TLBS_DELAYED (TYPE_4__*,scalar_t__,scalar_t__,int *) ;
 int PMAP__ATTRIBUTE_CLEAR ;
 char PTE_MOD (scalar_t__) ;
 char PTE_REF (scalar_t__) ;
 char PTE_WRITE (scalar_t__) ;
 scalar_t__ PVE_VA (TYPE_3__*) ;
 scalar_t__ TRUE ;
 int UNLOCK_PVH (int) ;
 int assert (int) ;
 char ept_refmod_to_physmap (char) ;
 scalar_t__ is_ept_pmap (TYPE_4__*) ;
 TYPE_4__* kernel_pmap ;
 TYPE_2__* pai_to_pvh (int) ;
 int panic (char*,scalar_t__,int,unsigned int,void*) ;
 scalar_t__ physmap_refmod_to_ept (int) ;
 int pmap_ept_support_ad ;
 int pmap_intr_assert () ;
 int pmap_ledger_credit (TYPE_4__*,int ,scalar_t__) ;
 int pmap_ledger_debit (TYPE_4__*,int ,scalar_t__) ;
 char* pmap_phys_attributes ;
 char* pmap_pte (TYPE_4__*,scalar_t__) ;
 int pmap_update_pte (char*,char,int ) ;
 int ppn_to_pai (scalar_t__) ;
 scalar_t__ queue_next (int *) ;
 TYPE_5__ task_ledgers ;
 scalar_t__ vm_page_fictitious_addr ;
 scalar_t__ vm_page_guard_addr ;

void
phys_attribute_clear(
 ppnum_t pn,
 int bits,
 unsigned int options,
 void *arg)
{
 pv_rooted_entry_t pv_h;
 pv_hashed_entry_t pv_e;
 pt_entry_t *pte = ((void*)0);
 int pai;
 pmap_t pmap;
 char attributes = 0;
 boolean_t is_internal, is_reusable, is_altacct, is_ept;
 int ept_bits_to_clear;
 boolean_t ept_keep_global_mod = FALSE;

 if ((bits & PHYS_MODIFIED) &&
     (options & PMAP_OPTIONS_NOFLUSH) &&
     arg == ((void*)0)) {
  panic("phys_attribute_clear(0x%x,0x%x,0x%x,%p): "
        "should not clear 'modified' without flushing TLBs\n",
        pn, bits, options, arg);
 }


 assert((bits & ~(PHYS_REFERENCED | PHYS_MODIFIED)) == 0);

 ept_bits_to_clear = (unsigned)physmap_refmod_to_ept(bits & (PHYS_MODIFIED | PHYS_REFERENCED));

 pmap_intr_assert();
 assert(pn != vm_page_fictitious_addr);
 if (pn == vm_page_guard_addr)
  return;

 pai = ppn_to_pai(pn);

 if (!IS_MANAGED_PAGE(pai)) {



  return;
 }

 PMAP_TRACE(PMAP_CODE(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_START, pn, bits);

 pv_h = pai_to_pvh(pai);

 LOCK_PVH(pai);







 if (pv_h->pmap != PMAP_NULL) {




  is_internal = IS_INTERNAL_PAGE(pai);
  is_reusable = IS_REUSABLE_PAGE(pai);

  pv_e = (pv_hashed_entry_t)pv_h;

  do {
   vm_map_offset_t va;
   char pte_bits;

   pmap = pv_e->pmap;
   is_ept = is_ept_pmap(pmap);
   is_altacct = IS_ALTACCT_PAGE(pai, pv_e);
   va = PVE_VA(pv_e);
   pte_bits = 0;

   if (bits) {
    pte = pmap_pte(pmap, va);

    pte_bits = (*pte & (PTE_REF(is_ept) | PTE_MOD(is_ept)));

    if (!is_ept) {
     attributes |= pte_bits;
    } else {
     attributes |= ept_refmod_to_physmap(pte_bits);
     if (!pmap_ept_support_ad && (pte_bits & INTEL_EPT_MOD)) {
      ept_keep_global_mod = TRUE;
     }
    }

    if (!is_ept) {
     pte_bits &= bits;
    } else {
     pte_bits &= ept_bits_to_clear;
    }
   }
   if (options & PMAP_OPTIONS_CLEAR_WRITE)
           pte_bits |= PTE_WRITE(is_ept);




   if (pte_bits) {
    pmap_update_pte(pte, pte_bits, 0);







    if (! (options & PMAP_OPTIONS_NOFLUSH)) {

     PMAP_UPDATE_TLBS(pmap,
        va,
        va + PAGE_SIZE);
    } else if (arg) {

     PMAP_UPDATE_TLBS_DELAYED(
      pmap,
      va,
      va + PAGE_SIZE,
      (pmap_flush_context *)arg);
    } else {

    }
   }


   if ((options & PMAP_OPTIONS_CLEAR_REUSABLE) &&
       is_reusable &&
       pmap != kernel_pmap) {

    assert(pmap->stats.reusable > 0);
    OSAddAtomic(-1, &pmap->stats.reusable);
    if (is_internal) {

     OSAddAtomic(+1, &pmap->stats.internal);
     PMAP_STATS_PEAK(pmap->stats.internal);
     assert(pmap->stats.internal > 0);
     if (is_altacct) {

     } else {
      pmap_ledger_credit(pmap,
           task_ledgers.internal,
           PAGE_SIZE);
      pmap_ledger_credit(
       pmap,
       task_ledgers.phys_footprint,
       PAGE_SIZE);
     }
    } else {

     OSAddAtomic(+1, &pmap->stats.external);
     PMAP_STATS_PEAK(pmap->stats.external);
     assert(pmap->stats.external > 0);
    }
   } else if ((options & PMAP_OPTIONS_SET_REUSABLE) &&
       !is_reusable &&
       pmap != kernel_pmap) {

    OSAddAtomic(+1, &pmap->stats.reusable);
    PMAP_STATS_PEAK(pmap->stats.reusable);
    assert(pmap->stats.reusable > 0);
    if (is_internal) {

     assert(pmap->stats.internal > 0);
     OSAddAtomic(-1, &pmap->stats.internal);
     if (is_altacct) {

     } else {
      pmap_ledger_debit(pmap,
          task_ledgers.internal,
          PAGE_SIZE);
      pmap_ledger_debit(
       pmap,
       task_ledgers.phys_footprint,
       PAGE_SIZE);
     }
    } else {

     assert(pmap->stats.external > 0);
     OSAddAtomic(-1, &pmap->stats.external);
    }
   }

   pv_e = (pv_hashed_entry_t)queue_next(&pv_e->qlink);

  } while (pv_e != (pv_hashed_entry_t)pv_h);
 }




 pmap_phys_attributes[pai] |= attributes;

 if (ept_keep_global_mod) {






  bits &= ~PHYS_MODIFIED;
 }
 pmap_phys_attributes[pai] &= ~(bits);


 if (options & PMAP_OPTIONS_CLEAR_REUSABLE) {
  pmap_phys_attributes[pai] &= ~PHYS_REUSABLE;
 } else if (options & PMAP_OPTIONS_SET_REUSABLE) {
  pmap_phys_attributes[pai] |= PHYS_REUSABLE;
 }

 UNLOCK_PVH(pai);

 PMAP_TRACE(PMAP_CODE(PMAP__ATTRIBUTE_CLEAR) | DBG_FUNC_END);
}
