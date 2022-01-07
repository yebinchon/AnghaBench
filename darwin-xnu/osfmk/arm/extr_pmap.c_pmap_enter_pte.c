
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_3__* vm_map_address_t ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
struct TYPE_20__ {TYPE_1__* pt_cnt; } ;
struct TYPE_19__ {int wired_mem; } ;
struct TYPE_17__ {int wired_count; } ;
struct TYPE_18__ {TYPE_2__ stats; } ;
struct TYPE_16__ {int wiredcnt; } ;
typedef int SInt32 ;
typedef int SInt16 ;


 int ARM_PTE_IS_COMPRESSED (int) ;
 int ARM_PTE_TYPE_FAULT ;
 int ARM_PTE_WIRED ;
 size_t ARM_PT_DESC_INDEX (int*) ;
 int ISB_SY ;
 int OSAddAtomic (int,int *) ;
 int OSAddAtomic16 (int,int *) ;
 int PAGE_SIZE ;
 int PMAP_CODE (int ) ;
 int PMAP_TRACE (int,int ,int ,int ,int ,int) ;
 int PMAP_UPDATE_TLBS (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;
 int PMAP__TTE ;
 int VM_KERNEL_ADDRHIDE (TYPE_3__*) ;
 int WRITE_PTE (int*,int) ;
 int WRITE_PTE_STRONG (int*,int) ;
 int __builtin_arm_isb (int ) ;
 TYPE_3__* kernel_pmap ;
 int pmap_ledger_credit (TYPE_3__*,int ,int) ;
 int pmap_ledger_debit (TYPE_3__*,int ,int) ;
 TYPE_6__* ptep_get_ptd (int*) ;
 TYPE_5__ task_ledgers ;

__attribute__((used)) static inline void pmap_enter_pte(pmap_t pmap, pt_entry_t *pte_p, pt_entry_t pte, vm_map_address_t v)
{
 if (pmap != kernel_pmap && ((pte & ARM_PTE_WIRED) != (*pte_p & ARM_PTE_WIRED)))
 {
  SInt16 *ptd_wiredcnt_ptr = (SInt16 *)&(ptep_get_ptd(pte_p)->pt_cnt[ARM_PT_DESC_INDEX(pte_p)].wiredcnt);
  if (pte & ARM_PTE_WIRED) {
   OSAddAtomic16(1, ptd_wiredcnt_ptr);
   pmap_ledger_credit(pmap, task_ledgers.wired_mem, PAGE_SIZE);
   OSAddAtomic(1, (SInt32 *) &pmap->stats.wired_count);
  } else {
   OSAddAtomic16(-1, ptd_wiredcnt_ptr);
   pmap_ledger_debit(pmap, task_ledgers.wired_mem, PAGE_SIZE);
   OSAddAtomic(-1, (SInt32 *) &pmap->stats.wired_count);
  }
 }
 if (*pte_p != ARM_PTE_TYPE_FAULT &&
     !ARM_PTE_IS_COMPRESSED(*pte_p)) {
  WRITE_PTE_STRONG(pte_p, pte);
  PMAP_UPDATE_TLBS(pmap, v, v + PAGE_SIZE);
 } else {
  WRITE_PTE(pte_p, pte);
  __builtin_arm_isb(ISB_SY);
 }

 PMAP_TRACE(3, PMAP_CODE(PMAP__TTE), VM_KERNEL_ADDRHIDE(pmap), VM_KERNEL_ADDRHIDE(v), VM_KERNEL_ADDRHIDE(v + PAGE_SIZE), pte);
}
