
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_continue_t ;
typedef int event_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int THREAD_UNINT ;
 scalar_t__ TRUE ;
 int assert_wait (int ,int ) ;
 scalar_t__ consider_buffer_cache_collect (int ) ;
 int consider_machine_adjust () ;
 int consider_machine_collect () ;
 int consider_zone_gc (scalar_t__) ;
 scalar_t__ is_zone_map_nearing_exhaustion () ;
 int mbuf_drain (scalar_t__) ;
 int stack_collect () ;
 scalar_t__ stub1 (int ) ;
 int thread_block_parameter (int ,void*) ;
 scalar_t__ vm_page_free_count ;
 scalar_t__ vm_page_free_target ;

void
vm_pageout_garbage_collect(int collect)
{
 if (collect) {
  if (is_zone_map_nearing_exhaustion()) {
   consider_zone_gc(TRUE);

  } else {

   boolean_t buf_large_zfree = FALSE;
   boolean_t first_try = TRUE;

   stack_collect();

   consider_machine_collect();
   mbuf_drain(FALSE);

   do {
    if (consider_buffer_cache_collect != ((void*)0)) {
     buf_large_zfree = (*consider_buffer_cache_collect)(0);
    }
    if (first_try == TRUE || buf_large_zfree == TRUE) {




     consider_zone_gc(FALSE);
    }
    first_try = FALSE;

   } while (buf_large_zfree == TRUE && vm_page_free_count < vm_page_free_target);

   consider_machine_adjust();
  }
 }

 assert_wait((event_t) &vm_pageout_garbage_collect, THREAD_UNINT);

 thread_block_parameter((thread_continue_t) vm_pageout_garbage_collect, (void *)1);

}
