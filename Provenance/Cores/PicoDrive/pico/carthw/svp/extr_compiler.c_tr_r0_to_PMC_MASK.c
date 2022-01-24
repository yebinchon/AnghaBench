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
struct TYPE_3__ {int h; int l; int /*<<< orphan*/  v; } ;
struct TYPE_4__ {int emu_status; TYPE_1__ pmc; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_COND_EQ ; 
 int /*<<< orphan*/  A_COND_NE ; 
 int /*<<< orphan*/  A_OP_BIC ; 
 int /*<<< orphan*/  A_OP_ORR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int KRREG_PMC ; 
 int SSP_PMC ; 
 int SSP_PMC_HAVE_ADDR ; 
 int SSP_PMC_SET ; 
 int dirty_regb ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_2__ known_regs ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(int const_val)
{
	if ((known_regb & KRREG_PMC) && const_val != -1)
	{
		if (known_regs.emu_status & SSP_PMC_HAVE_ADDR) {
			known_regs.emu_status |= SSP_PMC_SET;
			known_regs.emu_status &= ~SSP_PMC_HAVE_ADDR;
			known_regs.pmc.h = const_val;
		} else {
			known_regs.emu_status |= SSP_PMC_HAVE_ADDR;
			known_regs.pmc.l = const_val;
		}
	}
	else
	{
		FUNC7();
		if (known_regb & KRREG_PMC) {
			FUNC6(1, known_regs.pmc.v);
			FUNC4(1,7,0x400+SSP_PMC*4);
			known_regb &= ~KRREG_PMC;
			dirty_regb &= ~KRREG_PMC;
		}
		FUNC3(1,7,0x484);			// ldr r1, [r7, #0x484] // emu_status
		FUNC0(2,7,24/2,4);		// add r2, r7, #0x400
		FUNC5(1, 0, SSP_PMC_HAVE_ADDR);
		FUNC1(A_COND_EQ,1,0,2,0,0,1,SSP_PMC*4);		// strxx r0, [r2, #SSP_PMC]
		FUNC1(A_COND_NE,1,0,2,0,0,1,SSP_PMC*4+2);
		FUNC2(A_COND_EQ,A_OP_ORR,0, 1, 1, 0, SSP_PMC_HAVE_ADDR); // orreq r1, r1, #..
		FUNC2(A_COND_NE,A_OP_BIC,0, 1, 1, 0, SSP_PMC_HAVE_ADDR); // bicne r1, r1, #..
		FUNC2(A_COND_NE,A_OP_ORR,0, 1, 1, 0, SSP_PMC_SET);       // orrne r1, r1, #..
		FUNC4(1,7,0x484);
		hostreg_r[1] = hostreg_r[2] = -1;
	}
}