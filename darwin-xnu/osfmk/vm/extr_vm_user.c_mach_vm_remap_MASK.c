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
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC1(
	vm_map_t		target_map,
	mach_vm_offset_t	*address,
	mach_vm_size_t	size,
	mach_vm_offset_t	mask,
	int			flags,
	vm_map_t		src_map,
	mach_vm_offset_t	memory_address,
	boolean_t		copy,
	vm_prot_t		*cur_protection,
	vm_prot_t		*max_protection,
	vm_inherit_t		inheritance)
{
	return (FUNC0(target_map, address, size, mask, flags, src_map, memory_address,
					copy, cur_protection, max_protection, inheritance));
}