#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  unsigned int uint64_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {scalar_t__ purgable; scalar_t__ copy; scalar_t__ copy_strategy; scalar_t__ resident_page_count; scalar_t__ wired_page_count; scalar_t__ activity_in_progress; scalar_t__ paging_in_progress; int /*<<< orphan*/ * pager; } ;
typedef  int /*<<< orphan*/  SInt32 ;

/* Variables and functions */
 int C_DONT_BLOCK ; 
 int /*<<< orphan*/  DBG_MACH_VM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KDEBUG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MEMORY_OBJECT_COPY_NONE ; 
 int /*<<< orphan*/  OBJECT_PURGE_ONE ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REAP_PURGEABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_CONFIG_COMPRESSOR_IS_PRESENT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ VM_OBJECT_NULL ; 
 scalar_t__ VM_PURGABLE_DENY ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 scalar_t__ VM_PURGABLE_VOLATILE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int vm_page_purgeable_count ; 
 scalar_t__ vm_page_purgeable_wired_count ; 

uint64_t
FUNC11(vm_object_t object, int flags)
{
	unsigned int	object_page_count = 0, pgcount = 0;
	uint64_t	total_purged_pgcount = 0;
	boolean_t	skipped_object = FALSE;

        FUNC8(object);

	if (object->purgable == VM_PURGABLE_DENY)
		return 0;

	FUNC4(object->copy == VM_OBJECT_NULL);
	FUNC4(object->copy_strategy == MEMORY_OBJECT_COPY_NONE);

	/*
	 * We need to set the object's state to VM_PURGABLE_EMPTY *before*
	 * reaping its pages.  We update vm_page_purgeable_count in bulk
	 * and we don't want vm_page_remove() to update it again for each
	 * page we reap later.
	 *
	 * For the purgeable ledgers, pages from VOLATILE and EMPTY objects
	 * are all accounted for in the "volatile" ledgers, so this does not
	 * make any difference.
	 * If we transitioned directly from NONVOLATILE to EMPTY,
	 * vm_page_purgeable_count must have been updated when the object
	 * was dequeued from its volatile queue and the purgeable ledgers
	 * must have also been updated accordingly at that time (in
	 * vm_object_purgable_control()).
	 */
	if (object->purgable == VM_PURGABLE_VOLATILE) {
		unsigned int delta;
		FUNC4(object->resident_page_count >=
		       object->wired_page_count);
		delta = (object->resident_page_count -
			 object->wired_page_count);
		if (delta != 0) {
			FUNC4(vm_page_purgeable_count >=
			       delta);
			FUNC2(-delta,
				    (SInt32 *)&vm_page_purgeable_count);
		}
		if (object->wired_page_count != 0) {
			FUNC4(vm_page_purgeable_wired_count >=
			       object->wired_page_count);
			FUNC2(-object->wired_page_count,
				    (SInt32 *)&vm_page_purgeable_wired_count);
		}
		object->purgable = VM_PURGABLE_EMPTY;
	}
	FUNC4(object->purgable == VM_PURGABLE_EMPTY);
	
	object_page_count = object->resident_page_count;

	FUNC10(object, REAP_PURGEABLE);

	if (object->resident_page_count >= object_page_count) {
		total_purged_pgcount = 0;
	} else {
		total_purged_pgcount = object_page_count - object->resident_page_count;
	}

	if (object->pager != NULL) {

		FUNC4(VM_CONFIG_COMPRESSOR_IS_PRESENT);

		if (object->activity_in_progress == 0 &&
		    object->paging_in_progress == 0) {
			/*
			 * Also reap any memory coming from this object
			 * in the VM compressor.
			 *
			 * There are no operations in progress on the VM object
			 * and no operation can start while we're holding the
			 * VM object lock, so it's safe to reap the compressed
			 * pages and update the page counts.
			 */
			pgcount = FUNC6(object->pager);
			if (pgcount) {
				pgcount = FUNC7(object->pager, flags);
				FUNC5(object->pager,
							  -pgcount,
							  FALSE, /* shared */
							  object);
				FUNC9(object,
								  -pgcount);
			}
			if ( !(flags & C_DONT_BLOCK)) {
				FUNC4(FUNC6(object->pager)
				       == 0);
			}
		} else {
			/*
			 * There's some kind of paging activity in progress
			 * for this object, which could result in a page
			 * being compressed or decompressed, possibly while
			 * the VM object is not locked, so it could race
			 * with us.
			 *
			 * We can't really synchronize this without possibly 
			 * causing a deadlock when the compressor needs to
			 * allocate or free memory while compressing or
			 * decompressing a page from a purgeable object
			 * mapped in the kernel_map...
			 *
			 * So let's not attempt to purge the compressor
			 * pager if there's any kind of operation in
			 * progress on the VM object.
			 */
			skipped_object = TRUE;
		}
	}

	FUNC8(object);

	total_purged_pgcount += pgcount;

	FUNC0(KDEBUG_TRACE, (FUNC1(DBG_MACH_VM, OBJECT_PURGE_ONE)),
			      FUNC3(object), /* purged object */
			      object_page_count,
			      total_purged_pgcount,
			      skipped_object,
			      0);

	return total_purged_pgcount;
}