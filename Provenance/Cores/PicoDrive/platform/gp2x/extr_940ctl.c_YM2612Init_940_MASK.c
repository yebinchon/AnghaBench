#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  binpath ;
struct TYPE_7__ {scalar_t__ frame_count; } ;
struct TYPE_9__ {TYPE_1__ m; } ;
struct TYPE_8__ {int baseclock; int rate; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* CODE940_FILE ; 
 int /*<<< orphan*/  JOB940_INITALL ; 
 int PBTN_MBACK ; 
 int PBTN_MOK ; 
 TYPE_6__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ crashed_940 ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int FUNC6 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 TYPE_2__* g_screen_ptr ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * loaded_mp3 ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,unsigned char*,int) ; 
 int* memregl ; 
 int* memregs ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 TYPE_2__* shared_ctl ; 
 TYPE_2__* shared_data ; 
 scalar_t__ shared_mem ; 
 int /*<<< orphan*/  FUNC15 (int,int,char*) ; 

void FUNC16(int baseclock, int rate)
{
	static int oldrate;

	// HACK
	if (Pico.m.frame_count > 0 && !crashed_940 && rate == oldrate)
		return;

	FUNC13("YM2612Init_940()\n");
	FUNC13("Mem usage: shared_data: %i, shared_ctl: %i\n", sizeof(*shared_data), sizeof(*shared_ctl));

	FUNC14(1, 2);
	FUNC12(1);

	memregs[0x3B40>>1] = 0;      // disable DUALCPU interrupts for 920
	memregs[0x3B42>>1] = 1;      // enable  DUALCPU interrupts for 940

	memregl[0x4504>>2] = 0;        // make sure no FIQs will be generated
	memregl[0x4508>>2] = ~(1<<26); // unmask DUALCPU ints in the undocumented 940's interrupt controller


	if (crashed_940)
	{
		unsigned char ucData[1024];
		int nRead, nLen = 0;
		char binpath[512];
		FILE *fp;

		FUNC2(binpath, CODE940_FILE, sizeof(binpath));
		fp = FUNC5(binpath, "rb");
		if(!fp)
		{
			FUNC11(g_screen_ptr, 0, 320*240*2);
			FUNC15(10, 100, "failed to open required file:");
			FUNC15(10, 110, CODE940_FILE);
			FUNC7();
			FUNC8(PBTN_MOK|PBTN_MBACK, NULL, 100);
			FUNC13("failed to open %s\n", binpath);
			FUNC3(1);
		}

		while(1)
		{
			nRead = FUNC6(ucData, 1, 1024, fp);
			if(nRead <= 0)
				break;
			FUNC10(shared_mem + nLen, ucData, nRead);
			nLen += nRead;
		}
		FUNC4(fp);
		crashed_940 = 0;
	}

	FUNC11(shared_data, 0, sizeof(*shared_data));
	FUNC11(shared_ctl,  0, sizeof(*shared_ctl));

	/* cause local ym2612 to init REGS */
	FUNC0(baseclock, rate);

	FUNC9();

	loaded_mp3 = NULL;

	memregs[0x3B46>>1] = 0xffff; // clear pending DUALCPU interrupts for 940
	memregl[0x4500>>2] = 0xffffffff; // clear pending IRQs in SRCPND
	memregl[0x4510>>2] = 0xffffffff; // clear pending IRQs in INTPND

	/* start the 940 */
	FUNC14(0, 2);
	FUNC12(0);

	// YM2612ResetChip_940(); // will be done on JOB940_YM2612INIT

	/* now cause 940 to init it's ym2612 stuff */
	shared_ctl->baseclock = baseclock;
	shared_ctl->rate = rate;
	FUNC1(JOB940_INITALL);

	oldrate = rate;
}