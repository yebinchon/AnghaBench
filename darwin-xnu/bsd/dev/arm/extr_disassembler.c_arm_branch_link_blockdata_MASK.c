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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int FASTTRAP_T_B_COND ; 
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_INV ; 
 int FASTTRAP_T_LDM_PC ; 
 int FASTTRAP_T_STM_LR ; 
 scalar_t__ REG_PC ; 
 scalar_t__ REG_SP ; 

__attribute__((used)) static
int FUNC2(uint32_t instr)
{
	int branch = FUNC1(instr,25,0x1), link = FUNC1(instr,24,0x1), op = FUNC1(instr,20,0x1F), uses_pc = FUNC1(instr,15,0x1), uses_lr = FUNC1(instr,14,0x1);

	if (branch == 1) {
		if (link == 0)
			return FASTTRAP_T_B_COND;
		return FASTTRAP_T_INV;
	} else {
		/* Only emulate a use of the pc if it's a return from function: ldmia sp!, { ... pc } */
		if (op == 0x0B && FUNC0(instr) == REG_SP && uses_pc == 1)
			return FASTTRAP_T_LDM_PC;

		/* stmia sp!, { ... lr } doesn't touch the pc, but it is very common, so special case it */
		if (op == 0x12 && FUNC0(instr) == REG_SP && uses_lr == 1)
			return FASTTRAP_T_STM_LR;

		if (FUNC0(instr) != REG_PC && uses_pc == 0)
			return FASTTRAP_T_COMMON;
	}

	return FASTTRAP_T_INV;
}