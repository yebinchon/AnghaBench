#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* cpu_tlb_invalid; } ;
struct TYPE_3__ {void* cpu_tlb_invalid; } ;

/* Variables and functions */
 void* FALSE ; 
 TYPE_2__* FUNC0 (int) ; 
 int FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ pmap_pcid_ncpus ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void
FUNC10(void)
{
	int ccpu = FUNC1();
	FUNC7(FUNC6() == 0 || FUNC4() != 0);
	if (pmap_pcid_ncpus) {
		FUNC8();
		FUNC0(ccpu)->cpu_tlb_invalid = FALSE;
		FUNC9();
	} else {
		FUNC2()->cpu_tlb_invalid = FALSE;
		FUNC3();
	}

	FUNC5();
}