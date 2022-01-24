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
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int) ; 
 int /*<<< orphan*/  KRREG_ST ; 
 int /*<<< orphan*/  SSP_ST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dirty_regb ; 
 int* hostreg_r ; 

__attribute__((used)) static void FUNC3(int const_val)
{
	// VR doesn't need much accuracy here..
	FUNC0(1, 0,   0, 0x67);		// and   r1, r0, #0x67
	FUNC0(6, 6, 8/2, 0xe0);		// and   r6, r6, #7<<29     @ preserve STACK
	FUNC1(6, 6, 1, 4);		// orr   r6, r6, r1, lsl #4
	FUNC2(SSP_ST);
	hostreg_r[1] = -1;
	dirty_regb &= ~KRREG_ST;
}