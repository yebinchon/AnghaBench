#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
struct TYPE_22__ {int pageout; scalar_t__ ref_count; scalar_t__ paging_in_progress; scalar_t__ activity_in_progress; scalar_t__ resident_page_count; scalar_t__ vo_shadow_offset; int /*<<< orphan*/  memq; struct TYPE_22__* shadow; } ;
struct TYPE_21__ {int vmp_private; int vmp_free_when_done; int vmp_dirty; int vmp_busy; scalar_t__ vmp_q_state; int vmp_wire_count; int vmp_overwriting; void* vmp_cleaning; void* vmp_absent; scalar_t__ vmp_reference; scalar_t__ vmp_precious; scalar_t__ vmp_offset; int /*<<< orphan*/  vmp_laundry; } ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*) ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_MEM_MODIFIED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_IS_WIRED ; 
 scalar_t__ VM_PAGE_NOT_ON_Q ; 
 TYPE_1__* VM_PAGE_NULL ; 
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reactivations ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 TYPE_1__* FUNC17 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 

void
FUNC23(
	vm_object_t	object)
{
	vm_object_t	shadow_object;

	/*
	 * Deal with the deallocation (last reference) of a pageout object
	 * (used for cleaning-in-place) by dropping the paging references/
	 * freeing pages in the original object.
	 */

	FUNC7(object->pageout);
	shadow_object = object->shadow;
	FUNC11(shadow_object);

	while (!FUNC18(&object->memq)) {
		vm_page_t 		p, m;
		vm_object_offset_t	offset;

		p = (vm_page_t) FUNC19(&object->memq);

		FUNC7(p->vmp_private);
		FUNC7(p->vmp_free_when_done);
		p->vmp_free_when_done = FALSE;
		FUNC7(!p->vmp_cleaning);
		FUNC7(!p->vmp_laundry);

		offset = p->vmp_offset;
		FUNC3(p);
		p = VM_PAGE_NULL;

		m = FUNC17(shadow_object,
			offset + object->vo_shadow_offset);

		if(m == VM_PAGE_NULL)
			continue;

		FUNC7((m->vmp_dirty) || (m->vmp_precious) ||
				(m->vmp_busy && m->vmp_cleaning));

		/*
		 * Handle the trusted pager throttle.
		 * Also decrement the burst throttle (if external).
		 */
		FUNC16();
		if (m->vmp_q_state == VM_PAGE_ON_PAGEOUT_Q)
			FUNC22(m);

		/*
		 * Handle the "target" page(s). These pages are to be freed if
		 * successfully cleaned. Target pages are always busy, and are
		 * wired exactly once. The initial target pages are not mapped,
		 * (so cannot be referenced or modified) but converted target
		 * pages may have been modified between the selection as an
		 * adjacent page and conversion to a target.
		 */
		if (m->vmp_free_when_done) {
			FUNC7(m->vmp_busy);
			FUNC7(m->vmp_q_state == VM_PAGE_IS_WIRED);
			FUNC7(m->vmp_wire_count == 1);
			m->vmp_cleaning = FALSE;
			m->vmp_free_when_done = FALSE;
			/*
			 * Revoke all access to the page. Since the object is
			 * locked, and the page is busy, this prevents the page
			 * from being dirtied after the pmap_disconnect() call
			 * returns.
			 *
			 * Since the page is left "dirty" but "not modifed", we
			 * can detect whether the page was redirtied during
			 * pageout by checking the modify state.
			 */
			if (FUNC9(FUNC4(m)) & VM_MEM_MODIFIED) {
				FUNC2(m, FALSE);
			} else {
				m->vmp_dirty = FALSE;
			}

			if (m->vmp_dirty) {
				FUNC21(m, TRUE);	/* reactivates */
				FUNC6(reactivations);
				FUNC1(m);
			} else {
			        FUNC15(m);  /* clears busy, etc. */
			}
			FUNC20();
			continue;
		}
		/*
		 * Handle the "adjacent" pages. These pages were cleaned in
		 * place, and should be left alone.
		 * If prep_pin_count is nonzero, then someone is using the
		 * page, so make it active.
		 */
		if ((m->vmp_q_state == VM_PAGE_NOT_ON_Q) && !m->vmp_private) {
			if (m->vmp_reference)
				FUNC13(m);
			else
				FUNC14(m);
		}
		if (m->vmp_overwriting) {
			/*
			 * the (COPY_OUT_FROM == FALSE) request_page_list case
			 */
			if (m->vmp_busy) {
				/*
				 * We do not re-set m->vmp_dirty !
				 * The page was busy so no extraneous activity
				 * could have occurred. COPY_INTO is a read into the
				 * new pages. CLEAN_IN_PLACE does actually write
				 * out the pages but handling outside of this code
				 * will take care of resetting dirty. We clear the
				 * modify however for the Programmed I/O case.
				 */
				FUNC8(FUNC4(m));

				m->vmp_busy = FALSE;
				m->vmp_absent = FALSE;
			} else {
				/*
				 * alternate (COPY_OUT_FROM == FALSE) request_page_list case
				 * Occurs when the original page was wired
				 * at the time of the list request
				 */
				 FUNC7(FUNC5(m));
				 FUNC21(m, TRUE);	/* reactivates */
			}
			m->vmp_overwriting = FALSE;
		} else {
			m->vmp_dirty = FALSE;
		}
		m->vmp_cleaning = FALSE;

		/*
		 * Wakeup any thread waiting for the page to be un-cleaning.
		 */
		FUNC0(m);
		FUNC20();
	}
	/*
	 * Account for the paging reference taken in vm_paging_object_allocate.
	 */
	FUNC10(shadow_object);
	FUNC12(shadow_object);

	FUNC7(object->ref_count == 0);
	FUNC7(object->paging_in_progress == 0);
	FUNC7(object->activity_in_progress == 0);
	FUNC7(object->resident_page_count == 0);
	return;
}