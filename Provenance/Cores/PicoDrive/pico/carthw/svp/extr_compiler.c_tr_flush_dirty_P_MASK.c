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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int KRREG_P ; 
 int dirty_regb ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC3(void)
{
	// TODO: const regs
	if (!(dirty_regb & KRREG_P)) return;
	FUNC0(10, 4, 16);		// mov  r10, r4, asr #16
	FUNC1( 0, 4, 16);		// mov  r0,  r4, lsl #16
	FUNC0( 0, 0, 15);		// mov  r0,  r0, asr #15
	FUNC2(10, 0, 10);			// mul  r10, r0, r10
	dirty_regb &= ~KRREG_P;
	hostreg_r[0] = -1;
}