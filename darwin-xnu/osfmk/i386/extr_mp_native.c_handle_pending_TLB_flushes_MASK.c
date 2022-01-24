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
struct TYPE_2__ {int cpu_signals; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MP_TLB_FLUSH ; 
 int /*<<< orphan*/  cpu_handle ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int volatile*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int volatile*) ; 
 scalar_t__ pmap_tlb_flush_timeout ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void)
{
	volatile int	*my_word = &FUNC2()->cpu_signals;

	if (FUNC3(MP_TLB_FLUSH, my_word)  && (pmap_tlb_flush_timeout == FALSE)) {
		FUNC0(cpu_handle, FUNC1(), MP_TLB_FLUSH);
		FUNC4(MP_TLB_FLUSH, my_word);
		FUNC5();
	}
}