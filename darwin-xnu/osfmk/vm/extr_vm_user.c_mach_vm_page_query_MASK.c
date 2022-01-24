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
typedef  scalar_t__ vm_map_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 scalar_t__ VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(
	vm_map_t		map,
	mach_vm_offset_t	offset,
	int			*disposition,
	int			*ref_count)
{
	if (VM_MAP_NULL == map)
		return KERN_INVALID_ARGUMENT;

	return FUNC0(
		map,
		FUNC1(offset, PAGE_MASK),
		disposition, ref_count);
}