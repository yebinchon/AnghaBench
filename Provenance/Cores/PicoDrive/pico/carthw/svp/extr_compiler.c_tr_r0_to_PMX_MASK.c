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
struct TYPE_3__ {int v; } ;
struct TYPE_4__ {int emu_status; int* pmac_write; TYPE_1__ pmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int KRREG_PMC ; 
 int SSP_PMC_HAVE_ADDR ; 
 int SSP_PMC_SET ; 
 int dirty_regb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 
 int /*<<< orphan*/  ssp_pm_write ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(int reg)
{
	if ((known_regb & KRREG_PMC) && (known_regs.emu_status & SSP_PMC_SET))
	{
		known_regs.pmac_write[reg] = known_regs.pmc.v;
		known_regs.emu_status &= ~SSP_PMC_SET;
		known_regb |= 1 << (25+reg);
		dirty_regb |= 1 << (25+reg);
		return;
	}

	if ((known_regb & KRREG_PMC) && (known_regb & (1 << (25+reg))))
	{
		int mode, addr;

		known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;

		mode = known_regs.pmac_write[reg]>>16;
		addr = known_regs.pmac_write[reg]&0xffff;
		if      ((mode & 0x43ff) == 0x0018) // DRAM
		{
			int inc = FUNC6(mode);
			if (mode & 0x0400) FUNC10();
			FUNC0(1,7,0x490);		// dram_ptr
			FUNC5(2, addr << 1);
			FUNC2(0,1,2);		// strh r0, [r1, r2]
			known_regs.pmac_write[reg] += inc;
		}
		else if ((mode & 0xfbff) == 0x4018) // DRAM, cell inc
		{
			if (mode & 0x0400) FUNC10();
			FUNC0(1,7,0x490);		// dram_ptr
			FUNC5(2, addr << 1);
			FUNC2(0,1,2);		// strh r0, [r1, r2]
			known_regs.pmac_write[reg] += (addr&1) ? 31 : 1;
		}
		else if ((mode & 0x47ff) == 0x001c) // IRAM
		{
			int inc = FUNC6(mode);
			FUNC0(1,7,0x48c);		// iram_ptr
			FUNC5(2, (addr&0x3ff) << 1);
			FUNC2(0,1,2);		// strh r0, [r1, r2]
			FUNC1(1,0,1);
			FUNC3(1,7,0x494);		// iram_dirty
			known_regs.pmac_write[reg] += inc;
		}
		else
			FUNC10();

		known_regs.pmc.v = known_regs.pmac_write[reg];
		//known_regb |= KRREG_PMC;
		dirty_regb |= KRREG_PMC;
		dirty_regb |= 1 << (25+reg);
		hostreg_r[1] = hostreg_r[2] = -1;
		return;
	}

	known_regb &= ~KRREG_PMC;
	dirty_regb &= ~KRREG_PMC;
	known_regb &= ~(1 << (25+reg));
	dirty_regb &= ~(1 << (25+reg));

	// call the C code to handle this
	FUNC8();
	//tr_flush_dirty_pmcrs();
	FUNC9(1, reg);
	FUNC4(ssp_pm_write);
	FUNC7();
}