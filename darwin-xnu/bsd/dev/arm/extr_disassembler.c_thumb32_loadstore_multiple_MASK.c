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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_INV ; 
 int FASTTRAP_T_LDM_PC ; 
 int FASTTRAP_T_STM_LR ; 
 scalar_t__ REG_PC ; 
 scalar_t__ REG_SP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC2(uint16_t instr1, uint16_t instr2)
{
	int op = FUNC0(instr1,7,0x3), L = FUNC0(instr1,4,0x1), uses_pc = FUNC0(instr2,15,0x1), uses_lr = FUNC0(instr2,14,0x1);

	if (op == 0 || op == 0x3) {
		/* Privileged instructions: srs, rfe */
		return FASTTRAP_T_INV;
	}

	/* Only emulate a use of the pc if it's a return from function: ldmia sp!, { ... pc }, aka pop { ... pc } */
	if (op == 0x1 && L == 1 && FUNC1(instr1,instr2) == REG_SP && uses_pc == 1)
		return FASTTRAP_T_LDM_PC;

	/* stmia sp!, { ... lr }, aka push { ... lr } doesn't touch the pc, but it is very common, so special case it */
	if (op == 0x2 && L == 0 && FUNC1(instr1,instr2) == REG_SP && uses_lr == 1)
		return FASTTRAP_T_STM_LR;

	if (FUNC1(instr1,instr2) != REG_PC && uses_pc == 0)
		return FASTTRAP_T_COMMON;

	return FASTTRAP_T_INV;
}