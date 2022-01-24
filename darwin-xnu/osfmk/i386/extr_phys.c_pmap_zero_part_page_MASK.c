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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  addr64_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

void
FUNC3(
	ppnum_t         pn,
	vm_offset_t     offset,
	vm_size_t       len)
{
	FUNC0(pn != vm_page_fictitious_addr);
	FUNC0(pn != vm_page_guard_addr);
	FUNC0(offset + len <= PAGE_SIZE);
	FUNC1((addr64_t)(FUNC2(pn) + offset), (uint32_t)len);
}