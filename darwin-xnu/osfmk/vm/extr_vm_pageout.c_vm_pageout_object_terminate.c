
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ vm_object_offset_t ;
struct TYPE_22__ {int pageout; scalar_t__ ref_count; scalar_t__ paging_in_progress; scalar_t__ activity_in_progress; scalar_t__ resident_page_count; scalar_t__ vo_shadow_offset; int memq; struct TYPE_22__* shadow; } ;
struct TYPE_21__ {int vmp_private; int vmp_free_when_done; int vmp_dirty; int vmp_busy; scalar_t__ vmp_q_state; int vmp_wire_count; int vmp_overwriting; void* vmp_cleaning; void* vmp_absent; scalar_t__ vmp_reference; scalar_t__ vmp_precious; scalar_t__ vmp_offset; int vmp_laundry; } ;


 void* FALSE ;
 int PAGE_WAKEUP (TYPE_1__*) ;
 int PAGE_WAKEUP_DONE (TYPE_1__*) ;
 int SET_PAGE_DIRTY (TYPE_1__*,void*) ;
 int TRUE ;
 int VM_MEM_MODIFIED ;
 int VM_PAGE_FREE (TYPE_1__*) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 scalar_t__ VM_PAGE_IS_WIRED ;
 scalar_t__ VM_PAGE_NOT_ON_Q ;
 TYPE_1__* VM_PAGE_NULL ;
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ;
 int VM_PAGE_WIRED (TYPE_1__*) ;
 int VM_STAT_INCR (int ) ;
 int assert (int) ;
 int pmap_clear_modify (int ) ;
 int pmap_disconnect (int ) ;
 int reactivations ;
 int vm_object_activity_end (TYPE_2__*) ;
 int vm_object_lock (TYPE_2__*) ;
 int vm_object_unlock (TYPE_2__*) ;
 int vm_page_activate (TYPE_1__*) ;
 int vm_page_deactivate (TYPE_1__*) ;
 int vm_page_free (TYPE_1__*) ;
 int vm_page_lock_queues () ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,scalar_t__) ;
 int vm_page_queue_empty (int *) ;
 scalar_t__ vm_page_queue_first (int *) ;
 int vm_page_unlock_queues () ;
 int vm_page_unwire (TYPE_1__*,int ) ;
 int vm_pageout_throttle_up (TYPE_1__*) ;

void
vm_pageout_object_terminate(
 vm_object_t object)
{
 vm_object_t shadow_object;







 assert(object->pageout);
 shadow_object = object->shadow;
 vm_object_lock(shadow_object);

 while (!vm_page_queue_empty(&object->memq)) {
  vm_page_t p, m;
  vm_object_offset_t offset;

  p = (vm_page_t) vm_page_queue_first(&object->memq);

  assert(p->vmp_private);
  assert(p->vmp_free_when_done);
  p->vmp_free_when_done = FALSE;
  assert(!p->vmp_cleaning);
  assert(!p->vmp_laundry);

  offset = p->vmp_offset;
  VM_PAGE_FREE(p);
  p = VM_PAGE_NULL;

  m = vm_page_lookup(shadow_object,
   offset + object->vo_shadow_offset);

  if(m == VM_PAGE_NULL)
   continue;

  assert((m->vmp_dirty) || (m->vmp_precious) ||
    (m->vmp_busy && m->vmp_cleaning));





  vm_page_lock_queues();
  if (m->vmp_q_state == VM_PAGE_ON_PAGEOUT_Q)
   vm_pageout_throttle_up(m);
  if (m->vmp_free_when_done) {
   assert(m->vmp_busy);
   assert(m->vmp_q_state == VM_PAGE_IS_WIRED);
   assert(m->vmp_wire_count == 1);
   m->vmp_cleaning = FALSE;
   m->vmp_free_when_done = FALSE;
   if (pmap_disconnect(VM_PAGE_GET_PHYS_PAGE(m)) & VM_MEM_MODIFIED) {
    SET_PAGE_DIRTY(m, FALSE);
   } else {
    m->vmp_dirty = FALSE;
   }

   if (m->vmp_dirty) {
    vm_page_unwire(m, TRUE);
    VM_STAT_INCR(reactivations);
    PAGE_WAKEUP_DONE(m);
   } else {
           vm_page_free(m);
   }
   vm_page_unlock_queues();
   continue;
  }






  if ((m->vmp_q_state == VM_PAGE_NOT_ON_Q) && !m->vmp_private) {
   if (m->vmp_reference)
    vm_page_activate(m);
   else
    vm_page_deactivate(m);
  }
  if (m->vmp_overwriting) {



   if (m->vmp_busy) {
    pmap_clear_modify(VM_PAGE_GET_PHYS_PAGE(m));

    m->vmp_busy = FALSE;
    m->vmp_absent = FALSE;
   } else {





     assert(VM_PAGE_WIRED(m));
     vm_page_unwire(m, TRUE);
   }
   m->vmp_overwriting = FALSE;
  } else {
   m->vmp_dirty = FALSE;
  }
  m->vmp_cleaning = FALSE;




  PAGE_WAKEUP(m);
  vm_page_unlock_queues();
 }



 vm_object_activity_end(shadow_object);
 vm_object_unlock(shadow_object);

 assert(object->ref_count == 0);
 assert(object->paging_in_progress == 0);
 assert(object->activity_in_progress == 0);
 assert(object->resident_page_count == 0);
 return;
}
