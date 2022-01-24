#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ addr; void* userclipY2; void* userclipX2; void* userclipY1; void* userclipX1; } ;
typedef  TYPE_1__ Vdp1 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC1(u8* ram, Vdp1*regs)
{
   regs->userclipX1 = FUNC0(ram, regs->addr + 0xC);
   regs->userclipY1 = FUNC0(ram, regs->addr + 0xE);
   regs->userclipX2 = FUNC0(ram, regs->addr + 0x14);
   regs->userclipY2 = FUNC0(ram, regs->addr + 0x16);
}