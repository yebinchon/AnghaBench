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
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FASTTRAP_T_INV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(uint32_t instr)
{
	int cond = FUNC0(instr,28,0xF), op1 = FUNC0(instr,25,0x7), op = FUNC0(instr,4,0x1);

	if (cond == 0xF)
		return FUNC6(instr);

	if ((op1 & 0x6) == 0)
		return FUNC2(instr);

	if (op1 == 0x2)
		return FUNC3(instr);

	if (op1 == 0x3 && op == 0)
		return FUNC3(instr);

	if (op1 == 0x3 && op == 1)
		return FUNC4(instr);

	if ((op1 & 0x6) == 0x4)
		return FUNC1(instr);

	if ((op1 & 0x6) == 0x6)
		return FUNC5(instr);

	return FASTTRAP_T_INV;
}