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
 scalar_t__ REG_PC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC5(uint16_t instr1, uint16_t instr2)
{
	int op1 = FUNC0(instr1,4,0x7), op2 = FUNC0(instr2,4,0xF);

	if ((op1 == 1 && op2 == 0xF) || (op1 == 0x3 && op2 == 0xF)) {
		/* Three register instruction */
		if (FUNC2(instr1,instr2) != REG_PC && FUNC1(instr1,instr2) != REG_PC && FUNC3(instr1,instr2) != REG_PC)
			return FASTTRAP_T_COMMON;
	} else {
		/* Four register instruction */
		if (FUNC2(instr1,instr2) != REG_PC && FUNC1(instr1,instr2) != REG_PC &&
		    FUNC4(instr1,instr2) != REG_PC && FUNC3(instr1,instr2) != REG_PC)
			return FASTTRAP_T_COMMON;
	}

	return FASTTRAP_T_INV;
}