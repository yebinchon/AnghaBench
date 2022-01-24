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
 int /*<<< orphan*/  FRAMEBUFF_WHOLESIZE ; 
 int /*<<< orphan*/ * gp2x_screenaddr_old ; 
 int /*<<< orphan*/ * gp2x_screens ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * memregs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	FUNC0(0, 320, 240);
	FUNC1(16, 0);

	memregs[0x290E>>1] = gp2x_screenaddr_old[0];
	memregs[0x2910>>1] = gp2x_screenaddr_old[1];
	memregs[0x2912>>1] = gp2x_screenaddr_old[2];
	memregs[0x2914>>1] = gp2x_screenaddr_old[3];

	FUNC2(gp2x_screens[0], FRAMEBUFF_WHOLESIZE);
}