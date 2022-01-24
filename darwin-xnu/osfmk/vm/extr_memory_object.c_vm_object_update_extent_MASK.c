#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
struct vm_page_delayed_work {scalar_t__ dw_mask; } ;
typedef  int /*<<< orphan*/  memory_object_return_t ;
typedef  int memory_object_lock_result_t ;
typedef  scalar_t__ memory_object_cluster_size_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_15__ {scalar_t__ pager; scalar_t__ resident_page_count; } ;
struct TYPE_14__ {int /*<<< orphan*/  vmp_free_when_done; int /*<<< orphan*/  vmp_dirty; } ;

/* Variables and functions */
 int DEFAULT_DELAYED_WORK_LIMIT ; 
 int FUNC0 (int) ; 
 scalar_t__ DW_vm_page_free ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,scalar_t__,scalar_t__*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_UPL_TRANSFER_BYTES ; 
#define  MEMORY_OBJECT_LOCK_RESULT_DONE 131 
#define  MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK 130 
#define  MEMORY_OBJECT_LOCK_RESULT_MUST_FREE 129 
#define  MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN 128 
 int PAGE_SIZE ; 
 scalar_t__ PAGE_SIZE_64 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_WRITE_INVALIDATED ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  FUNC3 (struct vm_page_delayed_work*,TYPE_1__*,int) ; 
 TYPE_1__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,struct vm_page_delayed_work*,int) ; 
 TYPE_1__* FUNC9 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int
FUNC11(
        vm_object_t		object,
        vm_object_offset_t	offset,
	vm_object_offset_t	offset_end,
	vm_object_offset_t	*offset_resid,
	int			*io_errno,
        boolean_t		should_flush,
	memory_object_return_t	should_return,
        boolean_t		should_iosync, 
        vm_prot_t		prot)
{
        vm_page_t	m;
        int		retval = 0;
	vm_object_offset_t	paging_offset = 0;
	vm_object_offset_t	next_offset = offset;
        memory_object_lock_result_t	page_lock_result;
	memory_object_cluster_size_t	data_cnt = 0;
	struct vm_page_delayed_work	dw_array[DEFAULT_DELAYED_WORK_LIMIT];
	struct vm_page_delayed_work	*dwp;
	int		dw_count;
	int		dw_limit;
	int 		dirty_count;

        dwp = &dw_array[0];
        dw_count = 0;
	dw_limit = FUNC0(DEFAULT_DELAYED_WORK_LIMIT);
	dirty_count = 0;

	for (;
	     offset < offset_end && object->resident_page_count;
	     offset += PAGE_SIZE_64) {

	        /*
		 * Limit the number of pages to be cleaned at once to a contiguous
		 * run, or at most MAX_UPL_TRANSFER_BYTES
		 */
		if (data_cnt) {
			if ((data_cnt >= MAX_UPL_TRANSFER_BYTES) || (next_offset != offset)) {

				if (dw_count) {
					FUNC8(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
					dwp = &dw_array[0];
					dw_count = 0;
				}
				FUNC1(object, data_cnt,
						       paging_offset, offset_resid, io_errno, should_iosync);
				data_cnt = 0;
			}
		}
		while ((m = FUNC9(object, offset)) != VM_PAGE_NULL) {

			dwp->dw_mask = 0;
		        
			page_lock_result = FUNC6(m, should_return, should_flush, prot);

			if (data_cnt && page_lock_result != MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN) {
				/*
				 *	End of a run of dirty/precious pages.
				 */
				if (dw_count) {
					FUNC8(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
					dwp = &dw_array[0];
					dw_count = 0;
				}
				FUNC1(object, data_cnt,
						       paging_offset, offset_resid, io_errno, should_iosync);
				/*
				 * LIST_REQ_PAGEOUT_PAGES will drop the object lock which will
				 * allow the state of page 'm' to change... we need to re-lookup
				 * the current offset
				 */
				data_cnt = 0;
				continue;
			}

			switch (page_lock_result) {

			case MEMORY_OBJECT_LOCK_RESULT_DONE:
				break;

			case MEMORY_OBJECT_LOCK_RESULT_MUST_FREE:
				if (m->vmp_dirty == TRUE)
					dirty_count++;
				dwp->dw_mask |= DW_vm_page_free;
				break;

			case MEMORY_OBJECT_LOCK_RESULT_MUST_BLOCK:
				FUNC2(object, m, THREAD_UNINT);
				continue;

			case MEMORY_OBJECT_LOCK_RESULT_MUST_RETURN:
				if (data_cnt == 0)
					paging_offset = offset;

				data_cnt += PAGE_SIZE;
				next_offset = offset + PAGE_SIZE_64;

				/*
				 * wired pages shouldn't be flushed and
				 * since they aren't on any queue,
				 * no need to remove them
				 */
				if (!FUNC4(m)) {

					if (should_flush) {
						/*
						 * add additional state for the flush
						 */
						m->vmp_free_when_done = TRUE;
					}
					/*
					 * we use to remove the page from the queues at this
					 * point, but we do not believe that an msync
					 * should cause the 'age' of a page to be changed
					 *
					 *    else
					 *	dwp->dw_mask |= DW_VM_PAGE_QUEUES_REMOVE;
					 */
				}
				retval = 1;
				break;
			}
			if (dwp->dw_mask) {
				FUNC3(dwp, m, dw_count);

				if (dw_count >= dw_limit) {
					FUNC8(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);
					dwp = &dw_array[0];
					dw_count = 0;
				}
			}
			break;
		}
	}
	
	if (object->pager)
		FUNC7(FUNC5(), (dirty_count * PAGE_SIZE), TASK_WRITE_INVALIDATED, FUNC10(object->pager));
	/*
	 *	We have completed the scan for applicable pages.
	 *	Clean any pages that have been saved.
	 */
	if (dw_count)
		FUNC8(object, VM_KERN_MEMORY_NONE, &dw_array[0], dw_count);

	if (data_cnt) {
	        FUNC1(object, data_cnt,
				       paging_offset, offset_resid, io_errno, should_iosync);
	}
	return (retval);
}