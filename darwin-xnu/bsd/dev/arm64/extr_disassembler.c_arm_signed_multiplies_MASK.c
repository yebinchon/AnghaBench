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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_INV ; 
 scalar_t__ REG_PC ; 

__attribute__((used)) static
int FUNC5(uint32_t instr)
{
	int op1 = FUNC4(instr,20,0x7), op2 = FUNC4(instr,5,0x7);

	/* smlald, smlsld, smmls use RD in addition to RM, RS, and RN */
	if ((op1 == 0x4 && (op2 & 0x4) == 0) || (op1 == 0x5 && (op2 & 0x6) == 0x6)) {
		if (FUNC0(instr) == REG_PC)
			return FASTTRAP_T_INV;
	}

	if (FUNC1(instr) != REG_PC && FUNC3(instr) != REG_PC && FUNC2(instr) != REG_PC)
		return FASTTRAP_T_COMMON;

	return FASTTRAP_T_INV;
}