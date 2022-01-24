#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int dirtyPal; int frame_count; scalar_t__ pal; } ;
struct TYPE_6__ {int* reg; } ;
struct TYPE_10__ {TYPE_2__ m; TYPE_1__ video; } ;
struct TYPE_9__ {scalar_t__ changed; } ;
struct TYPE_8__ {scalar_t__ CPUclock; int EmuOpt; int Frameskip; } ;

/* Variables and functions */
 int EOPT_EN_SOUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int PAHW_MCD ; 
 scalar_t__ PGS_Menu ; 
 scalar_t__ PGS_Running ; 
 TYPE_5__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int PicoOpt ; 
 int /*<<< orphan*/ * PsndOut ; 
 TYPE_4__ SRam ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_3__ currentConfig ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ engineState ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 () ; 
 int* noticeMsg ; 
 int noticeMsgTime ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 () ; 
 int FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 () ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (unsigned int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 () ; 

void FUNC26(void)
{
	static int mp3_init_done = 0;
	char fpsbuff[24]; // fps count c string
	unsigned int tval, tval_thissec = 0; // timing
	int target_fps, target_frametime, lim_time, tval_diff, i, oldmodes = 0;
	int pframes_done, pframes_shown; // "period" frames, used for sync
	int  frames_done,  frames_shown, tval_fpsc = 0; // actual frames
	char *notice = NULL;

	FUNC10("entered emu_Loop()\n");

	fpsbuff[0] = 0;

	if (currentConfig.CPUclock != FUNC15()) {
		FUNC10("setting cpu clock to %iMHz... ", currentConfig.CPUclock);
		i = FUNC16(currentConfig.CPUclock);
		FUNC10(i ? "failed\n" : "done\n");
		currentConfig.CPUclock = FUNC15();
	}

	// make sure we are in correct mode
	FUNC25();
	FUNC6(1);
	Pico.m.dirtyPal = 1;
	oldmodes = ((Pico.video.reg[12]&1)<<2) ^ 0xc;

	// pal/ntsc might have changed, reset related stuff
	target_fps = Pico.m.pal ? 50 : 60;
	target_frametime = Pico.m.pal ? (1000000<<8)/50 : (1000000<<8)/60+1;
	reset_timing = 1;

	if (PicoAHW & PAHW_MCD) {
		// prepare CD buffer
		FUNC2();
		// mp3...
		if (!mp3_init_done) {
			i = FUNC12();
			mp3_init_done = 1;
			if (i) { engineState = PGS_Menu; return; }
		}
	}

	// prepare sound stuff
	PsndOut = NULL;
	if (currentConfig.EmuOpt & EOPT_EN_SOUND)
	{
		FUNC13();
	}

	FUNC18();
	pframes_shown = pframes_done =
	 frames_shown =  frames_done = 0;

	tval_fpsc = FUNC20();

	// loop?
	while (engineState == PGS_Running)
	{
		int modes;

		tval = FUNC20();
		if (reset_timing || tval < tval_fpsc) {
			//stdbg("timing reset");
			reset_timing = 0;
			tval_thissec = tval;
			pframes_shown = pframes_done = 0;
		}

		// show notice message?
		if (noticeMsgTime) {
			static int noticeMsgSum;
			if (tval - noticeMsgTime > 2000000) { // > 2.0 sec
				noticeMsgTime = 0;
				FUNC6(0);
				notice = 0;
			} else {
				int sum = noticeMsg[0]+noticeMsg[1]+noticeMsg[2];
				if (sum != noticeMsgSum) { FUNC6(0); noticeMsgSum = sum; }
				notice = noticeMsg;
			}
		}

		// check for mode changes
		modes = ((Pico.video.reg[12]&1)<<2)|(Pico.video.reg[1]&8);
		if (modes != oldmodes) {
			oldmodes = modes;
			FUNC6(1);
			FUNC21();
		}

		// second passed?
		if (tval - tval_fpsc >= 1000000)
		{
			if (currentConfig.EmuOpt & 2)
				FUNC23(fpsbuff, "%02i/%02i  ", frames_shown, frames_done);
			frames_done = frames_shown = 0;
			tval_fpsc += 1000000;
		}

		if (tval - tval_thissec >= 1000000)
		{
			// missing 1 frame?
			if (currentConfig.Frameskip < 0 && pframes_done < target_fps) {
				FUNC4(); pframes_done++; frames_done++;
			}

			tval_thissec += 1000000;

			if (currentConfig.Frameskip < 0) {
				pframes_done  -= target_fps; if (pframes_done  < 0) pframes_done  = 0;
				pframes_shown -= target_fps; if (pframes_shown < 0) pframes_shown = 0;
				if (pframes_shown > pframes_done) pframes_shown = pframes_done;
			} else {
				pframes_done = pframes_shown = 0;
			}
		}
#ifdef PFRAMES
		sprintf(fpsbuff, "%i", Pico.m.frame_count);
#endif

		lim_time = (pframes_done+1) * target_frametime;
		if (currentConfig.Frameskip >= 0) // frameskip enabled
		{
			for (i = 0; i < currentConfig.Frameskip; i++) {
				FUNC24();
				FUNC4(); pframes_done++; frames_done++;
				if (!(currentConfig.EmuOpt&0x40000)) { // do framelimitting if needed
					int tval_diff;
					tval = FUNC20();
					tval_diff = (int)(tval - tval_thissec) << 8;
					if (tval_diff < lim_time) // we are too fast
						FUNC22(tval + ((lim_time - tval_diff)>>8));
				}
				lim_time += target_frametime;
			}
		}
		else // auto frameskip
		{
			int tval_diff;
			tval = FUNC20();
			tval_diff = (int)(tval - tval_thissec) << 8;
			if (tval_diff > lim_time && (pframes_done/16 < pframes_shown))
			{
				// no time left for this frame - skip
				if (tval_diff - lim_time >= (300000<<8)) {
					reset_timing = 1;
					continue;
				}
				FUNC24();
				FUNC4(); pframes_done++; frames_done++;
				continue;
			}
		}

		FUNC24();

		if (!(PicoOpt&0x10))
			FUNC0();

		FUNC3();

		FUNC19(0,0);

		// check time
		tval = FUNC20();
		tval_diff = (int)(tval - tval_thissec) << 8;

		FUNC5(fpsbuff, notice, tval_diff > lim_time);

		if (currentConfig.Frameskip < 0 && tval_diff - lim_time >= (300000<<8)) { // slowdown detection
			reset_timing = 1;
		}
		else if (!(currentConfig.EmuOpt&0x40000) || currentConfig.Frameskip < 0)
		{
			// sleep if we are still too fast
			if (tval_diff < lim_time)
			{
				// we are too fast
				FUNC22(tval + ((lim_time - tval_diff) >> 8));
			}
		}

		pframes_done++; pframes_shown++;
		 frames_done++;  frames_shown++;
	}


	FUNC9(0);

	if (PicoAHW & PAHW_MCD) FUNC1();

	if (PsndOut != NULL) {
		FUNC14();
		PsndOut = NULL;
	}

	// save SRAM
	if ((currentConfig.EmuOpt & 1) && SRam.changed) {
		FUNC7("Writing SRAM/BRAM..");
		FUNC8(0, 1);
		SRam.changed = 0;
	}

	// clear fps counters and stuff
	FUNC11((int *)FUNC17() + 512*264*2/4, 0, 512*8*2/4);
}