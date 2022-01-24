#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  scalar_t__ memory_object_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_22__ {int /*<<< orphan*/  vm_compressor_failed; } ;
struct TYPE_21__ {scalar_t__ pager; scalar_t__ activity_in_progress; scalar_t__ purgable; int /*<<< orphan*/ * vo_owner; scalar_t__ vo_ledger_tag; scalar_t__ paging_offset; scalar_t__ pager_initialized; } ;
struct TYPE_20__ {scalar_t__ vmp_tabled; scalar_t__ vmp_offset; int /*<<< orphan*/  vmp_laundry; int /*<<< orphan*/  vmp_free_when_done; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MEMORY_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_2__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ VM_PURGABLE_DENY ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  compressions ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,void**,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  vm_pageout_dirty_no_pager ; 
 TYPE_3__ vm_pageout_vminfo ; 

kern_return_t
FUNC20(void **current_chead, char *scratch_buf, vm_page_t m)
{
	vm_object_t	object;
	memory_object_t	pager;
	int		compressed_count_delta;
	kern_return_t	retval;

	object = FUNC4(m);

	FUNC7(!m->vmp_free_when_done);
	FUNC7(!m->vmp_laundry);

	pager = object->pager;

	if (!object->pager_initialized || pager == MEMORY_OBJECT_NULL)  {

		FUNC0(0xe0400010 | DBG_FUNC_START, object, pager, 0, 0, 0);

		FUNC13(object);

		/*
		 * If there is no memory object for the page, create
		 * one and hand it to the compression pager.
		 */

		if (!object->pager_initialized)
			FUNC11(object, (vm_object_offset_t) 0, TRUE);
		if (!object->pager_initialized)
			FUNC12(object);

		pager = object->pager;

		if (!object->pager_initialized || pager == MEMORY_OBJECT_NULL) {
			/*
			 * Still no pager for the object,
			 * or the pager has been destroyed.
			 * Reactivate the page.
			 *
			 * Should only happen if there is no
			 * compression pager
			 */
			FUNC1(m);

			FUNC17();
			FUNC16(m);
			FUNC2(vm_pageout_dirty_no_pager, 1);
			FUNC19();

			/*
			 *	And we are done with it.
			 */
			FUNC10(object);
			FUNC15(object);

			return KERN_FAILURE;
		}
		FUNC15(object);

		FUNC0(0xe0400010 | DBG_FUNC_END, object, pager, 0, 0, 0);
	}
	FUNC7(object->pager_initialized && pager != MEMORY_OBJECT_NULL);
	FUNC7(object->activity_in_progress > 0);

	retval = FUNC9(
		pager,
		m->vmp_offset + object->paging_offset,
		FUNC3(m),
		current_chead,
		scratch_buf,
		&compressed_count_delta);

	FUNC13(object);

	FUNC7(object->activity_in_progress > 0);
	FUNC7(FUNC4(m) == object);
	FUNC7( !FUNC5(m));

	FUNC8(pager,
				  compressed_count_delta,
				  FALSE, /* shared_lock */
				  object);

	if (retval == KERN_SUCCESS) {
		/*
		 * If the object is purgeable, its owner's
		 * purgeable ledgers will be updated in
		 * vm_page_remove() but the page still
		 * contributes to the owner's memory footprint,
		 * so account for it as such.
		 */
		if ((object->purgable != VM_PURGABLE_DENY ||
		     object->vo_ledger_tag) &&
		    object->vo_owner != NULL) {
			/* one more compressed purgeable/tagged page */
			FUNC14(object,
							  +1);
		}
		FUNC6(compressions);

		if (m->vmp_tabled)
			FUNC18(m, TRUE);

	} else {
		FUNC1(m);

		FUNC17();

		FUNC16(m);
		vm_pageout_vminfo.vm_compressor_failed++;

		FUNC19();
	}
	FUNC10(object);
	FUNC15(object);

	return retval;
}