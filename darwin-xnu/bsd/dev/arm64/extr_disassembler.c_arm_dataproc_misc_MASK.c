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
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_INV ; 
 scalar_t__ REG_PC ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC12(uint32_t instr)
{
	int op = FUNC1(instr,25,0x1), op1 = FUNC1(instr,20,0x1F), op2 = FUNC1(instr,4,0xF);

	if (op == 0) {
		if ((op1 & 0x19) != 0x10 && (op2 & 0x1) == 0)
			return FUNC3(instr);

		if ((op1 & 0x19) != 0x10 && (op2 & 0x9) == 0x1)
			return FUNC4(instr);

		if ((op1 & 0x19) == 0x10 && (op2 & 0x8) == 0)
			return FUNC8(instr);

		if ((op1 & 0x19) == 0x19 && (op2 & 0x9) == 0x8)
			return FUNC7(instr);

		if ((op1 & 0x10) == 0 && op2 == 0x9)
			return FUNC10(instr);

		if ((op1 & 0x10) == 0x10 && op2 == 0x9)
			return FUNC11(instr);

		if ((op1 & 0x12) != 0x02 && (op2 == 0xB || (op2 & 0xD) == 0xD))
			return FUNC5(instr);

		if ((op1 & 0x12) == 0x02 && (op2 == 0xB || (op2 & 0xD) == 0xD))
			return FUNC6(instr);
	} else {
		if ((op1 & 0x19) != 0x10)
			return FUNC2(instr);

		if (op1 == 0x10) {
			/* 16 bit immediate load (mov (immed)) [encoding A2] */
			if (FUNC0(instr) != REG_PC)
				return FASTTRAP_T_COMMON;

			return FASTTRAP_T_INV;
		}

		if (op1 == 0x14) {
			/* high halfword 16 bit immediate load (movt) [encoding A1] */
			if (FUNC0(instr) != REG_PC)
				return FASTTRAP_T_COMMON;

			return FASTTRAP_T_INV;
		}

		if ((op1 & 0x1B) == 0x12)
			return FUNC9(instr);
	}

	return FASTTRAP_T_INV;
}