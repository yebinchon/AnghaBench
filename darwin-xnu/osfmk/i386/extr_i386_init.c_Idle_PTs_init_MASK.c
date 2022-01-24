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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  INTEL_PTE_WRITE ; 
 scalar_t__ IdlePDPT ; 
 scalar_t__ IdlePML4 ; 
 scalar_t__ IdlePTD ; 
 scalar_t__ KERNEL_PML4_INDEX ; 
 scalar_t__ KPTphys ; 
 int NKPT ; 
 int NPGPTD ; 
 uintptr_t PAGE_SHIFT ; 
 int /*<<< orphan*/  VSTART_PHYSMAP_INIT ; 
 int /*<<< orphan*/  VSTART_SET_CR3 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,uintptr_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ physfree ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (uintptr_t) ; 

__attribute__((used)) static void
FUNC8(void)
{
	/* Allocate the "idle" kernel page tables: */
	KPTphys  = FUNC0(NKPT);		/* level 1 */
	IdlePTD  = FUNC0(NPGPTD);		/* level 2 */
	IdlePDPT = FUNC0(1);		/* level 3 */
	IdlePML4 = FUNC0(1);		/* level 4 */

	// Fill the lowest level with everything up to physfree
	FUNC3(KPTphys,
		INTEL_PTE_WRITE, 0, 0, (int)(((uintptr_t)physfree) >> PAGE_SHIFT));

	/* IdlePTD */
	FUNC3(IdlePTD,
		INTEL_PTE_WRITE, (uintptr_t)FUNC1(KPTphys), 0, NKPT);

	// IdlePDPT entries
	FUNC3(IdlePDPT,
		INTEL_PTE_WRITE, (uintptr_t)FUNC1(IdlePTD), 0, NPGPTD);

	// IdlePML4 single entry for kernel space.
	FUNC3(IdlePML4 + KERNEL_PML4_INDEX,
		INTEL_PTE_WRITE, (uintptr_t)FUNC1(IdlePDPT), 0, 1);
	
	FUNC6(VSTART_PHYSMAP_INIT);

	FUNC5();
	FUNC2();
	FUNC4();

	FUNC6(VSTART_SET_CR3);

	// Switch to the page tables..
	FUNC7((uintptr_t)FUNC1(IdlePML4));

}