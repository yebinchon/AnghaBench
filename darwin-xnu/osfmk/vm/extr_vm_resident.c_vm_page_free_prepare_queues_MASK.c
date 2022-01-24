#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  TYPE_3__* task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_23__ {int phys_footprint; } ;
struct TYPE_22__ {int /*<<< orphan*/  ledger; } ;
struct TYPE_21__ {scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ purgable; scalar_t__ vo_owner; int /*<<< orphan*/  wire_tag; } ;
struct TYPE_20__ {scalar_t__ vmp_q_state; scalar_t__ vmp_wire_count; int /*<<< orphan*/  vmp_fictitious; int /*<<< orphan*/  vmp_private; scalar_t__ vmp_gobbled; scalar_t__ vmp_laundry; int /*<<< orphan*/  vmp_cleaning; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_NOT_ON_Q ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_ON_FREE_Q ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 scalar_t__ VM_PURGABLE_VOLATILE ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  c_laundry_pages_freed ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_9__ task_ledgers ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int*,int*,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  vm_page_gobble_count ; 
 scalar_t__ vm_page_purgeable_count ; 
 scalar_t__ vm_page_purgeable_wired_count ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_page_wire_count ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC17(
	vm_page_t	mem)
{
	vm_object_t	m_object;

	FUNC6(mem);

	FUNC9(mem->vmp_q_state != VM_PAGE_ON_FREE_Q);
	FUNC9(!mem->vmp_cleaning);
	m_object = FUNC7(mem);

	FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
	if (m_object) {
		FUNC14(m_object);
	}
	if (mem->vmp_laundry) {
		/*
		 * We may have to free a page while it's being laundered
		 * if we lost its pager (due to a forced unmount, for example).
		 * We need to call vm_pageout_steal_laundry() before removing
		 * the page from its VM object, so that we can remove it
		 * from its pageout queue and adjust the laundry accounting
		 */
		FUNC16(mem, TRUE);
		FUNC10(++c_laundry_pages_freed);
	}
	
	FUNC15(mem, TRUE);

	if (FUNC8(mem)) {
		FUNC9(mem->vmp_wire_count > 0);

		if (m_object) {

			FUNC5(m_object);
			FUNC3(m_object, mem);
			FUNC4(m_object, m_object->wire_tag);

			FUNC9(m_object->resident_page_count >=
			       m_object->wired_page_count);

			if (m_object->purgable == VM_PURGABLE_VOLATILE) {
				FUNC1(+1, &vm_page_purgeable_count);
				FUNC9(vm_page_purgeable_wired_count > 0);
				FUNC1(-1, &vm_page_purgeable_wired_count);
			}
			if ((m_object->purgable == VM_PURGABLE_VOLATILE ||
			     m_object->purgable == VM_PURGABLE_EMPTY) &&
			    m_object->vo_owner != TASK_NULL) {
				task_t		owner;
				int		ledger_idx_volatile;
				int		ledger_idx_nonvolatile;
				int		ledger_idx_volatile_compressed;
				int		ledger_idx_nonvolatile_compressed;
				boolean_t	do_footprint;

				owner = FUNC2(m_object);
				FUNC13(
					m_object,
					&ledger_idx_volatile,
					&ledger_idx_nonvolatile,
					&ledger_idx_volatile_compressed,
					&ledger_idx_nonvolatile_compressed,
					&do_footprint);
				/*
				 * While wired, this page was accounted
				 * as "non-volatile" but it should now
				 * be accounted as "volatile".
				 */
				/* one less "non-volatile"... */
				FUNC12(owner->ledger,
					     ledger_idx_nonvolatile,
					     PAGE_SIZE);
				if (do_footprint) {
					/* ... and "phys_footprint" */
					FUNC12(owner->ledger,
						     task_ledgers.phys_footprint,
						     PAGE_SIZE);
				}
				/* one more "volatile" */
				FUNC11(owner->ledger,
					      ledger_idx_volatile,
					      PAGE_SIZE);
			}
		}
		if (!mem->vmp_private && !mem->vmp_fictitious)
			vm_page_wire_count--;

		mem->vmp_q_state = VM_PAGE_NOT_ON_Q;
		mem->vmp_wire_count = 0;
		FUNC9(!mem->vmp_gobbled);
	} else if (mem->vmp_gobbled) {
		if (!mem->vmp_private && !mem->vmp_fictitious)
			vm_page_wire_count--;
		vm_page_gobble_count--;
	}
}