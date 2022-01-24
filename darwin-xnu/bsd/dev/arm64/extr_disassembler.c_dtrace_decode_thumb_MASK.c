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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(uint32_t instr)
{
	uint16_t* pInstr = (uint16_t*) &instr;
	uint16_t hw1 = pInstr[0], hw2 = pInstr[1];

	int size = FUNC0(hw1,11,0x1F);

	if (size == 0x1D || size == 0x1E || size == 0x1F)
		return FUNC2(hw1,hw2);
	else
		return FUNC1(hw1);
}