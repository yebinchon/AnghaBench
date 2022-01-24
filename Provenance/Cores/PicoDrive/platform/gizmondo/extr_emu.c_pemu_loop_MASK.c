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
struct TYPE_7__ {int dirtyPal; int pal; int frame_count; } ;
struct TYPE_6__ {int* reg; } ;
struct TYPE_10__ {TYPE_2__ m; TYPE_1__ video; } ;
struct TYPE_9__ {scalar_t__ changed; } ;
struct TYPE_8__ {int EmuOpt; int Frameskip; int /*<<< orphan*/  volume; scalar_t__ scaling; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int PAHW_MCD ; 
 scalar_t__ PGS_Running ; 
 TYPE_5__ Pico ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int PicoOpt ; 
 int /*<<< orphan*/  PicoWriteSound ; 
 int PsndLen ; 
 int /*<<< orphan*/ * PsndOut ; 
 int PsndRate ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 TYPE_4__ SRam ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 TYPE_3__ currentConfig ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 scalar_t__ engineState ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/ * FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/ * giz_screen ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 char* noticeMsg ; 
 scalar_t__ noticeMsgTime ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int snd_all_samples ; 
 int snd_cbuf_samples ; 
 int /*<<< orphan*/ * snd_cbuff ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  updateSound ; 
 int /*<<< orphan*/  FUNC23 () ; 

void FUNC24(void)
{
	static int PsndRate_old = 0, PicoOpt_old = 0, pal_old = 0;
	char fpsbuff[24]; // fps count c string
	DWORD tval, tval_prev = 0, tval_thissec = 0; // timing
	int frames_done = 0, frames_shown = 0, oldmodes = 0, sec_ms = 1000;
	int target_fps, target_frametime, lim_time, tval_diff, i;
	char *notice = NULL;

	FUNC19("entered emu_Loop()\n");

	fpsbuff[0] = 0;

	// make sure we are in correct mode
	FUNC23();
	if (currentConfig.scaling) PicoOpt|=0x4000;
	else PicoOpt&=~0x4000;
	Pico.m.dirtyPal = 1;
	oldmodes = ((Pico.video.reg[12]&1)<<2) ^ 0xc;

	// pal/ntsc might have changed, reset related stuff
	target_fps = Pico.m.pal ? 50 : 60;
	target_frametime = Pico.m.pal ? (1000<<8)/50 : (1000<<8)/60+1;
	reset_timing = 1;

	// prepare CD buffer
	if (PicoAHW & PAHW_MCD) FUNC8();

	// prepare sound stuff
	PsndOut = NULL;
	if (currentConfig.EmuOpt & 4)
	{
		int ret, snd_excess_add, stereo;
		if (PsndRate != PsndRate_old || (PicoOpt&0x0b) != (PicoOpt_old&0x0b) || Pico.m.pal != pal_old) {
			FUNC10(Pico.m.frame_count ? 1 : 0);
		}
		stereo=(PicoOpt&8)>>3;
		snd_excess_add = ((PsndRate - PsndLen*target_fps)<<16) / target_fps;
		snd_cbuf_samples = (PsndRate<<stereo) * 16 / target_fps;
		FUNC19("starting audio: %i len: %i (ex: %04x) stereo: %i, pal: %i\n",
			PsndRate, PsndLen, snd_excess_add, stereo, Pico.m.pal);
		ret = FUNC4(PsndRate, snd_cbuf_samples, stereo);
		if (ret != 0) {
			FUNC19("FrameworkAudio_Init() failed: %i\n", ret);
			FUNC21(noticeMsg, "sound init failed (%i), snd disabled", ret);
			noticeMsgTime = FUNC6();
			currentConfig.EmuOpt &= ~4;
		} else {
			FUNC5(currentConfig.volume, currentConfig.volume);
			PicoWriteSound = updateSound;
			snd_cbuff = FUNC1();
			PsndOut = snd_cbuff + snd_cbuf_samples / 2; // start writing at the middle
			snd_all_samples = 0;
			PsndRate_old = PsndRate;
			PicoOpt_old  = PicoOpt;
			pal_old = Pico.m.pal;
		}
	}

	// loop?
	while (engineState == PGS_Running)
	{
		int modes;

		tval = FUNC6();
		if (reset_timing || tval < tval_prev) {
			//stdbg("timing reset");
			reset_timing = 0;
			tval_thissec = tval;
			frames_shown = frames_done = 0;
		}

		// show notice message?
		if (noticeMsgTime) {
			static int noticeMsgSum;
			if (tval - noticeMsgTime > 2000) { // > 2.0 sec
				noticeMsgTime = 0;
				FUNC13(0);
				notice = 0;
			} else {
				int sum = noticeMsg[0]+noticeMsg[1]+noticeMsg[2];
				if (sum != noticeMsgSum) { FUNC13(0); noticeMsgSum = sum; }
				notice = noticeMsg;
			}
		}

		// check for mode changes
		modes = ((Pico.video.reg[12]&1)<<2)|(Pico.video.reg[1]&8);
		if (modes != oldmodes) {
			oldmodes = modes;
			FUNC13(1);
		}

		// second passed?
		if (tval - tval_thissec >= sec_ms)
		{
#ifdef BENCHMARK
			static int bench = 0, bench_fps = 0, bench_fps_s = 0, bfp = 0, bf[4];
			if(++bench == 10) {
				bench = 0;
				bench_fps_s = bench_fps;
				bf[bfp++ & 3] = bench_fps;
				bench_fps = 0;
			}
			bench_fps += frames_shown;
			sprintf(fpsbuff, "%02i/%02i/%02i", frames_shown, bench_fps_s, (bf[0]+bf[1]+bf[2]+bf[3])>>2);
#else
			if(currentConfig.EmuOpt & 2)
				FUNC21(fpsbuff, "%02i/%02i", frames_shown, frames_done);
#endif
			//tval_thissec += 1000;
			tval_thissec += sec_ms;

			if (PsndOut != NULL)
			{
				/* some code which tries to sync things to audio clock, the dirty way */
				static int audio_skew_prev = 0;
				int audio_skew, adj, co = 9, shift = 7;
				audio_skew = snd_all_samples*2 - FUNC2();
				if (PsndRate == 22050) co = 10;
				if (PsndRate  > 22050) co = 11;
				if (PicoOpt&8) shift++;
				if (audio_skew < 0) {
					adj = -((-audio_skew) >> shift);
					if (audio_skew > -(6<<co)) adj>>=1;
					if (audio_skew > -(4<<co)) adj>>=1;
					if (audio_skew > -(2<<co)) adj>>=1;
					if (audio_skew > audio_skew_prev) adj>>=2; // going up already
				} else {
					adj = audio_skew >> shift;
					if (audio_skew < (6<<co)) adj>>=1;
					if (audio_skew < (4<<co)) adj>>=1;
					if (audio_skew < (2<<co)) adj>>=1;
					if (audio_skew < audio_skew_prev) adj>>=2;
				}
				audio_skew_prev = audio_skew;
				target_frametime += adj;
				sec_ms = (target_frametime * target_fps) >> 8;
				//stdbg("%i %i %i", audio_skew, adj, sec_ms);
				frames_done = frames_shown = 0;
			}
			else if (currentConfig.Frameskip < 0) {
				frames_done  -= target_fps; if (frames_done  < 0) frames_done  = 0;
				frames_shown -= target_fps; if (frames_shown < 0) frames_shown = 0;
				if (frames_shown > frames_done) frames_shown = frames_done;
			} else {
				frames_done = frames_shown = 0;
			}
		}
#ifdef PFRAMES
		sprintf(fpsbuff, "%i", Pico.m.frame_count);
#endif

		tval_prev = tval;
		lim_time = (frames_done+1) * target_frametime;
		if (currentConfig.Frameskip >= 0) // frameskip enabled
		{
			for (i = 0; i < currentConfig.Frameskip; i++) {
				FUNC22();
				FUNC11(); frames_done++;
				if (PsndOut) { // do framelimitting if sound is enabled
					int tval_diff;
					tval = FUNC6();
					tval_diff = (int)(tval - tval_thissec) << 8;
					if (tval_diff < lim_time) // we are too fast
						FUNC20(tval + ((lim_time - tval_diff)>>8));
				}
				lim_time += target_frametime;
			}
		}
		else // auto frameskip
		{
			int tval_diff;
			tval = FUNC6();
			tval_diff = (int)(tval - tval_thissec) << 8;
			if (tval_diff > lim_time)
			{
				// no time left for this frame - skip
				if (tval_diff - lim_time >= (300<<8)) {
					/* something caused a slowdown for us (disk access? cache flush?)
					 * try to recover by resetting timing... */
					reset_timing = 1;
					continue;
				}
				FUNC22();
				FUNC11(); frames_done++;
				continue;
			}
		}

		FUNC22();

		if (currentConfig.EmuOpt&0x80)
			/* be sure correct framebuffer is locked */
			giz_screen = FUNC17((currentConfig.EmuOpt&0x8000) ? 0 : 1);

		FUNC9();

		if (giz_screen == NULL)
			giz_screen = FUNC17((currentConfig.EmuOpt&0x8000) ? 0 : 1);

		FUNC12(fpsbuff, notice);

		if (giz_screen != NULL) {
			FUNC18();
			giz_screen = NULL;
		}

		if (currentConfig.EmuOpt&0x2000)
			FUNC0();

		if (currentConfig.EmuOpt&0x8000)
			FUNC16();

		// check time
		tval = FUNC6();
		tval_diff = (int)(tval - tval_thissec) << 8;

		if (currentConfig.Frameskip < 0 && tval_diff - lim_time >= (300<<8)) // slowdown detection
			reset_timing = 1;
		else if (PsndOut != NULL || currentConfig.Frameskip < 0)
		{
			// sleep if we are still too fast
			if (tval_diff < lim_time)
			{
				// we are too fast
				FUNC20(tval + ((lim_time - tval_diff) >> 8));
			}
		}

		frames_done++; frames_shown++;
	}


	if (PicoAHW & PAHW_MCD) FUNC7();

	if (PsndOut != NULL) {
		PsndOut = snd_cbuff = NULL;
		FUNC3();
	}

	// save SRAM
	if ((currentConfig.EmuOpt & 1) && SRam.changed) {
		FUNC15("Writing SRAM/BRAM..");
		FUNC14(0, 1);
		SRam.changed = 0;
	}
}