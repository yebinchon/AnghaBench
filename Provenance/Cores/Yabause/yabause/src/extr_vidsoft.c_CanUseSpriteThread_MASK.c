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
struct TYPE_2__ {int SPCTL; int /*<<< orphan*/  WCTLD; int /*<<< orphan*/  WCTLC; int /*<<< orphan*/  WCTLB; int /*<<< orphan*/  WCTLA; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* Vdp2Regs ; 

int FUNC1()
{
   //check if sprite window is enabled
   if ((Vdp2Regs->SPCTL & (1 << 4)) == 0)
      return 1;

   //check if any layers are using it
   if (FUNC0(Vdp2Regs->WCTLA) ||
      FUNC0(Vdp2Regs->WCTLB) ||
      FUNC0(Vdp2Regs->WCTLC) ||
      FUNC0(Vdp2Regs->WCTLD))
   {
      //thread cannot be used
      return 0;
   }

   return 1;
}