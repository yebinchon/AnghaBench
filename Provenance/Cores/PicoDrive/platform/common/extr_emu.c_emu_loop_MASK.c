#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int frame_count; scalar_t__ pal; } ;
struct TYPE_8__ {TYPE_1__ m; } ;
struct TYPE_7__ {scalar_t__ changed; } ;
struct TYPE_6__ {int EmuOpt; int Frameskip; } ;

/* Variables and functions */
 int EOPT_EN_SRAM ; 
 int EOPT_EXT_FRMLIMIT ; 
 int EOPT_NO_FRMLIMIT ; 
 int EOPT_SHOW_FPS ; 
 int EOPT_VSYNC ; 
 scalar_t__ PGS_Running ; 
 TYPE_4__ Pico ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PicoSkipFrame ; 
 TYPE_3__ SRam ; 
 int STATUS_MSG_TIMEOUT ; 
 TYPE_2__ currentConfig ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ engineState ; 
 scalar_t__ flip_after_sync ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  main ; 
 int FUNC8 (int) ; 
 int* noticeMsg ; 
 int notice_msg_time ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,int,...) ; 

void FUNC22(void)
{
	int frames_done, frames_shown;	/* actual frames for fps counter */
	int target_frametime_x3;
	unsigned int timestamp_x3 = 0;
	unsigned int timestamp_aim_x3 = 0;
	unsigned int timestamp_fps_x3 = 0;
	char *notice_msg = NULL;
	char fpsbuff[24];
	int fskip_cnt = 0;

	fpsbuff[0] = 0;

	FUNC1();

	FUNC15();
	FUNC2();
	FUNC11();

	/* number of ticks per frame */
	if (Pico.m.pal)
		target_frametime_x3 = 3 * FUNC8(1000) / 50;
	else
		target_frametime_x3 = 3 * FUNC8(1000) / 60;

	reset_timing = 1;
	frames_done = frames_shown = 0;

	/* loop with resync every 1 sec. */
	while (engineState == PGS_Running)
	{
		int skip = 0;
		int diff;

		FUNC19(main);

		if (reset_timing) {
			reset_timing = 0;
			FUNC16();
			timestamp_aim_x3 = FUNC7() * 3;
			timestamp_fps_x3 = timestamp_aim_x3;
			fskip_cnt = 0;
		}
		else if (currentConfig.EmuOpt & EOPT_NO_FRMLIMIT) {
			timestamp_aim_x3 = FUNC7() * 3;
		}

		timestamp_x3 = FUNC7() * 3;

		// show notice_msg message?
		if (notice_msg_time != 0)
		{
			static int noticeMsgSum;
			if (timestamp_x3 - FUNC8(notice_msg_time) * 3
			     > FUNC8(STATUS_MSG_TIMEOUT) * 3)
			{
				notice_msg_time = 0;
				FUNC13();
				FUNC14();
				FUNC13(); /* Do it again in case of double buffering */
				notice_msg = NULL;
			}
			else {
				int sum = noticeMsg[0] + noticeMsg[1] + noticeMsg[2];
				if (sum != noticeMsgSum) {
					FUNC13();
					noticeMsgSum = sum;
				}
				notice_msg = noticeMsg;
			}
		}

		// second changed?
		if (timestamp_x3 - timestamp_fps_x3 >= FUNC8(1000) * 3)
		{
#ifdef BENCHMARK
			static int bench = 0, bench_fps = 0, bench_fps_s = 0, bfp = 0, bf[4];
			if (++bench == 10) {
				bench = 0;
				bench_fps_s = bench_fps;
				bf[bfp++ & 3] = bench_fps;
				bench_fps = 0;
			}
			bench_fps += frames_shown;
			sprintf(fpsbuff, "%02i/%02i/%02i", frames_shown, bench_fps_s, (bf[0]+bf[1]+bf[2]+bf[3])>>2);
			printf("%s\n", fpsbuff);
#else
			if (currentConfig.EmuOpt & EOPT_SHOW_FPS)
				FUNC21(fpsbuff, "%02i/%02i  ", frames_shown, frames_done);
#endif
			frames_shown = frames_done = 0;
			timestamp_fps_x3 += FUNC8(1000) * 3;
		}
#ifdef PFRAMES
		sprintf(fpsbuff, "%i", Pico.m.frame_count);
#endif

		diff = timestamp_aim_x3 - timestamp_x3;

		if (currentConfig.Frameskip >= 0) // frameskip enabled (or 0)
		{
			if (fskip_cnt < currentConfig.Frameskip) {
				fskip_cnt++;
				skip = 1;
			}
			else {
				fskip_cnt = 0;
			}
		}
		else if (diff < -target_frametime_x3)
		{
			/* no time left for this frame - skip */
			/* limit auto frameskip to 8 */
			if (frames_done / 8 <= frames_shown)
				skip = 1;
		}

		// don't go in debt too much
		while (diff < -target_frametime_x3 * 3) {
			timestamp_aim_x3 += target_frametime_x3;
			diff = timestamp_aim_x3 - timestamp_x3;
		}

		FUNC6();
		if (skip) {
			int do_audio = diff > -target_frametime_x3 * 2;
			PicoSkipFrame = do_audio ? 1 : 2;
			FUNC0();
			PicoSkipFrame = 0;
		}
		else {
			FUNC0();
			FUNC9(fpsbuff, notice_msg);
			frames_shown++;
		}
		frames_done++;
		timestamp_aim_x3 += target_frametime_x3;

		if (!skip && !flip_after_sync)
			FUNC14();

		/* frame limiter */
		if (!skip && !reset_timing
		    && !(currentConfig.EmuOpt & (EOPT_NO_FRMLIMIT|EOPT_EXT_FRMLIMIT)))
		{
			unsigned int timestamp = FUNC7();
			diff = timestamp_aim_x3 - timestamp * 3;

			// sleep or vsync if we are still too fast
			if (diff > target_frametime_x3 && (currentConfig.EmuOpt & EOPT_VSYNC)) {
				// we are too fast
				FUNC16();
				timestamp = FUNC7();
				diff = timestamp * 3 - timestamp_aim_x3;
			}
			if (diff > target_frametime_x3) {
				// still too fast
				FUNC17(timestamp + (diff - target_frametime_x3) / 3);
			}
		}

		if (!skip && flip_after_sync)
			FUNC14();

		FUNC18(main);
	}

	FUNC4(0);

	// save SRAM
	if ((currentConfig.EmuOpt & EOPT_EN_SRAM) && SRam.changed) {
		FUNC12("Writing SRAM/BRAM...");
		FUNC3(0, 1);
		SRam.changed = 0;
	}

	FUNC10();
	FUNC5();
}