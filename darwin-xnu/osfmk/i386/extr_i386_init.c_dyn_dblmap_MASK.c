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
 scalar_t__ PAGE_MASK ; 
 int /*<<< orphan*/  PMAP_EXPAND_OPTIONS_ALIASMAP ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ dblmap_max ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 

vm_offset_t FUNC2(vm_offset_t cva, vm_offset_t sz) {
	vm_offset_t ava = dblmap_max;

	FUNC0((sz & PAGE_MASK) == 0);
	FUNC0(cva != 0);

	FUNC1(ava, cva, cva + sz, VM_PROT_READ | VM_PROT_WRITE, PMAP_EXPAND_OPTIONS_ALIASMAP);
	dblmap_max += sz;
	return (ava - cva);
}