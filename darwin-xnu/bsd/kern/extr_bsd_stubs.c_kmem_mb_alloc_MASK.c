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
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int KMA_KOBJECT ; 
 int KMA_LOMEM ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_MBUF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

vm_offset_t
FUNC2(vm_map_t mbmap, int size, int physContig, kern_return_t *err)
{
	vm_offset_t addr = 0;
	kern_return_t kr = KERN_SUCCESS;

	if (!physContig)
		kr = FUNC0(mbmap, &addr, size, 0, KMA_KOBJECT | KMA_LOMEM, VM_KERN_MEMORY_MBUF);
	else
		kr = FUNC1(mbmap, &addr, size, PAGE_MASK, 0xfffff, 0, KMA_KOBJECT | KMA_LOMEM, VM_KERN_MEMORY_MBUF);

	if (kr != KERN_SUCCESS)
		addr = 0;
	if (err)
		*err = kr;

	return addr;
}