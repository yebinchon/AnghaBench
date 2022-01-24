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
 int /*<<< orphan*/  INTERPROCESSOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

void
FUNC4(int cpu)
{
#ifdef	MP_DEBUG
	if(cpu_datap(cpu)->cpu_signals & 6) {	/* (BRINGUP) */
		kprintf("i386_cpu_IPI: sending enter debugger signal (%08X) to cpu %d\n", cpu_datap(cpu)->cpu_signals, cpu);
	}
#endif	/* MP_DEBUG */

	FUNC3(cpu, FUNC0(INTERPROCESSOR));
}