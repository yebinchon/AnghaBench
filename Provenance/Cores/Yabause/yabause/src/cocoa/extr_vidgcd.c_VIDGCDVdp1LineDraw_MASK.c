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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ s16 ;
typedef  int /*<<< orphan*/  Vdp1 ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ localY; scalar_t__ localX; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  Vdp1Ram ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* Vdp1Regs ; 
 int /*<<< orphan*/  cmd ; 
 int FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  gouraudA ; 
 int /*<<< orphan*/  gouraudB ; 
 int /*<<< orphan*/  FUNC4 (double*,double*,double*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(u8 * ram, Vdp1 * regs, u8* back_framebuffer)
{
	int x1, y1, x2, y2;
	double redstep = 0, greenstep = 0, bluestep = 0;
	int length;

	FUNC2(&cmd, Vdp1Regs->addr, Vdp1Ram);

	x1 = (int)Vdp1Regs->localX + (int)((s16)FUNC1(Vdp1Ram, Vdp1Regs->addr + 0x0C));
	y1 = (int)Vdp1Regs->localY + (int)((s16)FUNC1(Vdp1Ram, Vdp1Regs->addr + 0x0E));
	x2 = (int)Vdp1Regs->localX + (int)((s16)FUNC1(Vdp1Ram, Vdp1Regs->addr + 0x10));
	y2 = (int)Vdp1Regs->localY + (int)((s16)FUNC1(Vdp1Ram, Vdp1Regs->addr + 0x12));

	length = FUNC3(x1, y1, x2, y2);
	FUNC4(&redstep,&bluestep,&greenstep,length, gouraudA, gouraudB);
	FUNC0(x1, y1, x2, y2, 0,0,redstep,greenstep,bluestep);
}