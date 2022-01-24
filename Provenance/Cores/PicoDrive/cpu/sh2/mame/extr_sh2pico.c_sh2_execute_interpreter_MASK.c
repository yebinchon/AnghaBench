#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT32 ;
struct TYPE_22__ {int icount; int pending_level; int sr; int (* irq_callback ) (TYPE_1__*,int) ;scalar_t__ test_irq; scalar_t__ delay; scalar_t__ pc; scalar_t__ ppc; } ;
typedef  TYPE_1__ SH2 ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int,int) ; 
 int FUNC18 (TYPE_1__*,int) ; 

int FUNC19(SH2 *sh2, int cycles)
{
	UINT32 opcode;

	sh2->icount = cycles;

	if (sh2->icount <= 0)
		goto out;

	do
	{
		if (sh2->delay)
		{
			sh2->ppc = sh2->delay;
			opcode = FUNC0(sh2, sh2->delay);
			sh2->pc -= 2;
		}
		else
		{
			sh2->ppc = sh2->pc;
			opcode = FUNC0(sh2, sh2->pc);
		}

		sh2->delay = 0;
		sh2->pc += 2;

		switch (opcode & ( 15 << 12))
		{
		case  0<<12: FUNC1(sh2, opcode); break;
		case  1<<12: FUNC2(sh2, opcode); break;
		case  2<<12: FUNC3(sh2, opcode); break;
		case  3<<12: FUNC4(sh2, opcode); break;
		case  4<<12: FUNC5(sh2, opcode); break;
		case  5<<12: FUNC6(sh2, opcode); break;
		case  6<<12: FUNC7(sh2, opcode); break;
		case  7<<12: FUNC8(sh2, opcode); break;
		case  8<<12: FUNC9(sh2, opcode); break;
		case  9<<12: FUNC10(sh2, opcode); break;
		case 10<<12: FUNC11(sh2, opcode); break;
		case 11<<12: FUNC12(sh2, opcode); break;
		case 12<<12: FUNC13(sh2, opcode); break;
		case 13<<12: FUNC14(sh2, opcode); break;
		case 14<<12: FUNC15(sh2, opcode); break;
		default: FUNC16(sh2, opcode); break;
		}

		sh2->icount--;

		if (sh2->test_irq && !sh2->delay && sh2->pending_level > ((sh2->sr >> 4) & 0x0f))
		{
			int level = sh2->pending_level;
			int vector = sh2->irq_callback(sh2, level);
			FUNC17(sh2, level, vector);
			sh2->test_irq = 0;
		}

	}
	while (sh2->icount > 0 || sh2->delay);	/* can't interrupt before delay */

out:
	return sh2->icount;
}