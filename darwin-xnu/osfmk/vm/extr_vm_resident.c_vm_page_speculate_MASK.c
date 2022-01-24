#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
struct TYPE_18__ {int tv_sec; int tv_nsec; } ;
struct vm_speculative_age_q {int /*<<< orphan*/  age_q; TYPE_15__ age_ts; } ;
struct TYPE_21__ {unsigned int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
typedef  TYPE_3__ mach_timespec_t ;
typedef  scalar_t__ clock_sec_t ;
typedef  int /*<<< orphan*/  clock_nsec_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_22__ {int vm_page_speculative_q_age_ms; } ;
struct TYPE_20__ {scalar_t__ internal; int /*<<< orphan*/  pages_created; } ;
struct TYPE_19__ {scalar_t__ vmp_q_state; int /*<<< orphan*/  vmp_pageq; scalar_t__ vmp_fictitious; scalar_t__ vmp_private; scalar_t__ vmp_laundry; int /*<<< orphan*/  vmp_unusual; scalar_t__ vmp_absent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_15__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_15__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int NSEC_PER_USEC ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 size_t VM_PAGE_MAX_SPECULATIVE_AGE_Q ; 
 size_t VM_PAGE_MIN_SPECULATIVE_AGE_Q ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_ON_PAGEOUT_Q ; 
 scalar_t__ VM_PAGE_ON_SPECULATIVE_Q ; 
 scalar_t__ VM_PAGE_USED_BY_COMPRESSOR ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ *) ; 
 size_t speculative_age_index ; 
 size_t speculative_steal_index ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ vm_page_guard_addr ; 
 int /*<<< orphan*/  vm_page_pageable_external_count ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 struct vm_speculative_age_q* vm_page_queue_speculative ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_speculative_age_q*) ; 
 scalar_t__ vm_page_speculative_count ; 
 int /*<<< orphan*/  vm_page_speculative_created ; 
 TYPE_4__ vm_pageout_state ; 

void
FUNC15(
	vm_page_t	m,
	boolean_t	new)
{
        struct vm_speculative_age_q	*aq;
	vm_object_t	m_object;

	m_object = FUNC5(m);

	FUNC3(m);
	FUNC10(m);

	FUNC7(FUNC4(m) != vm_page_guard_addr);
	FUNC2(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
	FUNC7( !(m->vmp_absent && !m->vmp_unusual));
	FUNC7(m_object->internal == FALSE);

	/*
	 * if this page is currently on the pageout queue, we can't do the
	 * vm_page_queues_remove (which doesn't handle the pageout queue case)
	 * and we can't remove it manually since we would need the object lock
	 * (which is not required here) to decrement the activity_in_progress
	 * reference which is held on the object while the page is in the pageout queue...
	 * just let the normal laundry processing proceed
	 */
	if (m->vmp_laundry || m->vmp_private || m->vmp_fictitious ||
	    (m->vmp_q_state == VM_PAGE_USED_BY_COMPRESSOR) ||
	    (m->vmp_q_state == VM_PAGE_ON_PAGEOUT_Q))
		return;

	FUNC13(m, FALSE);

	if ( !FUNC6(m)) {
	        mach_timespec_t		ts;
		clock_sec_t sec;
		clock_nsec_t nsec;

	        FUNC8(&sec, &nsec);
		ts.tv_sec = (unsigned int) sec;
		ts.tv_nsec = nsec;

		if (vm_page_speculative_count == 0) {

			speculative_age_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
			speculative_steal_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;

			aq = &vm_page_queue_speculative[speculative_age_index];

		        /*
			 * set the timer to begin a new group
			 */
			aq->age_ts.tv_sec = vm_pageout_state.vm_page_speculative_q_age_ms / 1000;
			aq->age_ts.tv_nsec = (vm_pageout_state.vm_page_speculative_q_age_ms % 1000) * 1000 * NSEC_PER_USEC;
			FUNC0(&aq->age_ts, &ts);
		} else {
			aq = &vm_page_queue_speculative[speculative_age_index];

			if (FUNC1(&ts, &aq->age_ts) >= 0) {

			        speculative_age_index++;

				if (speculative_age_index > VM_PAGE_MAX_SPECULATIVE_AGE_Q)
				        speculative_age_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
				if (speculative_age_index == speculative_steal_index) {
				        speculative_steal_index = speculative_age_index + 1;

					if (speculative_steal_index > VM_PAGE_MAX_SPECULATIVE_AGE_Q)
					        speculative_steal_index = VM_PAGE_MIN_SPECULATIVE_AGE_Q;
				}
				aq = &vm_page_queue_speculative[speculative_age_index];

				if (!FUNC12(&aq->age_q))
				        FUNC14(aq);

				aq->age_ts.tv_sec = vm_pageout_state.vm_page_speculative_q_age_ms / 1000;
				aq->age_ts.tv_nsec = (vm_pageout_state.vm_page_speculative_q_age_ms % 1000) * 1000 * NSEC_PER_USEC;
				FUNC0(&aq->age_ts, &ts);
			}
		}
		FUNC11(&aq->age_q, &m->vmp_pageq);
		m->vmp_q_state = VM_PAGE_ON_SPECULATIVE_Q;
		vm_page_speculative_count++;
		vm_page_pageable_external_count++;

		if (new == TRUE) {
			FUNC9(m_object);

		        m_object->pages_created++;
#if DEVELOPMENT || DEBUG
			vm_page_speculative_created++;
#endif
		}
	}
	FUNC3(m);
}