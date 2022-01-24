#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  TVMD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vdp2ColorRam ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Vdp2Lines ; 
 int /*<<< orphan*/  Vdp2Ram ; 
 TYPE_1__* Vdp2Regs ; 
 int /*<<< orphan*/  cell_scroll_data ; 

void FUNC6(int screen)
{
   FUNC0(Vdp2Regs->TVMD);

   switch(screen)
   {
      case 0:
         FUNC1(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 1:
         FUNC2(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 2:
         FUNC3(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 3:
         FUNC4(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
      case 4:
         FUNC5(Vdp2Lines, Vdp2Regs, Vdp2Ram, Vdp2ColorRam, cell_scroll_data);
         break;
   }
}