#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int* wpl_array_t ;
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  TYPE_3__* upl_t ;
typedef  TYPE_4__* upl_page_info_array_t ;
typedef  int upl_control_flags_t ;
typedef  scalar_t__ ppnum_t ;
typedef  void* boolean_t ;
struct TYPE_15__ {void* mark; void* needed; void* cs_nx; void* cs_tainted; void* cs_validated; void* speculative; void* device; int /*<<< orphan*/  precious; int /*<<< orphan*/  free_when_done; int /*<<< orphan*/  dirty; scalar_t__ absent; scalar_t__ phys_addr; } ;
struct TYPE_14__ {scalar_t__ highest_page; } ;
struct TYPE_13__ {scalar_t__ purgable; int resident_page_count; int /*<<< orphan*/  memq; int /*<<< orphan*/ * shadow; int /*<<< orphan*/ * copy; int /*<<< orphan*/ * pager; } ;
struct TYPE_12__ {scalar_t__ vmp_written_by_kernel; int vmp_offset; int /*<<< orphan*/  vmp_listq; int /*<<< orphan*/  vmp_precious; int /*<<< orphan*/  vmp_free_when_done; int /*<<< orphan*/  vmp_dirty; scalar_t__ vmp_absent; scalar_t__ vmp_reference; scalar_t__ vmp_laundry; scalar_t__ vmp_restart; scalar_t__ vmp_cleaning; scalar_t__ vmp_error; scalar_t__ vmp_fictitious; scalar_t__ vmp_busy; } ;

/* Variables and functions */
 void* FALSE ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 scalar_t__ TRUE ; 
 int UPL_COPYOUT_FROM ; 
 int UPL_REQUEST_FORCE_COHERENCY ; 
 int /*<<< orphan*/  VM_CHECK_MEMORYSTATUS ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ VM_PURGABLE_EMPTY ; 
 scalar_t__ VM_PURGABLE_VOLATILE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vm_page_queue_lock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

boolean_t
FUNC10(vm_object_t object, upl_t upl, upl_page_info_array_t user_page_list,
			    wpl_array_t lite_list, upl_control_flags_t cntrl_flags, vm_tag_t tag)
{
	vm_page_t	dst_page;
	unsigned int	entry;
	int		page_count;
	int		delayed_unlock = 0;
	boolean_t	retval = TRUE;
	ppnum_t		phys_page;

	FUNC4(object);
	FUNC2(object->purgable != VM_PURGABLE_VOLATILE);
	FUNC2(object->purgable != VM_PURGABLE_EMPTY);
	FUNC2(object->pager == NULL);
	FUNC2(object->copy == NULL);
	FUNC2(object->shadow == NULL);

	page_count = object->resident_page_count;
	dst_page = (vm_page_t)FUNC6(&object->memq);

	FUNC5();

	while (page_count--) {

		if (dst_page->vmp_busy ||
		    dst_page->vmp_fictitious ||
		    dst_page->vmp_absent ||
		    dst_page->vmp_error ||
		    dst_page->vmp_cleaning ||
		    dst_page->vmp_restart ||
		    dst_page->vmp_laundry) {
			retval = FALSE;
			goto done;
		}
		if ((cntrl_flags & UPL_REQUEST_FORCE_COHERENCY) && dst_page->vmp_written_by_kernel == TRUE) {
			retval = FALSE;
			goto done;
		}
		dst_page->vmp_reference = TRUE;

		FUNC9(dst_page, tag, FALSE);

		if (!(cntrl_flags & UPL_COPYOUT_FROM)) {
			FUNC0(dst_page, FALSE);
		}
		entry = (unsigned int)(dst_page->vmp_offset / PAGE_SIZE);
		FUNC2(entry >= 0 && entry < object->resident_page_count);
		lite_list[entry>>5] |= 1 << (entry & 31);

		phys_page = FUNC1(dst_page);

		if (phys_page > upl->highest_page)
			upl->highest_page = phys_page;

		if (user_page_list) {
			user_page_list[entry].phys_addr = phys_page;
			user_page_list[entry].absent    = dst_page->vmp_absent;
			user_page_list[entry].dirty     = dst_page->vmp_dirty;
			user_page_list[entry].free_when_done   = dst_page->vmp_free_when_done;
			user_page_list[entry].precious  = dst_page->vmp_precious;
			user_page_list[entry].device    = FALSE;
			user_page_list[entry].speculative = FALSE;
			user_page_list[entry].cs_validated = FALSE;
			user_page_list[entry].cs_tainted = FALSE;
			user_page_list[entry].cs_nx	= FALSE;
			user_page_list[entry].needed    = FALSE;
			user_page_list[entry].mark      = FALSE;
		}
		if (delayed_unlock++ > 256) {
			delayed_unlock = 0;
			FUNC3(&vm_page_queue_lock);

			VM_CHECK_MEMORYSTATUS;
		}
		dst_page = (vm_page_t)FUNC7(&dst_page->vmp_listq);
	}
done:
	FUNC8();

	VM_CHECK_MEMORYSTATUS;

	return (retval);
}