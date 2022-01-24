#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_size_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ vm_map_offset_t ;
struct vm_page_delayed_work {int dw_mask; } ;
struct pmap {int dummy; } ;
typedef  int /*<<< orphan*/  pmap_flush_context ;
typedef  int /*<<< orphan*/  chunk_state_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_16__ {unsigned int reusable; int /*<<< orphan*/  reusable_count; } ;
struct TYPE_15__ {scalar_t__ reusable_page_count; scalar_t__ resident_page_count; scalar_t__ internal; int /*<<< orphan*/  all_reusable; } ;
struct TYPE_14__ {scalar_t__ vmp_q_state; scalar_t__ vmp_reusable; void* vmp_dirty; void* vmp_precious; int /*<<< orphan*/  vmp_free_when_done; int /*<<< orphan*/  vmp_cleaning; int /*<<< orphan*/  vmp_laundry; int /*<<< orphan*/  vmp_busy; int /*<<< orphan*/  vmp_gobbled; int /*<<< orphan*/  vmp_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int DEFAULT_DELAYED_WORK_LIMIT ; 
 int FUNC1 (int) ; 
 int DW_clear_reference ; 
 int DW_move_page ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PAGE_SIZE_64 ; 
 struct pmap* PMAP_NULL ; 
 int PMAP_OPTIONS_NOFLUSH ; 
 int /*<<< orphan*/  PMAP_OPTIONS_REMOVE ; 
 int PMAP_OPTIONS_SET_REUSABLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int VM_MEM_MODIFIED ; 
 int VM_MEM_REFERENCED ; 
 int /*<<< orphan*/  FUNC6 (struct vm_page_delayed_work*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 TYPE_1__* VM_PAGE_NULL ; 
 scalar_t__ VM_PAGE_ON_THROTTLED_Q ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ madvise_free_debug ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,void*) ; 
 int /*<<< orphan*/  FUNC12 (struct pmap*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,struct vm_page_delayed_work*,int) ; 
 TYPE_1__* FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ vm_page_stats_reusable ; 

__attribute__((used)) static void
FUNC16(
	vm_object_t		object,
	vm_object_offset_t	offset,
	vm_object_size_t	size,
	boolean_t               kill_page,
	boolean_t		reusable_page,
	boolean_t		all_reusable,
	chunk_state_t		*chunk_state,
	pmap_flush_context      *pfc,
	struct pmap		*pmap,
	vm_map_offset_t		pmap_offset)
{
	vm_page_t	m;
	int		p;
	struct vm_page_delayed_work	dw_array[DEFAULT_DELAYED_WORK_LIMIT];
	struct vm_page_delayed_work	*dwp;
	int		dw_count;
	int		dw_limit;
	unsigned int	reusable = 0;

	/*
	 * Examine each page in the chunk.  The variable 'p' is the page number relative to the start of the
	 * chunk.  Since this routine is called once for each level in the shadow chain, the chunk_state may
	 * have pages marked as having been processed already.  We stop the loop early if we find we've handled
	 * all the pages in the chunk.
	 */

	dwp = &dw_array[0];
	dw_count = 0;
	dw_limit = FUNC1(DEFAULT_DELAYED_WORK_LIMIT);

	for(p = 0; size && FUNC0(*chunk_state); p++, size -= PAGE_SIZE_64, offset += PAGE_SIZE_64, pmap_offset += PAGE_SIZE_64) {

		/*
		 * If this offset has already been found and handled in a higher level object, then don't
		 * do anything with it in the current shadow object.
		 */

		if (FUNC4(*chunk_state, p))
			continue;
	
		/*
		 * See if the page at this offset is around.  First check to see if the page is resident,
		 * then if not, check the existence map or with the pager.
		 */

	        if ((m = FUNC15(object, offset)) != VM_PAGE_NULL) {

			/*
			 * We found a page we were looking for.  Mark it as "handled" now in the chunk_state
			 * so that we won't bother looking for a page at this offset again if there are more
			 * shadow objects.  Then deactivate the page.
			 */

			FUNC2(*chunk_state, p);
	
			if (( !FUNC8(m)) && (!m->vmp_private) && (!m->vmp_gobbled) && (!m->vmp_busy) &&
			    (!m->vmp_laundry) && (!m->vmp_cleaning) && !(m->vmp_free_when_done)) {
				int	clear_refmod;
				int	pmap_options;
	
				dwp->dw_mask = 0;

				pmap_options = 0;
				clear_refmod = VM_MEM_REFERENCED;
				dwp->dw_mask |= DW_clear_reference;

				if ((kill_page) && (object->internal)) {
					if (madvise_free_debug) {
						/*
						 * zero-fill the page now
						 * to simulate it being
						 * reclaimed and re-faulted.
						 */
						FUNC13(FUNC7(m));
					}
			        	m->vmp_precious = FALSE;
				        m->vmp_dirty = FALSE;

					clear_refmod |= VM_MEM_MODIFIED;
					if (m->vmp_q_state == VM_PAGE_ON_THROTTLED_Q) {
						/*
						 * This page is now clean and
						 * reclaimable.  Move it out
						 * of the throttled queue, so
						 * that vm_pageout_scan() can
						 * find it.
						 */
						dwp->dw_mask |= DW_move_page;
					}

					FUNC5(object, offset);

					if (reusable_page && !m->vmp_reusable) {
						FUNC9(!all_reusable);
						FUNC9(!object->all_reusable);
						m->vmp_reusable = TRUE;
						object->reusable_page_count++;
						FUNC9(object->resident_page_count >= object->reusable_page_count);
						reusable++;
						/*
						 * Tell pmap this page is now
						 * "reusable" (to update pmap
						 * stats for all mappings).
						 */
						pmap_options |=	PMAP_OPTIONS_SET_REUSABLE;
					}
				}
				pmap_options |= PMAP_OPTIONS_NOFLUSH;
				FUNC11(FUNC7(m),
							  clear_refmod,
							  pmap_options,
							  (void *)pfc);

				if ((m->vmp_q_state != VM_PAGE_ON_THROTTLED_Q) && !(reusable_page || all_reusable))
					dwp->dw_mask |= DW_move_page;
				
				if (dwp->dw_mask)
					FUNC6(dwp, m,
								 dw_count);

				if (dw_count >= dw_limit) {
					if (reusable) {
						FUNC3(reusable,
							    &vm_page_stats_reusable.reusable_count);
						vm_page_stats_reusable.reusable += reusable;
						reusable = 0;
					}
					FUNC14(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);

					dwp = &dw_array[0];
					dw_count = 0;
				}
			}

		} else {

			/*
			 * The page at this offset isn't memory resident, check to see if it's
			 * been paged out.  If so, mark it as handled so we don't bother looking
			 * for it in the shadow chain.
			 */

			if (FUNC10(object, offset)) {
				FUNC2(*chunk_state, p);

				/*
				 * If we're killing a non-resident page, then clear the page in the existence 
				 * map so we don't bother paging it back in if it's touched again in the future.
				 */

				if ((kill_page) && (object->internal)) {

					FUNC5(object, offset);

					if (pmap != PMAP_NULL) {
						/*
						 * Tell pmap that this page
						 * is no longer mapped, to
						 * adjust the footprint ledger
						 * because this page is no
						 * longer compressed.
						 */
						FUNC12(
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
		FUNC3(reusable, &vm_page_stats_reusable.reusable_count);
		vm_page_stats_reusable.reusable += reusable;	
		reusable = 0;
	}
		
	if (dw_count)
		FUNC14(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
}