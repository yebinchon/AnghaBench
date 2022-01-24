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
typedef  scalar_t__ ppnum_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int* pmap_phys_attributes ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 
 scalar_t__ vm_page_guard_addr ; 

void
FUNC6(
	ppnum_t		pn,
	int		bits)
{
	int		pai;

	FUNC4();
	FUNC3(pn != vm_page_fictitious_addr);
	if (pn == vm_page_guard_addr)
		return;

	pai = FUNC5(pn);

	if (!FUNC0(pai)) {
		/* Not a managed page.  */
		return;
	}

	FUNC1(pai);
	pmap_phys_attributes[pai] |= bits;
	FUNC2(pai);
}