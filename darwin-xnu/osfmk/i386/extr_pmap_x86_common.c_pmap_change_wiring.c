
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vm_map_offset_t ;
typedef int pt_entry_t ;
typedef TYPE_2__* pmap_t ;
typedef int boolean_t ;
struct TYPE_13__ {int wired_mem; } ;
struct TYPE_11__ {int wired_count; } ;
struct TYPE_12__ {TYPE_1__ stats; } ;


 int OSAddAtomic (int,int*) ;
 int PAGE_SIZE ;
 int PMAP_LOCK (TYPE_2__*) ;
 int PMAP_UNLOCK (TYPE_2__*) ;
 int PTE_WIRED ;
 int * PT_ENTRY_NULL ;
 int assert (int) ;
 scalar_t__ iswired (int ) ;
 int panic (char*,TYPE_2__*,int ,int ) ;
 int pmap_ledger_credit (TYPE_2__*,int ,int ) ;
 int pmap_ledger_debit (TYPE_2__*,int ,int ) ;
 int * pmap_pte (TYPE_2__*,int ) ;
 int pmap_update_pte (int *,int ,int ) ;
 TYPE_3__ task_ledgers ;

void
pmap_change_wiring(
 pmap_t map,
 vm_map_offset_t vaddr,
 boolean_t wired)
{
 pt_entry_t *pte;

 PMAP_LOCK(map);

 if ((pte = pmap_pte(map, vaddr)) == PT_ENTRY_NULL)
  panic("pmap_change_wiring(%p,0x%llx,%d): pte missing",
        map, vaddr, wired);

 if (wired && !iswired(*pte)) {



  pmap_ledger_credit(map, task_ledgers.wired_mem, PAGE_SIZE);
  OSAddAtomic(+1, &map->stats.wired_count);
  pmap_update_pte(pte, 0, PTE_WIRED);
 }
 else if (!wired && iswired(*pte)) {



  assert(map->stats.wired_count >= 1);
  OSAddAtomic(-1, &map->stats.wired_count);
  pmap_ledger_debit(map, task_ledgers.wired_mem, PAGE_SIZE);
  pmap_update_pte(pte, PTE_WIRED, 0);
 }

 PMAP_UNLOCK(map);
}
