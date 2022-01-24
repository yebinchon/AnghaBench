#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_3__ {int v; } ;
struct TYPE_4__ {int* pmac_write; int* pmac_read; int /*<<< orphan*/  emu_status; TYPE_1__ pmc; } ;

/* Variables and functions */
 int KRREG_PMC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SSP_PMC_SET ; 
 int dirty_regb ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 
 int /*<<< orphan*/  n_in_ops ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2(unsigned int op, int *pc, int imm)
{
	u32 pmcv, tmpv;
	if (!((op&0xfef0) == 0x08e0 && (FUNC0(*pc)&0xfef0) == 0x08e0)) return 0;

	// programming PMC:
	// ldi PMC, imm1
	// ldi PMC, imm2
	(*pc)++;
	pmcv = imm | (FUNC0((*pc)++) << 16);
	known_regs.pmc.v = pmcv;
	known_regb |= KRREG_PMC;
	dirty_regb |= KRREG_PMC;
	known_regs.emu_status |= SSP_PMC_SET;
	n_in_ops++;

	// check for possible reg programming
	tmpv = FUNC0(*pc);
	if ((tmpv & 0xfff8) == 0x08 || (tmpv & 0xff8f) == 0x80)
	{
		int is_write = (tmpv & 0xff8f) == 0x80;
		int reg = is_write ? ((tmpv>>4)&0x7) : (tmpv&0x7);
		if (reg > 4) FUNC1();
		if ((tmpv & 0x0f) != 0 && (tmpv & 0xf0) != 0) FUNC1();
		if (is_write)
			known_regs.pmac_write[reg] = pmcv;
		else
			known_regs.pmac_read[reg] = pmcv;
		known_regb |= is_write ? (1 << (reg+25)) : (1 << (reg+20));
		dirty_regb |= is_write ? (1 << (reg+25)) : (1 << (reg+20));
		known_regs.emu_status &= ~SSP_PMC_SET;
		(*pc)++;
		n_in_ops++;
		return 5;
	}

	FUNC1();
	return 4;
}