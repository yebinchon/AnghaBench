#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_page_queue_entry_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  int /*<<< orphan*/  pmap_flush_context ;
typedef  void* boolean_t ;
struct TYPE_21__ {int /*<<< orphan*/  internal; int /*<<< orphan*/  alive; int /*<<< orphan*/  memq; } ;
struct TYPE_19__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_20__ {void* vmp_pmapped; struct TYPE_20__* vmp_snext; TYPE_1__ vmp_pageq; scalar_t__ vmp_laundry; void* vmp_free_when_done; int /*<<< orphan*/  vmp_error; int /*<<< orphan*/  vmp_precious; int /*<<< orphan*/  vmp_dirty; int /*<<< orphan*/  vmp_wpmapped; int /*<<< orphan*/  vmp_fictitious; int /*<<< orphan*/  vmp_private; int /*<<< orphan*/  vmp_absent; scalar_t__ vmp_busy; scalar_t__ vmp_cleaning; int /*<<< orphan*/  vmp_listq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int PMAP_OPTIONS_NOFLUSH ; 
 int PMAP_OPTIONS_NOREFMOD ; 
#define  REAP_DATA_FLUSH 131 
#define  REAP_PURGEABLE 130 
#define  REAP_REAP 129 
#define  REAP_TERMINATE 128 
 int /*<<< orphan*/  THREAD_UNINT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  V_O_R_MAX_BATCH ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  kernel_object ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  vm_page_guard_addr ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  vm_page_purged_busy ; 
 int /*<<< orphan*/  vm_page_purged_count ; 
 int /*<<< orphan*/  vm_page_purged_others ; 
 int /*<<< orphan*/  vm_page_purged_wired ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,void*) ; 

void
FUNC25(
	vm_object_t 	object,
	int		reap_type)
{
	vm_page_t	p;
	vm_page_t	next;
	vm_page_t	local_free_q = VM_PAGE_NULL;
	int		loop_count;
	boolean_t	disconnect_on_release;
	pmap_flush_context	pmap_flush_context_storage;

	if (reap_type == REAP_DATA_FLUSH) {
		/*
		 * We need to disconnect pages from all pmaps before
		 * releasing them to the free list
		 */
		disconnect_on_release = TRUE;
	} else {
		/*
		 * Either the caller has already disconnected the pages
		 * from all pmaps, or we disconnect them here as we add
		 * them to out local list of pages to be released.
		 * No need to re-disconnect them when we release the pages
		 * to the free list.
		 */
		disconnect_on_release = FALSE;
	}
		
restart_after_sleep:
	if (FUNC17(&object->memq))
		return;
	loop_count = FUNC0(V_O_R_MAX_BATCH);

	if (reap_type == REAP_PURGEABLE)
		FUNC11(&pmap_flush_context_storage);

	FUNC16();

	next = (vm_page_t)FUNC19(&object->memq);

	while (!FUNC18(&object->memq, (vm_page_queue_entry_t)next)) {

		p = next;
		next = (vm_page_t)FUNC20(&next->vmp_listq);

		if (--loop_count == 0) {
					
			FUNC22();

			if (local_free_q) {

				if (reap_type == REAP_PURGEABLE) {
					FUNC10(&pmap_flush_context_storage);
					FUNC11(&pmap_flush_context_storage);
				}
				/*
				 * Free the pages we reclaimed so far
				 * and take a little break to avoid
				 * hogging the page queue lock too long
				 */
				FUNC2(local_free_q,
						     disconnect_on_release);
			} else
				FUNC8(0);

			loop_count = FUNC0(V_O_R_MAX_BATCH);

			FUNC16();
		}
		if (reap_type == REAP_DATA_FLUSH || reap_type == REAP_TERMINATE) {

			if (p->vmp_busy || p->vmp_cleaning) {

				FUNC22();
				/*
				 * free the pages reclaimed so far
				 */
				FUNC2(local_free_q,
						     disconnect_on_release);

				FUNC1(object, p, THREAD_UNINT);

				goto restart_after_sleep;
			}
			if (p->vmp_laundry)
				FUNC24(p, TRUE);
		}
		switch (reap_type) {

		case REAP_DATA_FLUSH:
			if (FUNC6(p)) {
				/*
				 * this is an odd case... perhaps we should
				 * zero-fill this page since we're conceptually
				 * tossing its data at this point, but leaving
				 * it on the object to honor the 'wire' contract
				 */
				continue;
			}
			break;
			
		case REAP_PURGEABLE:
			if (FUNC6(p)) {
				/*
				 * can't purge a wired page
				 */
				vm_page_purged_wired++;
				continue;
			}
			if (p->vmp_laundry && !p->vmp_busy && !p->vmp_cleaning)
				FUNC24(p, TRUE);

			if (p->vmp_cleaning || p->vmp_laundry || p->vmp_absent) {
				/*
				 * page is being acted upon,
				 * so don't mess with it
				 */
				vm_page_purged_others++;
				continue;
			}
			if (p->vmp_busy) {
				/*
				 * We can't reclaim a busy page but we can
				 * make it more likely to be paged (it's not wired) to make
				 * sure that it gets considered by
				 * vm_pageout_scan() later.
				 */
				if (FUNC5(p))
					FUNC14(p);
				vm_page_purged_busy++;
				continue;
			}

			FUNC7(FUNC4(p) != kernel_object);

			/*
			 * we can discard this page...
			 */
			if (p->vmp_pmapped == TRUE) {
				/*
				 * unmap the page
				 */
				FUNC9(FUNC3(p), PMAP_OPTIONS_NOFLUSH | PMAP_OPTIONS_NOREFMOD, (void *)&pmap_flush_context_storage);
			}
			vm_page_purged_count++;

			break;

		case REAP_TERMINATE:
			if (p->vmp_absent || p->vmp_private) {
				/*
				 *	For private pages, VM_PAGE_FREE just
				 *	leaves the page structure around for
				 *	its owner to clean up.  For absent
				 *	pages, the structure is returned to
				 *	the appropriate pool.
				 */
				break;
			}
			if (p->vmp_fictitious) {
				FUNC7 (FUNC3(p) == vm_page_guard_addr);
				break;
			}
			if (!p->vmp_dirty && p->vmp_wpmapped)
				p->vmp_dirty = FUNC12(FUNC3(p));

			if ((p->vmp_dirty || p->vmp_precious) && !p->vmp_error && object->alive) {

				FUNC7(!object->internal);
				
				p->vmp_free_when_done = TRUE;

				if (!p->vmp_laundry) {
					FUNC21(p, TRUE);
					/*
					 * flush page... page will be freed
					 * upon completion of I/O
					 */
					FUNC23(p);
				}
				FUNC22();
				/*
				 * free the pages reclaimed so far
				 */
				FUNC2(local_free_q,
						     disconnect_on_release);

				FUNC13(object, THREAD_UNINT);

				goto restart_after_sleep;
			}
			break;

		case REAP_REAP:
			break;
		}
		FUNC15(p);
		FUNC7(p->vmp_pageq.next == 0 && p->vmp_pageq.prev == 0);
		/*
		 * Add this page to our list of reclaimed pages,
		 * to be freed later.
		 */
		p->vmp_snext = local_free_q;
		local_free_q = p;
	}
	FUNC22();

	/*
	 * Free the remaining reclaimed pages
	 */
	if (reap_type == REAP_PURGEABLE)
		FUNC10(&pmap_flush_context_storage);

	FUNC2(local_free_q,
			     disconnect_on_release);
}