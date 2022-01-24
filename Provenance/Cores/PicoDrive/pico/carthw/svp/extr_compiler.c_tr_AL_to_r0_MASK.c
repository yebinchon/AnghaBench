#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int emu_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int KRREG_PMC ; 
 int SSP_AL ; 
 int SSP_PMC_HAVE_ADDR ; 
 int SSP_PMC_SET ; 
 int* hostreg_r ; 
 int known_regb ; 
 TYPE_1__ known_regs ; 

__attribute__((used)) static void FUNC4(int op)
{
	if (op == 0x000f) {
		if (known_regb & KRREG_PMC) {
			known_regs.emu_status &= ~(SSP_PMC_SET|SSP_PMC_HAVE_ADDR);
		} else {
			FUNC1(0,7,0x484);			// ldr r1, [r7, #0x484] // emu_status
			FUNC0(0,0,0,SSP_PMC_SET|SSP_PMC_HAVE_ADDR);
			FUNC3(0,7,0x484);
		}
	}

	if (hostreg_r[0] != (SSP_AL<<16)) {
		FUNC2(0, 5);	// mov  r0, r5
		hostreg_r[0] = SSP_AL<<16;
	}
}