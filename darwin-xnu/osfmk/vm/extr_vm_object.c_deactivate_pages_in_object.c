
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef TYPE_2__* vm_object_t ;
typedef scalar_t__ vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ vm_map_offset_t ;
struct vm_page_delayed_work {int dw_mask; } ;
struct pmap {int dummy; } ;
typedef int pmap_flush_context ;
typedef int chunk_state_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_16__ {unsigned int reusable; int reusable_count; } ;
struct TYPE_15__ {scalar_t__ reusable_page_count; scalar_t__ resident_page_count; scalar_t__ internal; int all_reusable; } ;
struct TYPE_14__ {scalar_t__ vmp_q_state; scalar_t__ vmp_reusable; void* vmp_dirty; void* vmp_precious; int vmp_free_when_done; int vmp_cleaning; int vmp_laundry; int vmp_busy; int vmp_gobbled; int vmp_private; } ;


 scalar_t__ CHUNK_NOT_COMPLETE (int ) ;
 int DEFAULT_DELAYED_WORK_LIMIT ;
 int DELAYED_WORK_LIMIT (int) ;
 int DW_clear_reference ;
 int DW_move_page ;
 void* FALSE ;
 int MARK_PAGE_HANDLED (int ,int) ;
 int OSAddAtomic (unsigned int,int *) ;
 scalar_t__ PAGE_ALREADY_HANDLED (int ,int) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PAGE_SIZE_64 ;
 struct pmap* PMAP_NULL ;
 int PMAP_OPTIONS_NOFLUSH ;
 int PMAP_OPTIONS_REMOVE ;
 int PMAP_OPTIONS_SET_REUSABLE ;
 scalar_t__ TRUE ;
 int VM_COMPRESSOR_PAGER_STATE_CLR (TYPE_2__*,int ) ;
 int VM_KERN_MEMORY_NONE ;
 int VM_MEM_MODIFIED ;
 int VM_MEM_REFERENCED ;
 int VM_PAGE_ADD_DELAYED_WORK (struct vm_page_delayed_work*,TYPE_1__*,int) ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_1__*) ;
 TYPE_1__* VM_PAGE_NULL ;
 scalar_t__ VM_PAGE_ON_THROTTLED_Q ;
 int VM_PAGE_WIRED (TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ madvise_free_debug ;
 scalar_t__ page_is_paged_out (TYPE_2__*,int ) ;
 int pmap_clear_refmod_options (int ,int,int,void*) ;
 int pmap_remove_options (struct pmap*,scalar_t__,scalar_t__,int ) ;
 int pmap_zero_page (int ) ;
 int vm_page_do_delayed_work (TYPE_2__*,int ,struct vm_page_delayed_work*,int) ;
 TYPE_1__* vm_page_lookup (TYPE_2__*,int ) ;
 TYPE_3__ vm_page_stats_reusable ;

__attribute__((used)) static void
deactivate_pages_in_object(
 vm_object_t object,
 vm_object_offset_t offset,
 vm_object_size_t size,
 boolean_t kill_page,
 boolean_t reusable_page,
 boolean_t all_reusable,
 chunk_state_t *chunk_state,
 pmap_flush_context *pfc,
 struct pmap *pmap,
 vm_map_offset_t pmap_offset)
{
 vm_page_t m;
 int p;
 struct vm_page_delayed_work dw_array[DEFAULT_DELAYED_WORK_LIMIT];
 struct vm_page_delayed_work *dwp;
 int dw_count;
 int dw_limit;
 unsigned int reusable = 0;
 dwp = &dw_array[0];
 dw_count = 0;
 dw_limit = DELAYED_WORK_LIMIT(DEFAULT_DELAYED_WORK_LIMIT);

 for(p = 0; size && CHUNK_NOT_COMPLETE(*chunk_state); p++, size -= PAGE_SIZE_64, offset += PAGE_SIZE_64, pmap_offset += PAGE_SIZE_64) {






  if (PAGE_ALREADY_HANDLED(*chunk_state, p))
   continue;






         if ((m = vm_page_lookup(object, offset)) != VM_PAGE_NULL) {







   MARK_PAGE_HANDLED(*chunk_state, p);

   if (( !VM_PAGE_WIRED(m)) && (!m->vmp_private) && (!m->vmp_gobbled) && (!m->vmp_busy) &&
       (!m->vmp_laundry) && (!m->vmp_cleaning) && !(m->vmp_free_when_done)) {
    int clear_refmod;
    int pmap_options;

    dwp->dw_mask = 0;

    pmap_options = 0;
    clear_refmod = VM_MEM_REFERENCED;
    dwp->dw_mask |= DW_clear_reference;

    if ((kill_page) && (object->internal)) {
     if (madvise_free_debug) {





      pmap_zero_page(VM_PAGE_GET_PHYS_PAGE(m));
     }
            m->vmp_precious = FALSE;
            m->vmp_dirty = FALSE;

     clear_refmod |= VM_MEM_MODIFIED;
     if (m->vmp_q_state == VM_PAGE_ON_THROTTLED_Q) {







      dwp->dw_mask |= DW_move_page;
     }

     VM_COMPRESSOR_PAGER_STATE_CLR(object, offset);

     if (reusable_page && !m->vmp_reusable) {
      assert(!all_reusable);
      assert(!object->all_reusable);
      m->vmp_reusable = TRUE;
      object->reusable_page_count++;
      assert(object->resident_page_count >= object->reusable_page_count);
      reusable++;





      pmap_options |= PMAP_OPTIONS_SET_REUSABLE;
     }
    }
    pmap_options |= PMAP_OPTIONS_NOFLUSH;
    pmap_clear_refmod_options(VM_PAGE_GET_PHYS_PAGE(m),
         clear_refmod,
         pmap_options,
         (void *)pfc);

    if ((m->vmp_q_state != VM_PAGE_ON_THROTTLED_Q) && !(reusable_page || all_reusable))
     dwp->dw_mask |= DW_move_page;

    if (dwp->dw_mask)
     VM_PAGE_ADD_DELAYED_WORK(dwp, m,
         dw_count);

    if (dw_count >= dw_limit) {
     if (reusable) {
      OSAddAtomic(reusable,
           &vm_page_stats_reusable.reusable_count);
      vm_page_stats_reusable.reusable += reusable;
      reusable = 0;
     }
     vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);

     dwp = &dw_array[0];
     dw_count = 0;
    }
   }

  } else {







   if (page_is_paged_out(object, offset)) {
    MARK_PAGE_HANDLED(*chunk_state, p);






    if ((kill_page) && (object->internal)) {

     VM_COMPRESSOR_PAGER_STATE_CLR(object, offset);

     if (pmap != PMAP_NULL) {







      pmap_remove_options(
       pmap,
       pmap_offset,
       (pmap_offset +
        PAGE_SIZE),
       PMAP_OPTIONS_REMOVE);
     }
    }
   }
  }
 }

 if (reusable) {
  OSAddAtomic(reusable, &vm_page_stats_reusable.reusable_count);
  vm_page_stats_reusable.reusable += reusable;
  reusable = 0;
 }

 if (dw_count)
  vm_page_do_delayed_work(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
}
