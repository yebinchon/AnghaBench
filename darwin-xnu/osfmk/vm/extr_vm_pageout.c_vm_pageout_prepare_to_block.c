
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vm_page_t ;
typedef int * vm_object_t ;


 int TRUE ;



 int thread_yield_internal (int) ;
 int vm_consider_waking_compactor_swapper () ;
 int vm_object_unlock (int *) ;
 int vm_page_free_list (int *,int ) ;
 int vm_page_lock_queues () ;
 int vm_page_unlock_queues () ;

__attribute__((used)) static void
vm_pageout_prepare_to_block(vm_object_t *object, int *delayed_unlock,
       vm_page_t *local_freeq, int *local_freed, int action)
{
 vm_page_unlock_queues();

 if (*object != ((void*)0)) {
  vm_object_unlock(*object);
  *object = ((void*)0);
 }
 if (*local_freeq) {

  vm_page_free_list(*local_freeq, TRUE);

  *local_freeq = ((void*)0);
  *local_freed = 0;
 }
 *delayed_unlock = 1;

 switch (action) {

 case 130:
  vm_consider_waking_compactor_swapper();
  break;
 case 128:
  thread_yield_internal(1);
  break;
 case 129:
 default:
  break;
 }
 vm_page_lock_queues();
}
