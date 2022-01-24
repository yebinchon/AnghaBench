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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ vm_kernel_addrperm_ext ; 

void
FUNC3(
	vm_offset_t addr,
	vm_offset_t *perm_addr)
{
	if (FUNC1(addr)) {
		*perm_addr = FUNC2(addr);
	} else if (FUNC0(addr)) {
		*perm_addr = addr + vm_kernel_addrperm_ext;
	} else {
		*perm_addr = addr;
	}
}