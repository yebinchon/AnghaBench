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
typedef  int /*<<< orphan*/  pv_entry_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  scalar_t__ pmap_paddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PVH_TYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/ ** FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ vm_page_fictitious_addr ; 

boolean_t
FUNC6(
	ppnum_t ppnum)
{
	pv_entry_t		**pv_h;
	int             pai;
	pmap_paddr_t    phys = FUNC4(ppnum);

	FUNC0(phys != vm_page_fictitious_addr);

	if (!FUNC2(phys))
		return (FALSE);

	pai = (int)FUNC1(phys);
	pv_h = FUNC3(pai);

	return (FUNC5(pv_h, PVH_TYPE_NULL));
}