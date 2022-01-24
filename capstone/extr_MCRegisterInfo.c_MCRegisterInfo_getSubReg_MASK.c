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
typedef  unsigned int uint16_t ;
struct TYPE_5__ {unsigned int* SubRegIndices; TYPE_1__* Desc; scalar_t__ DiffLists; } ;
struct TYPE_4__ {int SubRegIndices; scalar_t__ SubRegs; } ;
typedef  TYPE_2__ MCRegisterInfo ;
typedef  int /*<<< orphan*/  MCPhysReg ;
typedef  int /*<<< orphan*/  DiffListIterator ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

unsigned FUNC4(const MCRegisterInfo *RI, unsigned Reg, unsigned Idx)
{
	DiffListIterator iter;
	const uint16_t *SRI = RI->SubRegIndices + RI->Desc[Reg].SubRegIndices;

	FUNC1(&iter, (MCPhysReg)Reg, RI->DiffLists + RI->Desc[Reg].SubRegs);
	FUNC3(&iter);

	while(FUNC2(&iter)) {
		if (*SRI == Idx)
			return FUNC0(&iter);
		FUNC3(&iter);
		++SRI;
	}

	return 0;
}