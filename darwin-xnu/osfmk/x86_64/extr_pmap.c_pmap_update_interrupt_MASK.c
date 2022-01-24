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
struct TYPE_2__ {scalar_t__ cpu_tlb_invalid; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PMAP__UPDATE_INTERRUPT ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(void)
{
        FUNC1(FUNC0(PMAP__UPDATE_INTERRUPT) | DBG_FUNC_START);

	if (FUNC2()->cpu_tlb_invalid)
		FUNC3();

        FUNC1(FUNC0(PMAP__UPDATE_INTERRUPT) | DBG_FUNC_END);
}