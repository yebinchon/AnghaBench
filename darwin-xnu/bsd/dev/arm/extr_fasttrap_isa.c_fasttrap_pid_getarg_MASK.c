#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;
struct TYPE_3__ {scalar_t__ sp; int /*<<< orphan*/ * r; } ;
typedef  TYPE_1__ arm_saved_state_t ;

/* Variables and functions */
 int CPU_DTRACE_BADADDR ; 
 int CPU_DTRACE_NOFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

uint64_t
FUNC5(void *arg, dtrace_id_t id, void *parg, int argno,
		int aframes)
{
#pragma unused(arg, id, parg, aframes)
	arm_saved_state_t* regs = FUNC4(FUNC2());

	/* First four arguments are in registers */
	if (argno < 4)
		return regs->r[argno];

	/* Look on the stack for the rest */
	uint32_t value;
	uint32_t* sp = (uint32_t*) regs->sp;
	FUNC1(CPU_DTRACE_NOFAULT);
	value = FUNC3((user_addr_t) (sp+argno-4));
	FUNC0(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);

	return value;
}