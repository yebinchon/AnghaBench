
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ vm_map_address_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int pt_entry_t ;
typedef TYPE_3__* pmap_t ;
typedef int pmap_paddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_19__ {TYPE_1__* pt_cnt; } ;
struct TYPE_18__ {int phys_footprint; int internal_compressed; int alternate_accounting_compressed; int alternate_accounting; int internal; int wired_mem; int phys_mem; } ;
struct TYPE_16__ {int internal; int reusable; int external; int compressed; int wired_count; int resident_count; } ;
struct TYPE_17__ {int pmap_pid; char* pmap_procname; TYPE_2__ stats; int pmap_stats_assert; } ;
struct TYPE_15__ {int refcnt; } ;
typedef int SInt32 ;
typedef int SInt16 ;


 int ARM_PGBYTES ;
 int ARM_PTE_COMPRESSED_ALT ;
 scalar_t__ ARM_PTE_IS_COMPRESSED (int) ;
 int ARM_PTE_TYPE_FAULT ;
 size_t ARM_PT_DESC_INDEX (int*) ;
 scalar_t__ FALSE ;
 int FLUSH_PTE_RANGE_STRONG (int*,int*) ;
 int LOCK_PVH (int) ;
 int OSAddAtomic (int,int*) ;
 scalar_t__ OSAddAtomic16 (int,int *) ;
 int OSAddAtomic64 (int,int*) ;
 int PAGE_SIZE ;
 int PMAP_ASSERT_LOCKED (TYPE_3__*) ;
 int PMAP_OPTIONS_REMOVE ;
 int PMAP_STATS_ASSERTF (int,TYPE_3__*,char*,TYPE_3__*,int,int,...) ;
 scalar_t__ TRUE ;
 int UNLOCK_PVH (int) ;
 int WRITE_PTE_FAST (int*,int) ;
 int assert (int) ;
 TYPE_3__* kernel_pmap ;
 int machine_ptob (int) ;
 scalar_t__ pa_index (int ) ;
 int pa_valid (int ) ;
 int panic (char*,...) ;
 scalar_t__ pgtrace_enabled ;
 int pmap_ledger_debit (TYPE_3__*,int ,int ) ;
 int pmap_pgtrace_remove_clone (TYPE_3__*,int ,scalar_t__) ;
 int pmap_remove_pv (TYPE_3__*,int*,int,int*,int*,int*,int*) ;
 int pmap_stats_assert ;
 int printf (char*,int,char*,TYPE_3__*,int,int*,int*,int,int,int,int,int,int,int,int,int,int,int,int) ;
 scalar_t__ pte_is_wired (int) ;
 int pte_set_wired (int*,int ) ;
 int pte_to_pa (int) ;
 TYPE_5__* ptep_get_ptd (int*) ;
 scalar_t__ ptep_get_va (int*) ;
 TYPE_4__ task_ledgers ;

__attribute__((used)) static int
pmap_remove_range_options(
 pmap_t pmap,
 vm_map_address_t va,
 pt_entry_t *bpte,
 pt_entry_t *epte,
 uint32_t *rmv_cnt,
 int options)
{
 pt_entry_t *cpte;
 int num_removed, num_unwired;
 int num_pte_changed;
 int pai = 0;
 pmap_paddr_t pa;
 int num_external, num_internal, num_reusable;
 int num_alt_internal;
 uint64_t num_compressed, num_alt_compressed;

 PMAP_ASSERT_LOCKED(pmap);

 num_removed = 0;
 num_unwired = 0;
 num_pte_changed = 0;
 num_external = 0;
 num_internal = 0;
 num_reusable = 0;
 num_compressed = 0;
 num_alt_internal = 0;
 num_alt_compressed = 0;

 for (cpte = bpte; cpte < epte;
      cpte += PAGE_SIZE/ARM_PGBYTES, va += PAGE_SIZE) {
  pt_entry_t spte;
  boolean_t managed=FALSE;

  spte = *cpte;






  while (!managed) {
   if (pmap != kernel_pmap &&
       (options & PMAP_OPTIONS_REMOVE) &&
       (ARM_PTE_IS_COMPRESSED(spte))) {







    num_compressed++;
    if (spte & ARM_PTE_COMPRESSED_ALT) {

     num_alt_compressed++;
    }


    WRITE_PTE_FAST(cpte, ARM_PTE_TYPE_FAULT);





    if (OSAddAtomic16(-1, (SInt16 *) &(ptep_get_ptd(cpte)->pt_cnt[ARM_PT_DESC_INDEX(cpte)].refcnt)) <= 0)
     panic("pmap_remove_range_options: over-release of ptdp %p for pte %p\n", ptep_get_ptd(cpte), cpte);
    spte = *cpte;
   }






   pa = pte_to_pa(spte);
   if (!pa_valid(pa)) {
    break;
   }
   pai = (int)pa_index(pa);
   LOCK_PVH(pai);
   spte = *cpte;
   pa = pte_to_pa(spte);
   if (pai == (int)pa_index(pa)) {
    managed =TRUE;
    break;
   }
   UNLOCK_PVH(pai);
  }

  if (ARM_PTE_IS_COMPRESSED(*cpte)) {






   continue;
  }


  if (*cpte != ARM_PTE_TYPE_FAULT) {
   assert(!ARM_PTE_IS_COMPRESSED(*cpte));






   WRITE_PTE_FAST(cpte, ARM_PTE_TYPE_FAULT);
   num_pte_changed++;
  }

  if ((spte != ARM_PTE_TYPE_FAULT) &&
      (pmap != kernel_pmap)) {
   assert(!ARM_PTE_IS_COMPRESSED(spte));
   if (OSAddAtomic16(-1, (SInt16 *) &(ptep_get_ptd(cpte)->pt_cnt[ARM_PT_DESC_INDEX(cpte)].refcnt)) <= 0)
    panic("pmap_remove_range_options: over-release of ptdp %p for pte %p\n", ptep_get_ptd(cpte), cpte);
   if(rmv_cnt) (*rmv_cnt)++;
  }

  if (pte_is_wired(spte)) {
   pte_set_wired(cpte, 0);
   num_unwired++;
  }



  if (!managed)
   continue;





  pmap_remove_pv(pmap, cpte, pai, &num_internal, &num_alt_internal, &num_reusable, &num_external);

  UNLOCK_PVH(pai);
  num_removed++;
 }




 OSAddAtomic(-num_removed, (SInt32 *) &pmap->stats.resident_count);
 pmap_ledger_debit(pmap, task_ledgers.phys_mem, machine_ptob(num_removed));

 if (pmap != kernel_pmap) {
  PMAP_STATS_ASSERTF(pmap->stats.external >= num_external,
       pmap,
       "pmap=%p num_external=%d stats.external=%d",
       pmap, num_external, pmap->stats.external);
  PMAP_STATS_ASSERTF(pmap->stats.internal >= num_internal,
       pmap,
       "pmap=%p num_internal=%d stats.internal=%d num_reusable=%d stats.reusable=%d",
       pmap,
       num_internal, pmap->stats.internal,
       num_reusable, pmap->stats.reusable);
  PMAP_STATS_ASSERTF(pmap->stats.reusable >= num_reusable,
       pmap,
       "pmap=%p num_internal=%d stats.internal=%d num_reusable=%d stats.reusable=%d",
       pmap,
       num_internal, pmap->stats.internal,
       num_reusable, pmap->stats.reusable);
  PMAP_STATS_ASSERTF(pmap->stats.compressed >= num_compressed,
       pmap,
       "pmap=%p num_compressed=%lld num_alt_compressed=%lld stats.compressed=%lld",
       pmap, num_compressed, num_alt_compressed,
       pmap->stats.compressed);


  OSAddAtomic(-num_unwired, (SInt32 *) &pmap->stats.wired_count);
  if (num_external)
   OSAddAtomic(-num_external, &pmap->stats.external);
  if (num_internal)
   OSAddAtomic(-num_internal, &pmap->stats.internal);
  if (num_reusable)
   OSAddAtomic(-num_reusable, &pmap->stats.reusable);
  if (num_compressed)
   OSAddAtomic64(-num_compressed, &pmap->stats.compressed);

  pmap_ledger_debit(pmap, task_ledgers.wired_mem, machine_ptob(num_unwired));
  pmap_ledger_debit(pmap, task_ledgers.internal, machine_ptob(num_internal));
  pmap_ledger_debit(pmap, task_ledgers.alternate_accounting, machine_ptob(num_alt_internal));
  pmap_ledger_debit(pmap, task_ledgers.alternate_accounting_compressed, machine_ptob(num_alt_compressed));
  pmap_ledger_debit(pmap, task_ledgers.internal_compressed, machine_ptob(num_compressed));

  pmap_ledger_debit(pmap, task_ledgers.phys_footprint,
      machine_ptob((num_internal -
      num_alt_internal) +
            (num_compressed -
      num_alt_compressed)));
 }


 if (num_pte_changed > 0)
  FLUSH_PTE_RANGE_STRONG(bpte, epte);

 return num_pte_changed;
}
