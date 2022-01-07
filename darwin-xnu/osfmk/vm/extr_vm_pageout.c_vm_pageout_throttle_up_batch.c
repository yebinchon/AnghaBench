
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_pageout_queue {scalar_t__ pgo_laundry; scalar_t__ pgo_throttled; scalar_t__ pgo_draining; } ;
typedef int event_t ;


 void* FALSE ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ TRUE ;
 int VM_PAGEOUT_DEBUG (int ,int) ;
 int thread_wakeup (int ) ;
 int vm_page_queue_lock ;
 int vm_pageout_throttle_up_count ;

__attribute__((used)) static void
vm_pageout_throttle_up_batch(
 struct vm_pageout_queue *q,
 int batch_cnt)
{
       LCK_MTX_ASSERT(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);

       VM_PAGEOUT_DEBUG(vm_pageout_throttle_up_count, batch_cnt);

       q->pgo_laundry -= batch_cnt;

       if (q->pgo_throttled == TRUE) {
        q->pgo_throttled = FALSE;
        thread_wakeup((event_t) &q->pgo_laundry);
       }
       if (q->pgo_draining == TRUE && q->pgo_laundry == 0) {
        q->pgo_draining = FALSE;
        thread_wakeup((event_t) (&q->pgo_laundry+1));
       }
}
