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
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/ * processor_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  kernel_map ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  processor_master ; 

processor_t
FUNC2(boolean_t is_boot_cpu)
{
	int		ret;
	processor_t	proc;

	if (is_boot_cpu)
		return &processor_master;

	ret = FUNC1(kernel_map, (vm_offset_t *) &proc, sizeof(*proc), VM_KERN_MEMORY_OSFMK);
	if (ret != KERN_SUCCESS)
		return NULL;

	FUNC0((void *) proc, sizeof(*proc));
	return proc;
}