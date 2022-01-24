#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_6__ {unsigned int NumRegs; TYPE_1__* Desc; scalar_t__ DiffLists; } ;
struct TYPE_5__ {scalar_t__ SuperRegs; } ;
typedef  TYPE_2__ MCRegisterInfo ;
typedef  int /*<<< orphan*/  MCRegisterClass ;
typedef  int /*<<< orphan*/  MCPhysReg ;
typedef  int /*<<< orphan*/  DiffListIterator ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*,int) ; 
 unsigned int FUNC5 (TYPE_2__ const*,int,unsigned int) ; 

unsigned FUNC6(const MCRegisterInfo *RI, unsigned Reg, unsigned SubIdx, const MCRegisterClass *RC)
{
	DiffListIterator iter;

	if (Reg >= RI->NumRegs) {
		return 0;
	}

	FUNC1(&iter, (MCPhysReg)Reg, RI->DiffLists + RI->Desc[Reg].SuperRegs);
	FUNC3(&iter);

	while(FUNC2(&iter)) {
		uint16_t val = FUNC0(&iter);
		if (FUNC4(RC, val) && Reg ==  FUNC5(RI, val, SubIdx))
			return val;

		FUNC3(&iter);
	}

	return 0;
}