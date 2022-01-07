
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int vm_map_address_t ;
typedef int uint32_t ;
typedef int tt_entry_t ;
typedef int queue_t ;
typedef int queue_entry_t ;
typedef int pt_entry_t ;
struct TYPE_17__ {TYPE_2__* pt_cnt; TYPE_1__* pt_map; TYPE_4__* pmap; } ;
typedef TYPE_3__ pt_desc_t ;
typedef TYPE_4__* pmap_t ;
typedef int pmap_paddr_t ;
struct TYPE_19__ {struct TYPE_19__* next; } ;
typedef TYPE_5__ page_free_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_18__ {scalar_t__ nested; int asid; int lock; } ;
struct TYPE_16__ {scalar_t__ refcnt; scalar_t__ wiredcnt; } ;
struct TYPE_15__ {int va; } ;


 size_t ARM_PT_DESC_INDEX (int *) ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TT_L1_PT_OFFMASK ;
 int ARM_TT_L1_SIZE ;
 int ARM_TT_L2_OFFMASK ;
 int ARM_TT_L2_SIZE ;
 scalar_t__ FALSE ;
 int PAGE_SIZE ;
 int PMAP_ASSERT_LOCKED (TYPE_4__*) ;
 int PMAP_OPTIONS_REMOVE ;
 int PMAP_TT_L1_LEVEL ;
 int PMAP_TT_L2_LEVEL ;
 int PMAP_UNLOCK (TYPE_4__*) ;
 scalar_t__ PT_DESC_REFCOUNT ;
 unsigned int PT_INDEX_MAX ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int flush_mmu_tlb_entry_async (int) ;
 int flush_mmu_tlb_region_asid_async (int,int,TYPE_4__*) ;
 TYPE_4__* kernel_pmap ;
 scalar_t__ ml_static_vtop (int) ;
 int panic (char*,...) ;
 int pmap_pages_lock ;
 TYPE_5__* pmap_pages_reclaim_list ;
 int pmap_pages_request_acum ;
 int pmap_pages_request_count ;
 scalar_t__ pmap_remove_range_options (TYPE_4__*,int,int *,int *,int *,int ) ;
 int pmap_simple_lock (int *) ;
 scalar_t__ pmap_simple_lock_try (int *) ;
 int pmap_simple_unlock (int *) ;
 int* pmap_tte (TYPE_4__*,int) ;
 int pmap_tte_deallocate (TYPE_4__*,int*,int ) ;
 int pt_page_list ;
 int pt_pages_lock ;
 size_t ptenum (int) ;
 int queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int ) ;
 int sync_tlb_flush () ;
 int tlbi_addr (int) ;
 int tlbi_asid (int) ;
 size_t tt3_index (TYPE_4__*,int) ;
 scalar_t__ ttetokv (int) ;

pmap_paddr_t
pmap_pages_reclaim(
 void)
{
 boolean_t found_page;
 unsigned i;
 pt_desc_t *ptdp;
 pmap_simple_lock(&pmap_pages_lock);
 pmap_pages_request_count++;
 pmap_pages_request_acum++;

 while (1) {

  if (pmap_pages_reclaim_list != (page_free_entry_t *)((void*)0)) {
   page_free_entry_t *page_entry;

   page_entry = pmap_pages_reclaim_list;
   pmap_pages_reclaim_list = pmap_pages_reclaim_list->next;
   pmap_simple_unlock(&pmap_pages_lock);

   return((pmap_paddr_t)ml_static_vtop((vm_offset_t)page_entry));
  }

  pmap_simple_unlock(&pmap_pages_lock);

  pmap_simple_lock(&pt_pages_lock);
  ptdp = (pt_desc_t *)queue_first(&pt_page_list);
  found_page = FALSE;

  while (!queue_end(&pt_page_list, (queue_entry_t)ptdp)) {
   if ((ptdp->pmap->nested == FALSE)
       && (pmap_simple_lock_try(&ptdp->pmap->lock))) {

    assert(ptdp->pmap != kernel_pmap);
    unsigned refcnt_acc = 0;
    unsigned wiredcnt_acc = 0;

    for (i = 0 ; i < PT_INDEX_MAX ; i++) {
     if (ptdp->pt_cnt[i].refcnt == PT_DESC_REFCOUNT) {

      refcnt_acc = 0;
      break;
     }
     refcnt_acc += ptdp->pt_cnt[i].refcnt;
     wiredcnt_acc += ptdp->pt_cnt[i].wiredcnt;
    }
    if ((wiredcnt_acc == 0) && (refcnt_acc != 0)) {
     found_page = TRUE;



     break;
    }
    pmap_simple_unlock(&ptdp->pmap->lock);
   }
   ptdp = (pt_desc_t *)queue_next((queue_t)ptdp);
  }
  if (!found_page) {
   panic("pmap_pages_reclaim(): No eligible page in pt_page_list\n");
  } else {
   int remove_count = 0;
   vm_map_address_t va;
   pmap_t pmap;
   pt_entry_t *bpte, *epte;
   pt_entry_t *pte_p;
   tt_entry_t *tte_p;
   uint32_t rmv_spte=0;

   pmap_simple_unlock(&pt_pages_lock);
   pmap = ptdp->pmap;
   PMAP_ASSERT_LOCKED(pmap);
   for (i = 0 ; i < PT_INDEX_MAX ; i++) {
    va = ptdp->pt_map[i].va;




    if (va == (vm_offset_t)-1)
     continue;

    tte_p = pmap_tte(pmap, va);
    if ((tte_p != (tt_entry_t *) ((void*)0))
        && ((*tte_p & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE)) {






     pte_p = (pt_entry_t *) ttetokv(*tte_p);
     bpte = &pte_p[tt3_index(pmap, va)];
     epte = bpte + PAGE_SIZE/sizeof(pt_entry_t);
     remove_count += pmap_remove_range_options(
      pmap, va, bpte, epte,
      &rmv_spte, PMAP_OPTIONS_REMOVE);
     if (ptdp->pt_cnt[ARM_PT_DESC_INDEX(pte_p)].refcnt != 0)
      panic("pmap_pages_reclaim(): ptdp %p, count %d\n", ptdp, ptdp->pt_cnt[ARM_PT_DESC_INDEX(pte_p)].refcnt);







     pmap_tte_deallocate(pmap, tte_p, PMAP_TT_L2_LEVEL);
     flush_mmu_tlb_entry_async(tlbi_addr(va & ~ARM_TT_L2_OFFMASK) | tlbi_asid(pmap->asid));


     if (remove_count > 0) {



      flush_mmu_tlb_region_asid_async(va, ARM_TT_L2_SIZE, pmap);

     }
    }
   }
   sync_tlb_flush();

   PMAP_UNLOCK(pmap);
  }
  pmap_simple_lock(&pmap_pages_lock);
 }
}
