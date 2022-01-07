
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_8__ {int * prev; int * next; } ;
struct TYPE_11__ {TYPE_3__* pt_cnt; TYPE_2__* pt_map; int * pmap; TYPE_1__ pt_page; } ;
typedef TYPE_4__ pt_desc_t ;
typedef int pmap_paddr_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_10__ {scalar_t__ wiredcnt; scalar_t__ refcnt; } ;
struct TYPE_9__ {scalar_t__ va; } ;


 int ARM_PGBYTES ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 int PMAP_PAGES_ALLOCATE_NOWAIT ;
 int PMAP_PAGES_RECLAIM_NOWAIT ;
 TYPE_4__* PTD_ENTRY_NULL ;
 unsigned int PT_INDEX_MAX ;
 int assert (int) ;
 scalar_t__ avail_start ;
 int panic (char*) ;
 scalar_t__ phystokv (int ) ;
 scalar_t__ pmap_pages_alloc (int *,int,int ) ;
 int pmap_simple_lock (int *) ;
 int pmap_simple_unlock (int *) ;
 scalar_t__ ptd_free_count ;
 TYPE_4__* ptd_free_list ;
 int ptd_free_list_lock ;
 scalar_t__ ptd_preboot ;

__attribute__((used)) static pt_desc_t
*ptd_alloc_unlinked(void)
{
 pt_desc_t *ptdp;
 unsigned i;

 if (!ptd_preboot)
  pmap_simple_lock(&ptd_free_list_lock);

 if (ptd_free_count == 0) {
  unsigned int ptd_cnt;
  pt_desc_t *ptdp_next;

  if (ptd_preboot) {
   ptdp = (pt_desc_t *)avail_start;
   avail_start += ARM_PGBYTES;
   ptdp_next = ptdp;
   ptd_cnt = ARM_PGBYTES/sizeof(pt_desc_t);
  } else {
   pmap_paddr_t pa;
   kern_return_t ret;

   pmap_simple_unlock(&ptd_free_list_lock);

   if (pmap_pages_alloc(&pa, PAGE_SIZE, PMAP_PAGES_ALLOCATE_NOWAIT) != KERN_SUCCESS) {
    ret = pmap_pages_alloc(&pa, PAGE_SIZE, PMAP_PAGES_RECLAIM_NOWAIT);
      assert(ret == KERN_SUCCESS);
   }
   ptdp = (pt_desc_t *)phystokv(pa);

   pmap_simple_lock(&ptd_free_list_lock);
   ptdp_next = ptdp;
   ptd_cnt = PAGE_SIZE/sizeof(pt_desc_t);
  }

  while (ptd_cnt != 0) {
   (*(void **)ptdp_next) = (void *)ptd_free_list;
   ptd_free_list = ptdp_next;
   ptdp_next++;
   ptd_cnt--;
   ptd_free_count++;
  }
 }

 if ((ptdp = ptd_free_list) != PTD_ENTRY_NULL) {
  ptd_free_list = (pt_desc_t *)(*(void **)ptdp);
  ptd_free_count--;
 } else {
  panic("out of ptd entry\n");
 }

 if (!ptd_preboot)
  pmap_simple_unlock(&ptd_free_list_lock);

 ptdp->pt_page.next = ((void*)0);
 ptdp->pt_page.prev = ((void*)0);
 ptdp->pmap = ((void*)0);

 for (i = 0 ; i < PT_INDEX_MAX ; i++) {
  ptdp->pt_map[i].va = (vm_offset_t)-1;
  ptdp->pt_cnt[i].refcnt = 0;
  ptdp->pt_cnt[i].wiredcnt = 0;
 }

 return(ptdp);
}
