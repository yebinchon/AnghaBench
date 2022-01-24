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
typedef  int u32 ;

/* Variables and functions */
 int CPU_MODES_INTERRUPT_MASK ; 
 int MSR_EE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(u32 level)
{
	register u32 msr;
	FUNC0(msr);
	if(!(level&CPU_MODES_INTERRUPT_MASK))
		msr |= MSR_EE;
	else
		msr &= ~MSR_EE;
	FUNC1(msr);
}