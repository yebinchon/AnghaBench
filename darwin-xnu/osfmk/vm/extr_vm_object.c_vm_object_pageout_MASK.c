#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/  vm_page_queue_entry_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
struct vm_pageout_queue {int /*<<< orphan*/  pgo_laundry; scalar_t__ pgo_draining; } ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_16__ {scalar_t__ pager; int /*<<< orphan*/  memq; int /*<<< orphan*/  pager_initialized; int /*<<< orphan*/  alive; scalar_t__ terminating; int /*<<< orphan*/  internal; } ;
struct TYPE_15__ {scalar_t__ vmp_q_state; scalar_t__ vmp_pmapped; scalar_t__ vmp_precious; scalar_t__ vmp_dirty; scalar_t__ vmp_cleaning; scalar_t__ vmp_error; int /*<<< orphan*/  vmp_unusual; scalar_t__ vmp_absent; scalar_t__ vmp_busy; scalar_t__ vmp_fictitious; scalar_t__ vmp_laundry; int /*<<< orphan*/  vmp_listq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MEMORY_OBJECT_NULL ; 
 int PMAP_OPTIONS_COMPRESSOR ; 
 int PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 int /*<<< orphan*/  THREAD_INTERRUPTIBLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 int VM_MEM_MODIFIED ; 
 TYPE_2__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_ON_FREE_Q ; 
 scalar_t__ VM_PAGE_ON_THROTTLED_Q ; 
 scalar_t__ FUNC3 (struct vm_pageout_queue*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 struct vm_pageout_queue vm_pageout_queue_internal ; 

void
FUNC21(
	vm_object_t object)
{
	vm_page_t 			p, next;
	struct	vm_pageout_queue 	*iq;

	if (!VM_CONFIG_COMPRESSOR_IS_PRESENT)
		return;

	iq = &vm_pageout_queue_internal;
	
	FUNC5(object != VM_OBJECT_NULL );
	
	FUNC12(object);

	if (!object->internal ||
	    object->terminating ||
	    !object->alive) {
		FUNC13(object);
		return;
	}

	if (!object->pager_initialized || object->pager == MEMORY_OBJECT_NULL)  {
			
		if (!object->pager_initialized) {

			FUNC10(object, (vm_object_offset_t) 0, TRUE);

			if (!object->pager_initialized)
				FUNC11(object);
		}

		if (!object->pager_initialized || object->pager == MEMORY_OBJECT_NULL)  {
			FUNC13(object);
			return;
		}
	}
			
ReScan:	
	next = (vm_page_t)FUNC16(&object->memq);

	while (!FUNC15(&object->memq, (vm_page_queue_entry_t)next)) {
		p = next;
		next = (vm_page_t)FUNC17(&next->vmp_listq);
		
		FUNC5(p->vmp_q_state != VM_PAGE_ON_FREE_Q);
		
		if ((p->vmp_q_state == VM_PAGE_ON_THROTTLED_Q) ||
		    p->vmp_cleaning ||
		    p->vmp_laundry ||
		    p->vmp_busy ||
		    p->vmp_absent ||
		    p->vmp_error ||
		    p->vmp_fictitious ||
		    FUNC4(p)) {
			/*
			 * Page is already being cleaned or can't be cleaned.
			 */
			continue;
		}
		if (FUNC9()) {
			break;		
		}

		/* Throw to the pageout queue */

		FUNC14();

		if (FUNC3(iq)) {
					
			iq->pgo_draining = TRUE;
					
			FUNC6((event_t) (&iq->pgo_laundry + 1),
				    THREAD_INTERRUPTIBLE);
			FUNC19();
			FUNC13(object);
					
			FUNC8(THREAD_CONTINUE_NULL);

			FUNC12(object);
			goto ReScan;
		}

		FUNC5(!p->vmp_fictitious);
		FUNC5(!p->vmp_busy);
		FUNC5(!p->vmp_absent);
		FUNC5(!p->vmp_unusual);
		FUNC5(!p->vmp_error);
		FUNC5(!FUNC4(p));
		FUNC5(!p->vmp_cleaning);

		if (p->vmp_pmapped == TRUE) {
			int refmod_state;
			int pmap_options;

			/*
			 * Tell pmap the page should be accounted
			 * for as "compressed" if it's been modified.
			 */
			pmap_options =
				PMAP_OPTIONS_COMPRESSOR_IFF_MODIFIED;
			if (p->vmp_dirty || p->vmp_precious) {
				/*
				 * We already know it's been modified,
				 * so tell pmap to account for it
				 * as "compressed".
				 */
				pmap_options = PMAP_OPTIONS_COMPRESSOR;
			}
			refmod_state = FUNC7(FUNC2(p),
							       pmap_options,
							       NULL);
			if (refmod_state & VM_MEM_MODIFIED) {
				FUNC0(p, FALSE);
			}
		}

		if (!p->vmp_dirty && !p->vmp_precious) {
			FUNC19();
			FUNC1(p);
			continue;
		}
		FUNC18(p, TRUE);

		FUNC20(p);
		
		FUNC19();
	}
	FUNC13(object);
}