#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int user_addr_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int pc; } ;
typedef  TYPE_1__ arm_saved_state64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void
FUNC3(arm_saved_state64_t *regs64, uint32_t instr, int is_tbz, user_addr_t *pc_out)
{
	uint64_t offset, regval;
	uint32_t bit_index, b5, b40, regno, bit_set;

	/* Compute offset */
	offset = FUNC1(instr, 5, 14);

	/* Extract bit index */
	b5 = (instr >> 31);
	b40 = ((instr >> 19) & 0x1f);
	bit_index = (b5 << 5) | b40;
	FUNC0(bit_index <= 63);

	/* Extract register */
	regno = (instr & 0x1f);
	FUNC0(regno <= 31);
	regval = FUNC2(regs64, regno, 1);

	/* Test bit */
	bit_set = ((regval & (1 << bit_index)) != 0);

	if ((is_tbz && (!bit_set)) || ((!is_tbz) && bit_set)) {
		/* Branch: unsigned addition so overflow defined */
		*pc_out = regs64->pc + offset;
	} else {
		/* Advance PC */
		*pc_out = regs64->pc + 4;
	}
}