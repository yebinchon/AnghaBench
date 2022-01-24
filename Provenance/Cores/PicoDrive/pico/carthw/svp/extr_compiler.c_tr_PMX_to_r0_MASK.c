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
struct TYPE_4__ {int emu_status; int* pmac_read; TYPE_1__ pmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_COND_EQ ; 
 int /*<<< orphan*/  A_OP_ORR ; 
 int /*<<< orphan*/  A_OP_SUB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KRREG_PMC ; 
 int SSP_PMC_HAVE_ADDR ; 
 int SSP_PMC_SET ; 
 int SSP_WAIT_30FE06 ; 
 int SSP_WAIT_30FE08 ; 
 int dirty_regb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 
 int /*<<< orphan*/  ssp_pm_read ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(int reg)
{
	if ((known_regb & KRREG_PMC) && (known_regs.emu_status & SSP_PMC_SET))
	{
		known_regs.pmac_read[reg] = known_regs.pmc.v;
		known_regs.emu_status &= ~SSP_PMC_SET;
		known_regb |= 1 << (20+reg);
		dirty_regb |= 1 << (20+reg);
		return;
	}

	if ((known_regb & KRREG_PMC) && (known_regb & (1 << (20+reg))))
	{
		u32 pmcv = known_regs.pmac_read[reg];
		int mode = pmcv>>16;
		known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;

		if      ((mode & 0xfff0) == 0x0800)
		{
			FUNC2(1,7,0x488);		// rom_ptr
			FUNC6(0, (pmcv&0xfffff)<<1);
			FUNC1(0,1,0);		// ldrh r0, [r1, r0]
			known_regs.pmac_read[reg] += 1;
		}
		else if ((mode & 0x47ff) == 0x0018) // DRAM
		{
			int inc = FUNC7(mode);
			FUNC2(1,7,0x490);		// dram_ptr
			FUNC6(0, (pmcv&0xffff)<<1);
			FUNC1(0,1,0);		// ldrh r0, [r1, r0]
			if (reg == 4 && (pmcv == 0x187f03 || pmcv == 0x187f04)) // wait loop detection
			{
				int flag = (pmcv == 0x187f03) ? SSP_WAIT_30FE06 : SSP_WAIT_30FE08;
				FUNC9();
				FUNC2(1,7,0x484);			// ldr r1, [r7, #0x484] // emu_status
				FUNC4(0,0);
				FUNC0(A_COND_EQ,A_OP_SUB,0,11,11,22/2,1);	// subeq r11, r11, #1024
				FUNC0(A_COND_EQ,A_OP_ORR,0, 1, 1,24/2,flag>>8);	// orreq r1, r1, #SSP_WAIT_30FE08
				FUNC3(1,7,0x484);			// str r1, [r7, #0x484] // emu_status
			}
			known_regs.pmac_read[reg] += inc;
		}
		else
		{
			FUNC11();
		}
		known_regs.pmc.v = known_regs.pmac_read[reg];
		//known_regb |= KRREG_PMC;
		dirty_regb |= KRREG_PMC;
		dirty_regb |= 1 << (20+reg);
		hostreg_r[0] = hostreg_r[1] = -1;
		return;
	}

	known_regb &= ~KRREG_PMC;
	dirty_regb &= ~KRREG_PMC;
	known_regb &= ~(1 << (20+reg));
	dirty_regb &= ~(1 << (20+reg));

	// call the C code to handle this
	FUNC9();
	//tr_flush_dirty_pmcrs();
	FUNC10(0, reg);
	FUNC5(ssp_pm_read);
	FUNC8();
}