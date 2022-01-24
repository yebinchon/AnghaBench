#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  TYPE_3__* task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_25__ {int /*<<< orphan*/  ledger; } ;
struct TYPE_24__ {scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ purgable; scalar_t__ vo_owner; scalar_t__ all_reusable; } ;
struct TYPE_23__ {scalar_t__ vmp_wire_count; scalar_t__ vmp_q_state; scalar_t__ vmp_gobbled; int /*<<< orphan*/  vmp_fictitious; int /*<<< orphan*/  vmp_private; scalar_t__ vmp_reusable; scalar_t__ vmp_offset; scalar_t__ vmp_laundry; } ;
struct TYPE_22__ {int phys_footprint; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ PAGE_SIZE_64 ; 
 scalar_t__ TASK_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_CHECK_MEMORYSTATUS ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_IS_WIRED ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 scalar_t__ VM_PURGABLE_VOLATILE ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,TYPE_1__*) ; 
 TYPE_10__ task_ledgers ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int*,int*,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  vm_page_gobble_count ; 
 scalar_t__ vm_page_purgeable_count ; 
 scalar_t__ vm_page_purgeable_wired_count ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  vm_page_wire_count ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,scalar_t__) ; 

void
FUNC19(
	vm_page_t mem,
	vm_tag_t           tag,
	boolean_t	   check_memorystatus)
{
	vm_object_t	m_object;

	m_object = FUNC7(mem);

//	dbgLog(current_thread(), mem->vmp_offset, m_object, 1);	/* (TEST/DEBUG) */

	FUNC6(mem);
	if (m_object) {
		FUNC15(m_object);
	} else {
		/*
		 * In theory, the page should be in an object before it
		 * gets wired, since we need to hold the object lock
		 * to update some fields in the page structure.
		 * However, some code (i386 pmap, for example) might want
		 * to wire a page before it gets inserted into an object.
		 * That's somewhat OK, as long as nobody else can get to
		 * that page and update it at the same time.
		 */
	}
	FUNC0(&vm_page_queue_lock, LCK_MTX_ASSERT_OWNED);
	if ( !FUNC8(mem)) {

		if (mem->vmp_laundry)
			FUNC18(mem, TRUE);

		FUNC17(mem, TRUE);

		FUNC10(mem->vmp_wire_count == 0);
		mem->vmp_q_state = VM_PAGE_IS_WIRED;

		if (m_object) {

			FUNC5(m_object);
			FUNC3(m_object, mem);
			FUNC4(m_object, tag);

			FUNC10(m_object->resident_page_count >=
			       m_object->wired_page_count);
			if (m_object->purgable == VM_PURGABLE_VOLATILE) {
				FUNC10(vm_page_purgeable_count > 0);
				FUNC1(-1, &vm_page_purgeable_count);
				FUNC1(1, &vm_page_purgeable_wired_count);
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
				FUNC14(
					m_object,
					&ledger_idx_volatile,
					&ledger_idx_nonvolatile,
					&ledger_idx_volatile_compressed,
					&ledger_idx_nonvolatile_compressed,
					&do_footprint);
				/* less volatile bytes */
				FUNC12(owner->ledger,
					     ledger_idx_volatile,
					     PAGE_SIZE);
				/* more not-quite-volatile bytes */
				FUNC11(owner->ledger,
					      ledger_idx_nonvolatile,
					      PAGE_SIZE);
				if (do_footprint) {
					/* more footprint */
					FUNC11(owner->ledger,
						      task_ledgers.phys_footprint,
						      PAGE_SIZE);
				}
			}
			if (m_object->all_reusable) {
				/*
				 * Wired pages are not counted as "re-usable"
				 * in "all_reusable" VM objects, so nothing
				 * to do here.
				 */
			} else if (mem->vmp_reusable) {
				/*
				 * This page is not "re-usable" when it's
				 * wired, so adjust its state and the
				 * accounting.
				 */
				FUNC16(m_object,
						      mem->vmp_offset,
						      mem->vmp_offset+PAGE_SIZE_64,
						      FALSE);
			}
		}
		FUNC10(!mem->vmp_reusable);

		if (!mem->vmp_private && !mem->vmp_fictitious && !mem->vmp_gobbled)
			vm_page_wire_count++;
		if (mem->vmp_gobbled)
			vm_page_gobble_count--;
		mem->vmp_gobbled = FALSE;

		if (check_memorystatus == TRUE) {
			VM_CHECK_MEMORYSTATUS;
		}
	}
	FUNC10(!mem->vmp_gobbled);
	FUNC10(mem->vmp_q_state == VM_PAGE_IS_WIRED);
	mem->vmp_wire_count++;
	if (FUNC9(mem->vmp_wire_count == 0)) {
		FUNC13("vm_page_wire(%p): wire_count overflow", mem);
	}
	FUNC6(mem);
}