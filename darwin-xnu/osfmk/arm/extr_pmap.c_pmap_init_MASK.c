#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  copy_strategy; } ;

/* Variables and functions */
 scalar_t__ MAX_ASID ; 
 int /*<<< orphan*/  MEMORY_OBJECT_COPY_NONE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ hard_maxproc ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  mem_size ; 
 int /*<<< orphan*/  pmap_initialized ; 
 TYPE_1__* pmap_object ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(
	void)
{
	/*
	 *	Protect page zero in the kernel map.
	 *	(can be overruled by permanent transltion
	 *	table entries at page zero - see arm_vm_init).
	 */
	FUNC5(kernel_map, 0, PAGE_SIZE, TRUE, VM_PROT_NONE);

	pmap_initialized = TRUE;

	FUNC3();


	/*
	 *	Initialize the pmap object (for tracking the vm_page_t
	 *	structures for pages we allocate to be page tables in
	 *	pmap_expand().
	 */
	FUNC0(mem_size, pmap_object);
	pmap_object->copy_strategy = MEMORY_OBJECT_COPY_NONE;

	FUNC4();

	/*
	 * The value of hard_maxproc may have been scaled, make sure
	 * it is still less than the value of MAX_ASID.
	 */
	FUNC1(hard_maxproc < MAX_ASID);

#if CONFIG_PGTRACE
	pmap_pgtrace_init();
#endif
}