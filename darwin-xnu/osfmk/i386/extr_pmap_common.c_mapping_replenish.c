
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* queue_entry_t ;
typedef TYPE_2__* pv_hashed_entry_t ;
struct TYPE_11__ {int options; } ;
struct TYPE_9__ {void* next; } ;
struct TYPE_10__ {TYPE_1__ qlink; } ;


 TYPE_2__* PV_HASHED_ENTRY_NULL ;
 int PV_HASHED_FREE_LIST (TYPE_2__*,TYPE_2__*,int) ;
 int PV_HASHED_KERN_FREE_LIST (TYPE_2__*,TYPE_2__*,int) ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int TH_OPT_VMPRIV ;
 int assert_wait (int *,int ) ;
 TYPE_3__* current_thread () ;
 int mapping_replenish_event ;
 scalar_t__ mappingrecurse ;
 int pmap_kernel_reserve_replenish_stat ;
 int pmap_mapping_thread_wakeups ;
 scalar_t__ pmap_pv_throttled_waiters ;
 int pmap_user_pv_throttle_event ;
 int pmap_user_reserve_replenish_stat ;
 unsigned int pv_hashed_alloc_chunk ;
 scalar_t__ pv_hashed_free_count ;
 unsigned int pv_hashed_kern_alloc_chunk ;
 scalar_t__ pv_hashed_kern_free_count ;
 scalar_t__ pv_hashed_kern_low_water_mark ;
 int pv_hashed_list_zone ;
 scalar_t__ pv_hashed_low_water_mark ;
 int thread_block (int ) ;
 int thread_wakeup (int *) ;
 scalar_t__ zalloc (int ) ;

__attribute__((noreturn))
void
mapping_replenish(void)
{
 pv_hashed_entry_t pvh_e;
 pv_hashed_entry_t pvh_eh;
 pv_hashed_entry_t pvh_et;
 int pv_cnt;
 unsigned i;


 current_thread()->options |= TH_OPT_VMPRIV;

 for (;;) {

  while (pv_hashed_kern_free_count < pv_hashed_kern_low_water_mark) {
   pv_cnt = 0;
   pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;

   for (i = 0; i < pv_hashed_kern_alloc_chunk; i++) {
    pvh_e = (pv_hashed_entry_t) zalloc(pv_hashed_list_zone);
    pvh_e->qlink.next = (queue_entry_t)pvh_eh;
    pvh_eh = pvh_e;

    if (pvh_et == PV_HASHED_ENTRY_NULL)
     pvh_et = pvh_e;
    pv_cnt++;
   }
   pmap_kernel_reserve_replenish_stat += pv_cnt;
   PV_HASHED_KERN_FREE_LIST(pvh_eh, pvh_et, pv_cnt);
  }

  pv_cnt = 0;
  pvh_eh = pvh_et = PV_HASHED_ENTRY_NULL;

  if (pv_hashed_free_count < pv_hashed_low_water_mark) {
   for (i = 0; i < pv_hashed_alloc_chunk; i++) {
    pvh_e = (pv_hashed_entry_t) zalloc(pv_hashed_list_zone);

    pvh_e->qlink.next = (queue_entry_t)pvh_eh;
    pvh_eh = pvh_e;

    if (pvh_et == PV_HASHED_ENTRY_NULL)
     pvh_et = pvh_e;
    pv_cnt++;
   }
   pmap_user_reserve_replenish_stat += pv_cnt;
   PV_HASHED_FREE_LIST(pvh_eh, pvh_et, pv_cnt);
  }


  if (pmap_pv_throttled_waiters) {
   pmap_pv_throttled_waiters = 0;
   thread_wakeup(&pmap_user_pv_throttle_event);
  }



  if (pv_hashed_kern_free_count < pv_hashed_kern_low_water_mark)
   continue;

  assert_wait(&mapping_replenish_event, THREAD_UNINT);
  mappingrecurse = 0;
  thread_block(THREAD_CONTINUE_NULL);
  pmap_mapping_thread_wakeups++;
 }
}
