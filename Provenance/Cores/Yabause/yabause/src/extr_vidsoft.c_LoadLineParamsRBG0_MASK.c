#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int specialprimode; } ;
typedef  TYPE_1__ vdp2draw_struct ;
typedef  int /*<<< orphan*/  screeninfo_struct ;
struct TYPE_10__ {int SFPRMD; } ;
typedef  TYPE_2__ Vdp2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*,int,int) ; 
 TYPE_2__* FUNC1 (int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC2(vdp2draw_struct * info, screeninfo_struct * sinfo, int line, Vdp2* lines)
{
   Vdp2 * regs;

   regs = FUNC1(line, lines);
   if (regs == NULL) return;
   FUNC0(regs, info, 0x10, 0x10);
   info->specialprimode = (regs->SFPRMD >> 8) & 0x3;
}