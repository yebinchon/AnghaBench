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
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FASTTRAP_T_COMMON ; 
 int FASTTRAP_T_INV ; 
 int FASTTRAP_T_MOV_PC_REG ; 
 scalar_t__ REG_PC ; 

__attribute__((used)) static
int FUNC4(uint32_t instr)
{
	int op1 = FUNC3(instr,20,0x1F), op2 = FUNC3(instr,7,0x1F), op3 = FUNC3(instr,5,0x3);

	if (op1 == 0x11 || op1 == 0x13 || op1 == 0x15 || op1 == 0x17) {
		/* These are comparison flag setting instructions and do not have RD */
		if (FUNC2(instr) != REG_PC && FUNC1(instr) != REG_PC)
			return FASTTRAP_T_COMMON;

		return FASTTRAP_T_INV;
	}

	/* The rest can, in theory, write or use the PC. The only one we instrument is mov pc, reg.
	 * movs pc, reg is a privileged instruction so we don't instrument that variant. The s bit
	 * is bit 0 of op1 and should be zero.
	 */
	if (op1 == 0x1A && op2 == 0 && op3 == 0 && FUNC0(instr) == REG_PC)
		return FASTTRAP_T_MOV_PC_REG;

	/* Any instruction at this point is a three register instruction or two register instruction with RN = 0 */
	if (FUNC2(instr) != REG_PC && FUNC0(instr) != REG_PC && FUNC1(instr) != REG_PC)
		return FASTTRAP_T_COMMON;

	return FASTTRAP_T_INV;
}