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
struct TYPE_2__ {int poll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int* _siReg ; 
 TYPE_1__ sicntrl ; 

void FUNC3(u32 poll)
{
	u32 level,mask;
	FUNC1(level);
	poll >>= 24;
	mask = (poll>>4)&0x0f;
	sicntrl.poll &= ~mask;

	poll &= (0x03fffff0|mask);

	sicntrl.poll |= (poll&~0x03ffff00);
	FUNC0();
	_siReg[12] = sicntrl.poll;
	FUNC2(level);
}