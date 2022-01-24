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
typedef  int u32 ;
struct TYPE_2__ {int adjustedDispPosY; } ;

/* Variables and functions */
 TYPE_1__ HorVer ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 

u32 FUNC3()
{
	u32 level,nextfield;

	FUNC0(level);
	nextfield = FUNC2()^1;		//we've to swap the result because it shows us only the current field,so we've the next field either even or odd
	FUNC1(level);

	return nextfield^(HorVer.adjustedDispPosY&0x0001);	//if the YOrigin is at an odd position we've to swap it again, since the Fb registers are set swapped if this rule applies
}