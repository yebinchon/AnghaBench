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
typedef  int /*<<< orphan*/  u32 ;
struct _timing {int /*<<< orphan*/  psbEven; int /*<<< orphan*/  psbOdd; int /*<<< orphan*/  prbEven; int /*<<< orphan*/  prbOdd; int /*<<< orphan*/  acv; int /*<<< orphan*/  equ; } ;
struct TYPE_2__ {int black; int /*<<< orphan*/  dispSizeY; int /*<<< orphan*/  adjustedDispPosY; struct _timing* timing; } ;

/* Variables and functions */
 TYPE_1__ HorVer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC3(bool black)
{
	u32 level;
	const struct _timing *curtiming;

	FUNC0(level);
	HorVer.black = black;
	curtiming = HorVer.timing;
	FUNC2(HorVer.adjustedDispPosY,HorVer.dispSizeY,curtiming->equ,curtiming->acv,curtiming->prbOdd,curtiming->prbEven,curtiming->psbOdd,curtiming->psbEven,HorVer.black);
	FUNC1(level);
}