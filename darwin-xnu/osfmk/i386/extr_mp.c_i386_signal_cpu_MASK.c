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
typedef  int uint64_t ;
typedef  scalar_t__ mp_sync_t ;
typedef  int /*<<< orphan*/  mp_event_t ;
struct TYPE_2__ {int cpu_signals; int /*<<< orphan*/  cpu_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_TLB_FLUSH ; 
 scalar_t__ SYNC ; 
 int TRACE_MP_TLB_FLUSH ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  cpu_signal ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int volatile*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int volatile*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 () ; 

void
FUNC10(int cpu, mp_event_t event, mp_sync_t mode)
{
	volatile int	*signals = &FUNC3(cpu)->cpu_signals;
	uint64_t	tsc_timeout;

	
	if (!FUNC3(cpu)->cpu_running)
		return;

	if (event == MP_TLB_FLUSH)
	        FUNC2(TRACE_MP_TLB_FLUSH | DBG_FUNC_START, cpu, 0, 0, 0, 0);

	FUNC1(cpu_signal, cpu, event);
	
	FUNC7(event, signals);
	FUNC5(cpu);
	if (mode == SYNC) {
	   again:
		tsc_timeout = !FUNC8() ?
					FUNC9() + (1000*1000*1000) :
					~0ULL;
		while (FUNC6(event, signals) && FUNC9() < tsc_timeout) {
			FUNC4();
		}
		if (FUNC6(event, signals)) {
			FUNC0("i386_signal_cpu(%d, 0x%x, SYNC) timed out\n",
				cpu, event);
			goto again;
		}
	}
	if (event == MP_TLB_FLUSH)
	        FUNC2(TRACE_MP_TLB_FLUSH | DBG_FUNC_END, cpu, 0, 0, 0, 0);
}