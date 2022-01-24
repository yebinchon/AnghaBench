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
typedef  int /*<<< orphan*/  vm_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int MAP_ANON ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int MAP_PRIVATE ; 
 int MEMSIZE ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 scalar_t__ SOFT_FAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* memblock ; 
 int /*<<< orphan*/  memblock_share ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgsize ; 
 scalar_t__ test_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
	char *ptr;
	volatile char val;
	vm_prot_t curprot, maxprot;

	memblock = (char *)FUNC3(NULL, MEMSIZE, PROT_READ | PROT_WRITE, MAP_ANON | MAP_PRIVATE, -1, 0);
	T_QUIET; FUNC1((void *)memblock, MAP_FAILED, "mmap");

	if (test_type == SOFT_FAULT) {

		/* Fault in all the pages of the original region. */
		for(ptr = memblock; ptr < memblock + MEMSIZE; ptr += pgsize) {
			val = *ptr;
		}
		/* Remap the region so that subsequent accesses result in read soft faults. */
		T_QUIET; FUNC0(FUNC4(FUNC2(), (vm_address_t *)&memblock_share,
					MEMSIZE, 0, VM_FLAGS_ANYWHERE, FUNC2(), (vm_address_t)memblock, FALSE,
					&curprot, &maxprot, VM_INHERIT_DEFAULT), "vm_remap");
	}
}