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
 scalar_t__ REG_PC ; 

__attribute__((used)) static
int FUNC4(uint32_t instr)
{
	int op1 = FUNC3(instr,20,0x7), op2 = FUNC3(instr,5,0x7);

	/* pkh, sel use RN in addition to RD and RM */
	if ((op1 == 0 && (op2 & 0x1) == 0) || (op1 == 0 && op2 == 0x5)) {
		if (FUNC2(instr) == REG_PC)
			return FASTTRAP_T_INV;
	}

	if (FUNC1(instr) != REG_PC && FUNC0(instr) != REG_PC)
		return FASTTRAP_T_COMMON;

	return FASTTRAP_T_INV;
}