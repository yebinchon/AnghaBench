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
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC7(uint16_t instr1, uint16_t instr2)
{
	int op1 = FUNC0(instr1,4,0xF), op2 = FUNC0(instr2,4,0xF);

	if (((0 <= op1) && (op1 <= 5)) && (op2 & 0x8) == 0x8) {
		if (FUNC2(instr1,instr2) != REG_PC && FUNC1(instr1,instr2) != REG_PC)
			return FASTTRAP_T_COMMON;
	}

	if ((op1 & 0x8) == 0 && op2 == 0) {
		if (FUNC2(instr1,instr2) != REG_PC && FUNC1(instr1,instr2) != REG_PC && FUNC3(instr1,instr2) != REG_PC)
			return FASTTRAP_T_COMMON;
	}

	if ((op1 & 0x8) == 0x8 && (op2 & 0xC) == 0)
		return FUNC5(instr1,instr2);

	if ((op1 & 0x8) == 0x8 && (op2 & 0xC) == 0x4)
		return FUNC6(instr1,instr2);

	if ((op1 & 0xC) == 0x8 && (op2 & 0xC) == 0x8)
		return FUNC4(instr1,instr2);

	return FASTTRAP_T_INV;
}