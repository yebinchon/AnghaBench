
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct workqueue {scalar_t__ wq_constrained_threads_scheduled; scalar_t__ wq_nthreads; } ;
typedef void* proc_t ;


 int WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT ;
 int WQ_EXCEEDED_TOTAL_THREAD_LIMIT ;
 int WQ_FLAGS_AVAILABLE ;
 int kTaskWqExceededConstrainedThreadLimit ;
 int kTaskWqExceededTotalThreadLimit ;
 int kTaskWqFlagsAvailable ;
 struct workqueue* proc_get_wqptr (void*) ;
 int static_assert (int) ;
 scalar_t__ workq_lock_spin_is_acquired_kdp (struct workqueue*) ;
 scalar_t__ wq_max_constrained_threads ;
 scalar_t__ wq_max_threads ;

uint32_t
workqueue_get_pwq_state_kdp(void * v)
{
 static_assert((WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT << 17) ==
   kTaskWqExceededConstrainedThreadLimit);
 static_assert((WQ_EXCEEDED_TOTAL_THREAD_LIMIT << 17) ==
   kTaskWqExceededTotalThreadLimit);
 static_assert((WQ_FLAGS_AVAILABLE << 17) == kTaskWqFlagsAvailable);
 static_assert((WQ_FLAGS_AVAILABLE | WQ_EXCEEDED_TOTAL_THREAD_LIMIT |
    WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT) == 0x7);

 if (v == ((void*)0)) {
  return 0;
 }

 proc_t p = v;
 struct workqueue *wq = proc_get_wqptr(p);

 if (wq == ((void*)0) || workq_lock_spin_is_acquired_kdp(wq)) {
  return 0;
 }

 uint32_t pwq_state = WQ_FLAGS_AVAILABLE;

 if (wq->wq_constrained_threads_scheduled >= wq_max_constrained_threads) {
  pwq_state |= WQ_EXCEEDED_CONSTRAINED_THREAD_LIMIT;
 }

 if (wq->wq_nthreads >= wq_max_threads) {
  pwq_state |= WQ_EXCEEDED_TOTAL_THREAD_LIMIT;
 }

 return pwq_state;
}
