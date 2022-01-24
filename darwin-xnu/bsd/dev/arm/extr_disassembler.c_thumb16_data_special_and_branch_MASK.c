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
 int FASTTRAP_T_BX_REG ; 
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_CPY_PC ; 
 int FASTTRAP_T_INV ; 
 scalar_t__ REG_PC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC3(uint16_t instr)
{
	int opcode = FUNC0(instr,6,0xF);

	if (opcode == 0x4) {
		/* Unpredictable */
		return FASTTRAP_T_INV;
	} else if ((opcode & 0xC) == 0xC) {
		/* bx or blx */
		/* Only instrument the bx */
		if ((opcode & 0x2) == 0)
			return FASTTRAP_T_BX_REG;
		return FASTTRAP_T_INV;
	} else {
		/* Data processing on high registers, only instrument mov pc, reg */
		if ((opcode & 0xC) == 0x8 && FUNC1(instr) == REG_PC)
			return FASTTRAP_T_CPY_PC;

		if (FUNC2(instr) != REG_PC && FUNC1(instr) != REG_PC)
			return FASTTRAP_T_COMMON;
	}

	return FASTTRAP_T_INV;
}