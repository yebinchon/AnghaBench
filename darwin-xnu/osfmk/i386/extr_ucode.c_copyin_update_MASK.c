#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  update_header ;
typedef  scalar_t__ uint64_t ;
struct intel_ucupdate {int total_size; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 struct intel_ucupdate* global_update ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(uint64_t inaddr)
{
	struct intel_ucupdate update_header;
	struct intel_ucupdate *update;
	vm_size_t size;
	kern_return_t ret;
	int error;

	/* Copy in enough header to peek at the size */
	error = FUNC0((user_addr_t)inaddr, (void *)&update_header, sizeof(update_header));
	if (error)
		return error;

	/* Get the actual, alleged size */
	size = update_header.total_size;

	/* huge bogus piece of data that somehow made it through? */
	if (size >= 1024 * 1024)
		return ENOMEM;

	/* Old microcodes? */
	if (size == 0)
		size = 2048; /* default update size; see SDM */

	/*
	 * create the buffer for the update
	 * It need only be aligned to 16-bytes, according to the SDM.
	 * This also wires it down
	 */
	ret = FUNC1(kernel_map, (vm_offset_t *)&update, size, VM_KERN_MEMORY_OSFMK);
	if (ret != KERN_SUCCESS)
		return ENOMEM;

	/* Copy it in */
	error = FUNC0((user_addr_t)inaddr, (void*)update, size);
	if (error) {
		FUNC2(kernel_map, (vm_offset_t)update, size);
		return error;
	}

	global_update = update;
	return 0;
}