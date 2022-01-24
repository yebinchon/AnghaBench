#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_address_t ;
typedef  scalar_t__ pmap_t ;
typedef  scalar_t__ pmap_paddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

vm_offset_t
FUNC5(
	pmap_t pmap,
	vm_map_address_t va)
{
	pmap_paddr_t    pa=0;

	if (pmap == kernel_pmap)
		pa = FUNC1(va);
	else if (pmap == FUNC4(FUNC0()->map))
		pa = FUNC2(va);

	if (pa) return pa;

	return FUNC3(pmap, va);
}