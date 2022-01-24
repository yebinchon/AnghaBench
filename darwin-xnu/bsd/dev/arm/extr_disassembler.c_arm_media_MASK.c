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
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC9(uint32_t instr)
{
	int op1 = FUNC4(instr,20,0x1F), op2 = FUNC4(instr,5,0x7);

	if ((op1 & 0x1C) == 0)
		return FUNC6(instr);

	if ((op1 & 0x1C) == 0x04)
		return FUNC7(instr);

	if ((op1 & 0x18) == 0x08)
		return FUNC5(instr);

	if ((op1 & 0x18) == 0x10)
		return FUNC8(instr);

	if (op1 == 0x1F && op2 == 0x7) {
		/* Undefined instruction */
		return FASTTRAP_T_INV;
	}

	if (op1 == 0x18 && op2 == 0) {
		/* usad8 usada8 */
		/* The registers are named differently in the reference manual for this instruction
		 * but the following positions are correct */

		if (FUNC1(instr) != REG_PC && FUNC3(instr) != REG_PC && FUNC2(instr) != REG_PC)
			return FASTTRAP_T_COMMON;

		return FASTTRAP_T_INV;
	}

	if ((op1 & 0x1E) == 0x1C && (op2 & 0x3) == 0) {
		/* bfc bfi */
		if (FUNC0(instr) != REG_PC)
			return FASTTRAP_T_COMMON;

		return FASTTRAP_T_INV;
	}

	if (((op1 & 0x1E) == 0x1A || (op1 & 0x1E) == 0x1E) && ((op2 & 0x3) == 0x2)) {
		/* sbfx ubfx */
		if (FUNC1(instr) != REG_PC && FUNC0(instr) != REG_PC)
			return FASTTRAP_T_COMMON;

		return FASTTRAP_T_INV;
	}

	return FASTTRAP_T_INV;
}