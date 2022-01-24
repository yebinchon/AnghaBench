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
struct TYPE_4__ {int PRINA; int PRINB; int PRIR; int /*<<< orphan*/  TVMD; } ;
struct TYPE_3__ {scalar_t__* priosused; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 TYPE_2__* Vdp2Regs ; 
 int nbg0priority ; 
 int nbg1priority ; 
 int nbg2priority ; 
 int nbg3priority ; 
 int rbg0priority ; 
 TYPE_1__ vdp1draw_info ; 

void FUNC12(void)
{
   int i;

   FUNC5(Vdp2Regs->TVMD);
   FUNC0(Vdp2Regs->PRINA & 0x7);
   FUNC1((Vdp2Regs->PRINA >> 8) & 0x7);
   FUNC2(Vdp2Regs->PRINB & 0x7);
   FUNC3((Vdp2Regs->PRINB >> 8) & 0x7);
   FUNC4(Vdp2Regs->PRIR & 0x7);

    /* Draw all the screens, from the lowest priority one forward. */
    for(i = 1; i < 8; ++i)
    {
        if (nbg3priority == i)
            FUNC10();
        if (nbg2priority == i)
            FUNC9();
        if (nbg1priority == i)
            FUNC8();
        if (nbg0priority == i)
            FUNC7();
        if (rbg0priority == i)
            FUNC11();

        /* Draw anything in VDP1 that should be shown at this priority level. */
        if(vdp1draw_info.priosused[i])
            FUNC6(i);
        vdp1draw_info.priosused[i] = 0;
    }
}