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
struct TYPE_2__ {scalar_t__ addr; void* localY; void* localX; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  Vdp1Ram ; 
 TYPE_1__* Vdp1Regs ; 

__attribute__((used)) static void FUNC1(void)  {
    Vdp1Regs->localX = FUNC0(Vdp1Ram, Vdp1Regs->addr + 0x0C);
    Vdp1Regs->localY = FUNC0(Vdp1Ram, Vdp1Regs->addr + 0x0E);
}