
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int vm_tag_t ;
typedef TYPE_2__* vm_page_t ;
typedef int vm_object_t ;
struct vm_page_delayed_work {int dw_mask; TYPE_2__* dw_m; } ;
typedef void* boolean_t ;
struct TYPE_20__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_21__ {scalar_t__ vmp_q_state; void* vmp_busy; void* vmp_reference; struct TYPE_21__* vmp_snext; TYPE_1__ vmp_pageq; } ;


 int DW_PAGE_WAKEUP ;
 int DW_VM_PAGE_QUEUES_REMOVE ;
 int DW_clear_busy ;
 int DW_clear_reference ;
 int DW_enqueue_cleaned ;
 int DW_move_page ;
 int DW_set_reference ;
 int DW_vm_page_activate ;
 int DW_vm_page_deactivate_internal ;
 int DW_vm_page_free ;
 int DW_vm_page_lru ;
 int DW_vm_page_speculate ;
 int DW_vm_page_unwire ;
 int DW_vm_page_wire ;
 int DW_vm_pageout_throttle_up ;
 int DW_vm_phantom_cache_update ;
 void* FALSE ;
 int PAGE_WAKEUP (TYPE_2__*) ;
 void* TRUE ;
 int VM_CHECK_MEMORYSTATUS ;
 int VM_MEM_REFERENCED ;
 int VM_PAGEOUT_DEBUG (int ,int) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_2__*) ;
 TYPE_2__* VM_PAGE_NULL ;
 scalar_t__ VM_PAGE_OBJECT (TYPE_2__*) ;
 scalar_t__ VM_PAGE_ON_ACTIVE_Q ;
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ;
 scalar_t__ _vm_object_lock_try (int ) ;
 int assert (int) ;
 scalar_t__ kernel_object ;
 int mutex_pause (int) ;
 int pmap_disconnect (int ) ;
 int vm_object_lock_avoid (int ) ;
 int vm_object_unlock (int ) ;
 int vm_page_activate (TYPE_2__*) ;
 int vm_page_deactivate_internal (TYPE_2__*,void*) ;
 int vm_page_enqueue_cleaned (TYPE_2__*) ;
 int vm_page_enqueue_inactive (TYPE_2__*,void*) ;
 int vm_page_free_list (TYPE_2__*,void*) ;
 int vm_page_free_prepare_queues (TYPE_2__*) ;
 int vm_page_lockspin_queues () ;
 int vm_page_lru (TYPE_2__*) ;
 int vm_page_queues_remove (TYPE_2__*,void*) ;
 int vm_page_speculate (TYPE_2__*,void*) ;
 int vm_page_trylockspin_queues () ;
 int vm_page_unlock_queues () ;
 int vm_page_unwire (TYPE_2__*,void*) ;
 int vm_page_wire (TYPE_2__*,int ,void*) ;
 int vm_pageout_cleaned_reactivated ;
 int vm_pageout_enqueued_cleaned ;
 int vm_pageout_throttle_up (TYPE_2__*) ;
 int vm_phantom_cache_update (TYPE_2__*) ;

void
vm_page_do_delayed_work(
 vm_object_t object,
 vm_tag_t tag,
 struct vm_page_delayed_work *dwp,
 int dw_count)
{
 int j;
 vm_page_t m;
        vm_page_t local_free_q = VM_PAGE_NULL;
 if (!vm_page_trylockspin_queues()) {
  vm_object_unlock(object);

  vm_page_lockspin_queues();

  for (j = 0; ; j++) {
   if (!vm_object_lock_avoid(object) &&
       _vm_object_lock_try(object))
    break;
   vm_page_unlock_queues();
   mutex_pause(j);
   vm_page_lockspin_queues();
  }
 }
 for (j = 0; j < dw_count; j++, dwp++) {

  m = dwp->dw_m;

  if (dwp->dw_mask & DW_vm_pageout_throttle_up)
   vm_pageout_throttle_up(m);




  if (dwp->dw_mask & DW_vm_page_wire)
   vm_page_wire(m, tag, FALSE);
  else if (dwp->dw_mask & DW_vm_page_unwire) {
   boolean_t queueit;

   queueit = (dwp->dw_mask & (DW_vm_page_free | DW_vm_page_deactivate_internal)) ? FALSE : TRUE;

   vm_page_unwire(m, queueit);
  }
  if (dwp->dw_mask & DW_vm_page_free) {
   vm_page_free_prepare_queues(m);

   assert(m->vmp_pageq.next == 0 && m->vmp_pageq.prev == 0);




   m->vmp_snext = local_free_q;
   local_free_q = m;
  } else {
   if (dwp->dw_mask & DW_vm_page_deactivate_internal)
    vm_page_deactivate_internal(m, FALSE);
   else if (dwp->dw_mask & DW_vm_page_activate) {
    if (m->vmp_q_state != VM_PAGE_ON_ACTIVE_Q) {
     vm_page_activate(m);
    }
   }
   else if (dwp->dw_mask & DW_vm_page_speculate)
    vm_page_speculate(m, TRUE);
   else if (dwp->dw_mask & DW_enqueue_cleaned) {







    int refmod_state = pmap_disconnect(VM_PAGE_GET_PHYS_PAGE(m));

    if ((refmod_state & VM_MEM_REFERENCED)) {




            VM_PAGEOUT_DEBUG(vm_pageout_enqueued_cleaned, 1);
     VM_PAGEOUT_DEBUG(vm_pageout_cleaned_reactivated, 1);

     if (m->vmp_q_state != VM_PAGE_ON_ACTIVE_Q)
      vm_page_activate(m);
    } else {
     m->vmp_reference = FALSE;
     vm_page_enqueue_cleaned(m);
    }
   }
   else if (dwp->dw_mask & DW_vm_page_lru)
    vm_page_lru(m);
   else if (dwp->dw_mask & DW_VM_PAGE_QUEUES_REMOVE) {
    if (m->vmp_q_state != VM_PAGE_ON_PAGEOUT_Q)
     vm_page_queues_remove(m, TRUE);
   }
   if (dwp->dw_mask & DW_set_reference)
    m->vmp_reference = TRUE;
   else if (dwp->dw_mask & DW_clear_reference)
    m->vmp_reference = FALSE;

   if (dwp->dw_mask & DW_move_page) {
    if (m->vmp_q_state != VM_PAGE_ON_PAGEOUT_Q) {
     vm_page_queues_remove(m, FALSE);

     assert(VM_PAGE_OBJECT(m) != kernel_object);

     vm_page_enqueue_inactive(m, FALSE);
    }
   }
   if (dwp->dw_mask & DW_clear_busy)
    m->vmp_busy = FALSE;

   if (dwp->dw_mask & DW_PAGE_WAKEUP)
    PAGE_WAKEUP(m);
  }
 }
 vm_page_unlock_queues();

 if (local_free_q)
  vm_page_free_list(local_free_q, TRUE);

 VM_CHECK_MEMORYSTATUS;

}
