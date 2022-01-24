#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct vm_page_delayed_work {int dw_mask; TYPE_2__* dw_m; } ;
typedef  void* boolean_t ;
struct TYPE_20__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_21__ {scalar_t__ vmp_q_state; void* vmp_busy; void* vmp_reference; struct TYPE_21__* vmp_snext; TYPE_1__ vmp_pageq; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 void* TRUE ; 
 int /*<<< orphan*/  VM_CHECK_MEMORYSTATUS ; 
 int VM_MEM_REFERENCED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* VM_PAGE_NULL ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ VM_PAGE_ON_ACTIVE_Q ; 
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ kernel_object ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  vm_pageout_cleaned_reactivated ; 
 int /*<<< orphan*/  vm_pageout_enqueued_cleaned ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*) ; 

void
FUNC26(
	vm_object_t 	object,
	vm_tag_t        tag,
	struct vm_page_delayed_work *dwp,
	int		dw_count)
{
	int		j;
	vm_page_t	m;
        vm_page_t       local_free_q = VM_PAGE_NULL;

	/*
	 * pageout_scan takes the vm_page_lock_queues first
	 * then tries for the object lock... to avoid what
	 * is effectively a lock inversion, we'll go to the
	 * trouble of taking them in that same order... otherwise
	 * if this object contains the majority of the pages resident
	 * in the UBC (or a small set of large objects actively being
	 * worked on contain the majority of the pages), we could
	 * cause the pageout_scan thread to 'starve' in its attempt
	 * to find pages to move to the free queue, since it has to
	 * successfully acquire the object lock of any candidate page
	 * before it can steal/clean it.
	 */
	if (!FUNC20()) {
		FUNC9(object);

		FUNC16();

		for (j = 0; ; j++) {
			if (!FUNC8(object) &&
			    FUNC4(object))
				break;
			FUNC21();
			FUNC6(j);
			FUNC16();
		}
	}
	for (j = 0; j < dw_count; j++, dwp++) {

		m = dwp->dw_m;

		if (dwp->dw_mask & DW_vm_pageout_throttle_up)
			FUNC24(m);
#if CONFIG_PHANTOM_CACHE
		if (dwp->dw_mask & DW_vm_phantom_cache_update)
			vm_phantom_cache_update(m);
#endif
		if (dwp->dw_mask & DW_vm_page_wire)
			FUNC23(m, tag, FALSE);
		else if (dwp->dw_mask & DW_vm_page_unwire) {
			boolean_t	queueit;

			queueit = (dwp->dw_mask & (DW_vm_page_free | DW_vm_page_deactivate_internal)) ? FALSE : TRUE;

			FUNC22(m, queueit);
		}
		if (dwp->dw_mask & DW_vm_page_free) {
			FUNC15(m);

			FUNC5(m->vmp_pageq.next == 0 && m->vmp_pageq.prev == 0);
			/*
			 * Add this page to our list of reclaimed pages,
			 * to be freed later.
			 */
			m->vmp_snext = local_free_q;
			local_free_q = m;
		} else {
			if (dwp->dw_mask & DW_vm_page_deactivate_internal)
				FUNC11(m, FALSE);
			else if (dwp->dw_mask & DW_vm_page_activate) {
				if (m->vmp_q_state != VM_PAGE_ON_ACTIVE_Q) {
					FUNC10(m);
				}
			}
			else if (dwp->dw_mask & DW_vm_page_speculate)
				FUNC19(m, TRUE);
			else if (dwp->dw_mask & DW_enqueue_cleaned) {
				/*
				 * if we didn't hold the object lock and did this,
				 * we might disconnect the page, then someone might
				 * soft fault it back in, then we would put it on the
				 * cleaned queue, and so we would have a referenced (maybe even dirty)
				 * page on that queue, which we don't want
				 */
				int refmod_state = FUNC7(FUNC2(m));

				if ((refmod_state & VM_MEM_REFERENCED)) {
					/*
					 * this page has been touched since it got cleaned; let's activate it
					 * if it hasn't already been
					 */
				        FUNC1(vm_pageout_enqueued_cleaned, 1);
					FUNC1(vm_pageout_cleaned_reactivated, 1);

					if (m->vmp_q_state != VM_PAGE_ON_ACTIVE_Q)
						FUNC10(m);
				} else {
					m->vmp_reference = FALSE;
					FUNC12(m);
				}
			}
			else if (dwp->dw_mask & DW_vm_page_lru)
				FUNC17(m);
			else if (dwp->dw_mask & DW_VM_PAGE_QUEUES_REMOVE) {
				if (m->vmp_q_state != VM_PAGE_ON_PAGEOUT_Q)
					FUNC18(m, TRUE);
			}
			if (dwp->dw_mask & DW_set_reference)
				m->vmp_reference = TRUE;
			else if (dwp->dw_mask & DW_clear_reference)
				m->vmp_reference = FALSE;

			if (dwp->dw_mask & DW_move_page) {
				if (m->vmp_q_state != VM_PAGE_ON_PAGEOUT_Q) {
					FUNC18(m, FALSE);

					FUNC5(FUNC3(m) != kernel_object);

					FUNC13(m, FALSE);
				}
			}
			if (dwp->dw_mask & DW_clear_busy)
				m->vmp_busy = FALSE;

			if (dwp->dw_mask & DW_PAGE_WAKEUP)
				FUNC0(m);
		}
	}
	FUNC21();

	if (local_free_q)
		FUNC14(local_free_q, TRUE);
	
	VM_CHECK_MEMORYSTATUS;

}