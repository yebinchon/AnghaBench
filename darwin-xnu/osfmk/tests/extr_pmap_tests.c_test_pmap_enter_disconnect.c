
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_page_t ;
typedef int thread_t ;
typedef int ppnum_t ;
struct TYPE_3__ {int stop; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ pmap_test_thread_args ;
typedef int * pmap_t ;
typedef scalar_t__ kern_return_t ;
typedef int event_t ;


 int FALSE ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PMAP_TEST_VA ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int TRUE ;
 int VM_PAGE_GET_PHYS_PAGE (scalar_t__) ;
 scalar_t__ VM_PAGE_NULL ;
 int VM_PROT_NONE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int VM_WIMG_USE_DEFAULT ;
 int assert (int) ;
 int assert_wait (int ,int ) ;
 scalar_t__ kernel_thread_start (int ,TYPE_1__*,int *) ;
 int * pmap_create_wrapper () ;
 int pmap_destroy (int *) ;
 int pmap_disconnect_thread ;
 scalar_t__ pmap_enter (int *,scalar_t__,int ,int,int ,int ,int ) ;
 int pmap_remove (int *,scalar_t__,scalar_t__) ;
 int thread_block (int ) ;
 int thread_deallocate (int ) ;
 int vm_page_free (scalar_t__) ;
 scalar_t__ vm_page_grab () ;
 int vm_page_lock_queues () ;
 int vm_page_unlock_queues () ;

kern_return_t
test_pmap_enter_disconnect(unsigned int num_loops)
{
 kern_return_t kr = KERN_SUCCESS;
 thread_t disconnect_thread;
 pmap_t new_pmap = pmap_create_wrapper();
 if (new_pmap == ((void*)0))
  return KERN_FAILURE;
 vm_page_t m = vm_page_grab();
 if (m == VM_PAGE_NULL) {
  pmap_destroy(new_pmap);
  return KERN_FAILURE;
 }
 ppnum_t phys_page = VM_PAGE_GET_PHYS_PAGE(m);
 pmap_test_thread_args args = {new_pmap, FALSE, phys_page};
 kern_return_t res = kernel_thread_start(pmap_disconnect_thread, &args, &disconnect_thread);
 if (res) {
  pmap_destroy(new_pmap);
  vm_page_lock_queues();
  vm_page_free(m);
  vm_page_unlock_queues();
  return res;
 }
 thread_deallocate(disconnect_thread);

 while (num_loops-- != 0) {
  kr = pmap_enter(new_pmap, PMAP_TEST_VA, phys_page,
                  VM_PROT_READ | VM_PROT_WRITE, VM_PROT_NONE, VM_WIMG_USE_DEFAULT, FALSE);
  assert(kr == KERN_SUCCESS);
 }

 assert_wait((event_t)&args, THREAD_UNINT);
 args.stop = TRUE;
 thread_block(THREAD_CONTINUE_NULL);

 pmap_remove(new_pmap, PMAP_TEST_VA, PMAP_TEST_VA + PAGE_SIZE);
 vm_page_lock_queues();
 vm_page_free(m);
 vm_page_unlock_queues();
 pmap_destroy(new_pmap);
 return KERN_SUCCESS;
}
