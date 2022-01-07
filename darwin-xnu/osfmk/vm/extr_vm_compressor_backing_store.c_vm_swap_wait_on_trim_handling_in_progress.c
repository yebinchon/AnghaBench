
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int event_t ;


 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 scalar_t__ TRUE ;
 int assert_wait (int ,int ) ;
 scalar_t__ delayed_trim_handling_in_progress ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int thread_block (int ) ;
 int vm_swap_data_lock ;

__attribute__((used)) static void
vm_swap_wait_on_trim_handling_in_progress()
{
 while (delayed_trim_handling_in_progress == TRUE) {

  assert_wait((event_t) &delayed_trim_handling_in_progress, THREAD_UNINT);
  lck_mtx_unlock(&vm_swap_data_lock);

  thread_block(THREAD_CONTINUE_NULL);

  lck_mtx_lock(&vm_swap_data_lock);
 }
}
