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
struct TYPE_3__ {int CMDPMOD; } ;
typedef  TYPE_1__ vdp1cmd_struct ;
typedef  int /*<<< orphan*/  Vdp1 ;

/* Variables and functions */
 int FUNC0 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ *) ; 

int FUNC2(int x, int y, Vdp1* regs, vdp1cmd_struct * cmd)
{
   if (cmd->CMDPMOD & 0x0400)//user clipping enabled
   {
      int is_user_clipped = FUNC1(x, y, regs);

      if (((cmd->CMDPMOD >> 9) & 0x3) == 0x3)//outside clipping mode
         is_user_clipped = !is_user_clipped;

      return is_user_clipped || FUNC0(x, y, regs);
   }
   else
   {
      return FUNC0(x, y, regs);
   }
}