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
 int FASTTRAP_T_INV ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC17(uint16_t instr1, uint16_t instr2)
{
	int op1 = FUNC0(instr1,11,0x3), op2 = FUNC0(instr1,4,0x7F), op = FUNC0(instr2,15,0x1);

	if (op1 == 0x1) {
		if ((op2 & 0x64) == 0)
			return FUNC11(instr1,instr2);

		if ((op2 & 0x64) == 0x04)
			return FUNC10(instr1,instr2);

		if ((op2 & 0x60) == 0x20)
			return FUNC6(instr1,instr2);

		if ((op2 & 0x40) == 0x40)
			return FUNC2(instr1,instr2);
	}

	if (op1 == 0x2) {
		if ((op2 & 0x20) == 0 && op == 0)
			return FUNC3(instr1,instr2);

		if ((op2 & 0x20) == 0x20 && op == 0)
			return FUNC4(instr1,instr2);

		if (op == 1)
			return FUNC1(instr1,instr2);
	}

	if (op1 == 0x3) {
		if ((op2 & 0x71) == 0)
			return FUNC15(instr1,instr2);

		if ((op2 & 0x71) == 0x10) {
			return FUNC16(FUNC7(instr1,instr2));
		}

		if ((op2 & 0x67) == 0x01)
			return FUNC8(instr1,instr2);

		if ((op2 & 0x67) == 0x03)
			return FUNC9(instr1,instr2);

		if ((op2 & 0x67) == 0x05)
			return FUNC12(instr1,instr2);

		if ((op2 & 0x67) == 0x07) {
			/* Undefined instruction */
			return FASTTRAP_T_INV;
		}

		if ((op2 & 0x70) == 0x20)
			return FUNC5(instr1,instr2);

		if ((op2 & 0x78) == 0x30)
			return FUNC14(instr1,instr2);

		if ((op2 & 0x78) == 0x38)
			return FUNC13(instr1,instr2);

		if ((op2 & 0x40) == 0x40)
			return FUNC2(instr1,instr2);
	}

	return FASTTRAP_T_INV;
}