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

__attribute__((used)) static
int FUNC3(uint16_t instr1, uint16_t instr2)
{
	int op = FUNC0(instr1,5,0xF), S = FUNC0(instr1,4,0x1);

	if (op == 0x2 || op == 0x3) {
		/* These allow REG_PC in RN, but it doesn't mean use the PC! */
		if (FUNC1(instr1,instr2) != REG_PC)
			return FASTTRAP_T_COMMON;
	}

	if (op == 0 || op == 0x4 || op == 0x8 || op == 0xD) {
		/* These are test instructions, if the sign bit is set and RD is the PC. */
		if (S && FUNC1(instr1,instr2) == REG_PC)
			return FASTTRAP_T_COMMON;
	}

	if (FUNC1(instr1,instr2) != REG_PC && FUNC2(instr1,instr2) != REG_PC)
		return FASTTRAP_T_COMMON;

	return FASTTRAP_T_INV;
}