
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ kern_return_t ;
typedef int event_t ;


 scalar_t__ KERN_OPERATION_TIMED_OUT ;
 scalar_t__ KERN_SUCCESS ;
 int LCK_SLEEP_DEFAULT ;
 scalar_t__ THREAD_AWAKENED ;
 int THREAD_UNINT ;
 int TRUE ;
 int lck_mtx_lock (int *) ;
 scalar_t__ lck_mtx_sleep_deadline (int *,int ,int ,int ,int ) ;
 int lck_mtx_unlock (int *) ;
 int vm_page_queue_free_lock ;
 scalar_t__ vm_pageout_running ;
 int vm_pageout_waiter ;

kern_return_t
vm_pageout_wait(uint64_t deadline)
{
 kern_return_t kr;

 lck_mtx_lock(&vm_page_queue_free_lock);
 for (kr = KERN_SUCCESS; vm_pageout_running && (KERN_SUCCESS == kr); ) {
  vm_pageout_waiter = TRUE;
  if (THREAD_AWAKENED != lck_mtx_sleep_deadline(
    &vm_page_queue_free_lock, LCK_SLEEP_DEFAULT,
    (event_t) &vm_pageout_waiter, THREAD_UNINT, deadline)) {
   kr = KERN_OPERATION_TIMED_OUT;
  }
 }
 lck_mtx_unlock(&vm_page_queue_free_lock);

 return (kr);
}
