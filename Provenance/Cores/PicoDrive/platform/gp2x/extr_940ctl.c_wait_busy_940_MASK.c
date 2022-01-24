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
struct TYPE_2__ {int loopc; int* vstarts; int last_lr; int lastjob; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGS_Menu ; 
 int crashed_940 ; 
 int /*<<< orphan*/  engineState ; 
 int* memregl ; 
 int* memregs ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 TYPE_1__* shared_ctl ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int job)
{
	int i;

	job--;
	for (i = 0; (memregs[0x3b46>>1] & (1<<job)) && i < 0x10000; i++)
		FUNC2(8*1024); // tested to be best for mp3 dec
	if (i < 0x10000) return;

	/* 940 crashed */
	FUNC1("940 crashed (cnt: %i, ve: ", shared_ctl->loopc);
	for (i = 0; i < 8; i++)
		FUNC1("%i ", shared_ctl->vstarts[i]);
	FUNC1(")\n");
	FUNC1("irq pending flags: DUALCPU %04x, SRCPND %08x (see 26), INTPND %08x\n",
		memregs[0x3b46>>1], memregl[0x4500>>2], memregl[0x4510>>2]);
	FUNC1("last lr: %08x, lastjob: %i\n", shared_ctl->last_lr, shared_ctl->lastjob);
	FUNC1("trying to interrupt..\n");
	memregs[0x3B3E>>1] = 0xffff;
	for (i = 0; memregs[0x3b46>>1] && i < 0x10000; i++)
		FUNC2(8*1024);
	FUNC1("i = 0x%x\n", i);
	FUNC1("irq pending flags: DUALCPU %04x, SRCPND %08x (see 26), INTPND %08x\n",
		memregs[0x3b46>>1], memregl[0x4500>>2], memregl[0x4510>>2]);
	FUNC1("last lr: %08x, lastjob: %i\n", shared_ctl->last_lr, shared_ctl->lastjob);

	FUNC0("940 crashed, too much overclock?");
	engineState = PGS_Menu;
	crashed_940 = 1;
}