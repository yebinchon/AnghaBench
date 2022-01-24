#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  EXLE; int /*<<< orphan*/  IOSEL; scalar_t__ DDR; scalar_t__ PDR; int /*<<< orphan*/  SF; int /*<<< orphan*/  SR; scalar_t__ OREG; int /*<<< orphan*/  COMREG; scalar_t__ IREG; } ;
struct TYPE_4__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  SmpcInternal ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ SmpcInternalVars ; 
 TYPE_3__* SmpcRegs ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC3(FILE *fp)
{
   int offset;
   IOCheck_struct check = { 0, 0 };

   offset = FUNC1(fp, "SMPC", 3);

   // Write registers
   FUNC2(&check, (void *)SmpcRegs->IREG, sizeof(u8), 7, fp);
   FUNC2(&check, (void *)&SmpcRegs->COMREG, sizeof(u8), 1, fp);
   FUNC2(&check, (void *)SmpcRegs->OREG, sizeof(u8), 32, fp);
   FUNC2(&check, (void *)&SmpcRegs->SR, sizeof(u8), 1, fp);
   FUNC2(&check, (void *)&SmpcRegs->SF, sizeof(u8), 1, fp);
   FUNC2(&check, (void *)SmpcRegs->PDR, sizeof(u8), 2, fp);
   FUNC2(&check, (void *)SmpcRegs->DDR, sizeof(u8), 2, fp);
   FUNC2(&check, (void *)&SmpcRegs->IOSEL, sizeof(u8), 1, fp);
   FUNC2(&check, (void *)&SmpcRegs->EXLE, sizeof(u8), 1, fp);

   // Write internal variables
   FUNC2(&check, (void *)SmpcInternalVars, sizeof(SmpcInternal), 1, fp);

   // Write ID's of currently emulated peripherals(fix me)

   return FUNC0(fp, offset);
}