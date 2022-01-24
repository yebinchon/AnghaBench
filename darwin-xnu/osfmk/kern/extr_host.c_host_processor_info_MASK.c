#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_size_t ;
typedef  int vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_size_t ;
typedef  scalar_t__ vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  TYPE_1__* processor_t ;
typedef  scalar_t__ processor_info_t ;
typedef  scalar_t__ processor_info_array_t ;
typedef  int /*<<< orphan*/  processor_flavor_t ;
typedef  unsigned int natural_t ;
typedef  unsigned int mach_msg_type_number_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ host_t ;
struct TYPE_4__ {struct TYPE_4__* processor_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HOST_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_IPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  ipc_kernel_map ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 unsigned int processor_count ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__,unsigned int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int*) ; 
 TYPE_1__* processor_list ; 
 int /*<<< orphan*/  processor_list_lock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC13(host_t host,
                    processor_flavor_t flavor,
                    natural_t * out_pcount,
                    processor_info_array_t * out_array,
                    mach_msg_type_number_t * out_array_count)
{
	kern_return_t result;
	processor_t processor;
	host_t thost;
	processor_info_t info;
	unsigned int icount, tcount;
	unsigned int pcount, i;
	vm_offset_t addr;
	vm_size_t size, needed;
	vm_map_copy_t copy;

	if (host == HOST_NULL)
		return (KERN_INVALID_ARGUMENT);

	result = FUNC6(flavor, &icount);
	if (result != KERN_SUCCESS)
		return (result);

	pcount = processor_count;
	FUNC1(pcount != 0);

	needed = pcount * icount * sizeof(natural_t);
	size = FUNC10(needed, FUNC0(ipc_kernel_map));
	result = FUNC3(ipc_kernel_map, &addr, size, VM_KERN_MEMORY_IPC);
	if (result != KERN_SUCCESS)
		return (KERN_RESOURCE_SHORTAGE);

	info = (processor_info_t)addr;
	processor = processor_list;
	tcount = icount;

	result = FUNC5(processor, flavor, &thost, info, &tcount);
	if (result != KERN_SUCCESS) {
		FUNC4(ipc_kernel_map, addr, size);
		return (result);
	}

	if (pcount > 1) {
		for (i = 1; i < pcount; i++) {
			FUNC7(&processor_list_lock);
			processor = processor->processor_list;
			FUNC8(&processor_list_lock);

			info += icount;
			tcount = icount;
			result = FUNC5(processor, flavor, &thost, info, &tcount);
			if (result != KERN_SUCCESS) {
				FUNC4(ipc_kernel_map, addr, size);
				return (result);
			}
		}
	}

	if (size != needed)
		FUNC2((char *)addr + needed, size - needed);

	result = FUNC12(ipc_kernel_map, FUNC11(addr, FUNC0(ipc_kernel_map)),
	                       FUNC10(addr + size, FUNC0(ipc_kernel_map)), FALSE);
	FUNC1(result == KERN_SUCCESS);
	result = FUNC9(ipc_kernel_map, (vm_map_address_t)addr, (vm_map_size_t)needed, TRUE, &copy);
	FUNC1(result == KERN_SUCCESS);

	*out_pcount = pcount;
	*out_array = (processor_info_array_t)copy;
	*out_array_count = pcount * icount;

	return (KERN_SUCCESS);
}