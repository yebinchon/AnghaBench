#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_info_t ;
typedef  TYPE_1__* vm_page_info_basic_t ;
typedef  int /*<<< orphan*/  vm_page_info_basic_data_t ;
typedef  scalar_t__ vm_map_t ;
typedef  int vm_map_size_t ;
typedef  int mach_vm_size_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_2__ {int disposition; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int MAX_PAGE_RANGE_QUERY ; 
 int FUNC0 (int,int) ; 
 int PAGE_SHIFT ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  VM_PAGE_INFO_BASIC ; 
 int /*<<< orphan*/  VM_PAGE_INFO_BASIC_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (void*,int,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC8(
	vm_map_t		map,
	mach_vm_offset_t	address,
	mach_vm_size_t		size,
	mach_vm_address_t	dispositions_addr,
	mach_vm_size_t		*dispositions_count)
{
	kern_return_t		kr = KERN_SUCCESS;
	int			num_pages = 0, i = 0;
	mach_vm_size_t		curr_sz = 0, copy_sz = 0;
	mach_vm_size_t		disp_buf_req_size = 0, disp_buf_total_size = 0;
	mach_msg_type_number_t	count = 0;

	void			*info = NULL;
	void			*local_disp = NULL;;
	vm_map_size_t 		info_size = 0, local_disp_size = 0;
	mach_vm_offset_t	start = 0, end = 0;

	if (map == VM_MAP_NULL || dispositions_count == NULL) {
		return KERN_INVALID_ARGUMENT;
	}

	disp_buf_req_size = ( *dispositions_count * sizeof(int));
	start = FUNC6(address);
	end = FUNC5(address + size);

	if (end < start) {
		return KERN_INVALID_ARGUMENT;
	}

	if (disp_buf_req_size == 0 || (end == start)) {
		return KERN_SUCCESS;
	}

	/*
	 * For large requests, we will go through them
	 * MAX_PAGE_RANGE_QUERY chunk at a time.
	 */

	curr_sz = FUNC0(end - start, MAX_PAGE_RANGE_QUERY);
	num_pages = (int) (curr_sz >> PAGE_SHIFT);

	info_size = num_pages * sizeof(vm_page_info_basic_data_t);
	info = FUNC3(info_size);

	if (info == NULL) {
		return KERN_RESOURCE_SHORTAGE;
	}

	local_disp_size = num_pages * sizeof(int);
	local_disp = FUNC3(local_disp_size);

	if (local_disp == NULL) {
	
		FUNC4(info, info_size);
		info = NULL;
		return KERN_RESOURCE_SHORTAGE;
	}

	while (size) {

		count = VM_PAGE_INFO_BASIC_COUNT;
		kr = FUNC7(
				map,
				start,
				FUNC5(start + curr_sz),
				VM_PAGE_INFO_BASIC,
				(vm_page_info_t) info,
				&count);

		FUNC1(kr == KERN_SUCCESS);

		for (i = 0; i < num_pages; i++) {

			((int*)local_disp)[i] = ((vm_page_info_basic_t)info)[i].disposition;
		}

		copy_sz = FUNC0(disp_buf_req_size, num_pages * sizeof(int)/* an int per page */);
		kr = FUNC2(local_disp, (mach_vm_address_t)dispositions_addr, copy_sz);

		start += curr_sz;
		disp_buf_req_size -= copy_sz;
		disp_buf_total_size += copy_sz;

		if (kr != 0) {
			break;
		}

		if ((disp_buf_req_size == 0) || (curr_sz >= size)) {

			/*
			 * We might have inspected the full range OR
			 * more than it esp. if the user passed in
			 * non-page aligned start/size and/or if we
			 * descended into a submap. We are done here.
			 */

			size = 0;

		} else {

			dispositions_addr += copy_sz;

			size -= curr_sz;

			curr_sz = FUNC0(FUNC5(size), MAX_PAGE_RANGE_QUERY);
			num_pages = (int)(curr_sz >> PAGE_SHIFT);
		}
	}

	*dispositions_count = disp_buf_total_size / sizeof(int);

	FUNC4(local_disp, local_disp_size);
	local_disp = NULL;

	FUNC4(info, info_size);
	info = NULL;

	return kr;
}