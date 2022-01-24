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
typedef  TYPE_1__* vm_shared_region_t ;
typedef  scalar_t__ mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_4__ {int sr_ref_count; scalar_t__ sr_base_address; scalar_t__ sr_first_mapping; scalar_t__ sr_mapping_in_progress; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

kern_return_t
FUNC6(
	vm_shared_region_t	shared_region,
	mach_vm_offset_t	*start_address)
{
	kern_return_t		kr;
	mach_vm_offset_t	sr_base_address;
	mach_vm_offset_t	sr_first_mapping;

	FUNC0(
		("shared_region: -> start_address(%p)\n",
		 (void *)FUNC1(shared_region)));
	FUNC2(shared_region->sr_ref_count > 1);

	FUNC3();

	/*
	 * Wait if there's another thread establishing a mapping
	 * in this shared region right when we're looking at it.
	 * We want a consistent view of the map...
	 */
	while (shared_region->sr_mapping_in_progress) {
		/* wait for our turn... */
		FUNC2(shared_region->sr_ref_count > 1);
		FUNC4(&shared_region->sr_mapping_in_progress,
				       THREAD_UNINT);
	}
	FUNC2(! shared_region->sr_mapping_in_progress);
	FUNC2(shared_region->sr_ref_count > 1);
	
	sr_base_address = shared_region->sr_base_address;
	sr_first_mapping = shared_region->sr_first_mapping;

	if (sr_first_mapping == (mach_vm_offset_t) -1) {
		/* shared region is empty */
		kr = KERN_INVALID_ADDRESS;
	} else {
		kr = KERN_SUCCESS;
		*start_address = sr_base_address + sr_first_mapping;
	}

	FUNC5();
	
	FUNC0(
		("shared_region: start_address(%p) <- 0x%llx\n",
		 (void )FUNC1(shared_region),
		 (long long)shared_region->sr_base_address));

	return kr;
}