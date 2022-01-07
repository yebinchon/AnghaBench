
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_2__* vm_page_t ;
typedef int vm_page_queue_entry_t ;
typedef TYPE_3__* vm_object_t ;
typedef int pmap_flush_context ;
typedef void* boolean_t ;
struct TYPE_21__ {int internal; int alive; int memq; } ;
struct TYPE_19__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_20__ {void* vmp_pmapped; struct TYPE_20__* vmp_snext; TYPE_1__ vmp_pageq; scalar_t__ vmp_laundry; void* vmp_free_when_done; int vmp_error; int vmp_precious; int vmp_dirty; int vmp_wpmapped; int vmp_fictitious; int vmp_private; int vmp_absent; scalar_t__ vmp_busy; scalar_t__ vmp_cleaning; int vmp_listq; } ;


 int BATCH_LIMIT (int ) ;
 void* FALSE ;
 int PAGE_SLEEP (TYPE_3__*,TYPE_2__*,int ) ;
 int PMAP_OPTIONS_NOFLUSH ;
 int PMAP_OPTIONS_NOREFMOD ;




 int THREAD_UNINT ;
 void* TRUE ;
 int VM_OBJ_REAP_FREELIST (TYPE_2__*,void*) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_2__*) ;
 TYPE_2__* VM_PAGE_NULL ;
 int VM_PAGE_OBJECT (TYPE_2__*) ;
 int VM_PAGE_PAGEABLE (TYPE_2__*) ;
 int VM_PAGE_WIRED (TYPE_2__*) ;
 int V_O_R_MAX_BATCH ;
 int assert (int) ;
 int kernel_object ;
 int mutex_pause (int ) ;
 int pmap_disconnect_options (int ,int,void*) ;
 int pmap_flush (int *) ;
 int pmap_flush_context_init (int *) ;
 int pmap_is_modified (int ) ;
 int vm_object_paging_wait (TYPE_3__*,int ) ;
 int vm_page_deactivate (TYPE_2__*) ;
 int vm_page_free_prepare_queues (TYPE_2__*) ;
 int vm_page_guard_addr ;
 int vm_page_lockspin_queues () ;
 int vm_page_purged_busy ;
 int vm_page_purged_count ;
 int vm_page_purged_others ;
 int vm_page_purged_wired ;
 scalar_t__ vm_page_queue_empty (int *) ;
 int vm_page_queue_end (int *,int ) ;
 scalar_t__ vm_page_queue_first (int *) ;
 scalar_t__ vm_page_queue_next (int *) ;
 int vm_page_queues_remove (TYPE_2__*,void*) ;
 int vm_page_unlock_queues () ;
 int vm_pageout_cluster (TYPE_2__*) ;
 int vm_pageout_steal_laundry (TYPE_2__*,void*) ;

void
vm_object_reap_pages(
 vm_object_t object,
 int reap_type)
{
 vm_page_t p;
 vm_page_t next;
 vm_page_t local_free_q = VM_PAGE_NULL;
 int loop_count;
 boolean_t disconnect_on_release;
 pmap_flush_context pmap_flush_context_storage;

 if (reap_type == 131) {




  disconnect_on_release = TRUE;
 } else {







  disconnect_on_release = FALSE;
 }

restart_after_sleep:
 if (vm_page_queue_empty(&object->memq))
  return;
 loop_count = BATCH_LIMIT(V_O_R_MAX_BATCH);

 if (reap_type == 130)
  pmap_flush_context_init(&pmap_flush_context_storage);

 vm_page_lockspin_queues();

 next = (vm_page_t)vm_page_queue_first(&object->memq);

 while (!vm_page_queue_end(&object->memq, (vm_page_queue_entry_t)next)) {

  p = next;
  next = (vm_page_t)vm_page_queue_next(&next->vmp_listq);

  if (--loop_count == 0) {

   vm_page_unlock_queues();

   if (local_free_q) {

    if (reap_type == 130) {
     pmap_flush(&pmap_flush_context_storage);
     pmap_flush_context_init(&pmap_flush_context_storage);
    }





    VM_OBJ_REAP_FREELIST(local_free_q,
           disconnect_on_release);
   } else
    mutex_pause(0);

   loop_count = BATCH_LIMIT(V_O_R_MAX_BATCH);

   vm_page_lockspin_queues();
  }
  if (reap_type == 131 || reap_type == 128) {

   if (p->vmp_busy || p->vmp_cleaning) {

    vm_page_unlock_queues();



    VM_OBJ_REAP_FREELIST(local_free_q,
           disconnect_on_release);

    PAGE_SLEEP(object, p, THREAD_UNINT);

    goto restart_after_sleep;
   }
   if (p->vmp_laundry)
    vm_pageout_steal_laundry(p, TRUE);
  }
  switch (reap_type) {

  case 131:
   if (VM_PAGE_WIRED(p)) {






    continue;
   }
   break;

  case 130:
   if (VM_PAGE_WIRED(p)) {



    vm_page_purged_wired++;
    continue;
   }
   if (p->vmp_laundry && !p->vmp_busy && !p->vmp_cleaning)
    vm_pageout_steal_laundry(p, TRUE);

   if (p->vmp_cleaning || p->vmp_laundry || p->vmp_absent) {




    vm_page_purged_others++;
    continue;
   }
   if (p->vmp_busy) {






    if (VM_PAGE_PAGEABLE(p))
     vm_page_deactivate(p);
    vm_page_purged_busy++;
    continue;
   }

   assert(VM_PAGE_OBJECT(p) != kernel_object);




   if (p->vmp_pmapped == TRUE) {



    pmap_disconnect_options(VM_PAGE_GET_PHYS_PAGE(p), PMAP_OPTIONS_NOFLUSH | PMAP_OPTIONS_NOREFMOD, (void *)&pmap_flush_context_storage);
   }
   vm_page_purged_count++;

   break;

  case 128:
   if (p->vmp_absent || p->vmp_private) {







    break;
   }
   if (p->vmp_fictitious) {
    assert (VM_PAGE_GET_PHYS_PAGE(p) == vm_page_guard_addr);
    break;
   }
   if (!p->vmp_dirty && p->vmp_wpmapped)
    p->vmp_dirty = pmap_is_modified(VM_PAGE_GET_PHYS_PAGE(p));

   if ((p->vmp_dirty || p->vmp_precious) && !p->vmp_error && object->alive) {

    assert(!object->internal);

    p->vmp_free_when_done = TRUE;

    if (!p->vmp_laundry) {
     vm_page_queues_remove(p, TRUE);




     vm_pageout_cluster(p);
    }
    vm_page_unlock_queues();



    VM_OBJ_REAP_FREELIST(local_free_q,
           disconnect_on_release);

    vm_object_paging_wait(object, THREAD_UNINT);

    goto restart_after_sleep;
   }
   break;

  case 129:
   break;
  }
  vm_page_free_prepare_queues(p);
  assert(p->vmp_pageq.next == 0 && p->vmp_pageq.prev == 0);




  p->vmp_snext = local_free_q;
  local_free_q = p;
 }
 vm_page_unlock_queues();




 if (reap_type == 130)
  pmap_flush(&pmap_flush_context_storage);

 VM_OBJ_REAP_FREELIST(local_free_q,
        disconnect_on_release);
}
