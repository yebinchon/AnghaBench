#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  all; } ;
struct TYPE_5__ {int /*<<< orphan*/  PC; int /*<<< orphan*/  PR; int /*<<< orphan*/  MACL; int /*<<< orphan*/  MACH; int /*<<< orphan*/  VBR; int /*<<< orphan*/  GBR; TYPE_1__ SR; int /*<<< orphan*/  R; } ;
typedef  TYPE_2__ sh2regs_struct ;
typedef  int /*<<< orphan*/  SH2_struct ;

/* Variables and functions */
 int /*<<< orphan*/ * MSH2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_reg ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  slave_reg ; 

void FUNC8(SH2_struct *context, const sh2regs_struct *regs)
{
  if(context==MSH2) 
    FUNC7(master_reg, &(regs->R), 16*sizeof(int));
  else 
    FUNC7(slave_reg, &(regs->R), 16*sizeof(int));
  FUNC5(context, regs->SR.all);
  FUNC0(context, regs->GBR);
  FUNC6(context, regs->VBR);
  FUNC1(context, regs->MACH);
  FUNC2(context, regs->MACL);
  FUNC4(context, regs->PR);
  FUNC3(context, regs->PC);
}