#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {scalar_t__ poll; } ;
struct TYPE_3__ {int chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_SI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __si_interrupthandler ; 
 int* _siReg ; 
 int /*<<< orphan*/ * si_alarm ; 
 TYPE_2__ sicntrl ; 
 TYPE_1__* sipacket ; 

void FUNC6()
{
	u32 i;
	for(i=0;i<4;i++) {
		sipacket[i].chan = -1;
		FUNC4(&si_alarm[i]);
	}
	sicntrl.poll = 0;

	FUNC3(0);
	while(_siReg[13]&0x0001);
	_siReg[13] = 0x80000000;

	_siReg[15] &= ~0x80000000;		// permit exi clock to be set to 32MHz

	FUNC1(IRQ_PI_SI,__si_interrupthandler,NULL);
	FUNC5(FUNC0(IRQ_PI_SI));

	FUNC2(0);
	FUNC2(1);
	FUNC2(2);
	FUNC2(3);
}