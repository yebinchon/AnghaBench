#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
#define  AKEY_COLDSTART 135 
#define  AKEY_EXIT 134 
#define  AKEY_PBI_BB_MENU 133 
#define  AKEY_SCREENSHOT 132 
#define  AKEY_SCREENSHOT_INTERLACE 131 
#define  AKEY_TURBO 130 
#define  AKEY_UI 129 
#define  AKEY_WARMSTART 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* Atari800_collisions_in_skipped_frames ; 
 void* Atari800_display_screen ; 
 scalar_t__ Atari800_nframes ; 
 int Atari800_refresh_rate ; 
 int Atari800_turbo ; 
 scalar_t__ BENCHMARK ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int INPUT_key_code ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (double) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 void* TRUE ; 
 int /*<<< orphan*/  UI_MENU_MONITOR ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  UI_alt_function ; 
 double FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 double benchmark_start_time ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*,scalar_t__,double) ; 
 void* sigint_flag ; 

void FUNC27(void)
{
#ifndef BASIC
	static int refresh_counter = 0;

#ifdef HAVE_SIGNAL
	if (sigint_flag) {
		sigint_flag = FALSE;
		INPUT_key_code = AKEY_UI;
		UI_alt_function = UI_MENU_MONITOR;
	}
#endif /* HAVE_SIGNAL */

	switch (INPUT_key_code) {
	case AKEY_COLDSTART:
		FUNC1();
		break;
	case AKEY_WARMSTART:
		FUNC5();
		break;
	case AKEY_EXIT:
		FUNC3(FALSE);
		FUNC25(0);
	case AKEY_TURBO:
		Atari800_turbo = !Atari800_turbo;
		break;
	case AKEY_UI:
#ifdef SOUND
		Sound_Pause();
#endif
		FUNC20();
#ifdef SOUND
		Sound_Continue();
#endif
		break;
#ifndef CURSES_BASIC
	case AKEY_SCREENSHOT:
		FUNC16(FALSE);
		break;
	case AKEY_SCREENSHOT_INTERLACE:
		FUNC16(TRUE);
		break;
#endif /* CURSES_BASIC */
	case AKEY_PBI_BB_MENU:
#ifdef PBI_BB
		PBI_BB_Menu();
#endif
		break;
	default:
		break;
	}
#endif /* BASIC */

#ifdef PBI_BB
	PBI_BB_Frame(); /* just to make the menu key go up automatically */
#endif
#if defined(PBI_XLD) || defined (VOICEBOX)
	VOTRAXSND_Frame(); /* for the Votrax */
#endif
	FUNC6();
#ifndef BASIC
	FUNC9();
#endif
	FUNC7();

#ifdef BASIC
	basic_frame();
#else /* BASIC */
	if (++refresh_counter >= Atari800_refresh_rate) {
		refresh_counter = 0;
#ifdef USE_CURSES
		curses_clear_screen();
#endif
#ifdef CURSES_BASIC
		basic_frame();
#else
		FUNC0(TRUE);
		FUNC8();
		FUNC14(FUNC21());
		FUNC15();
		FUNC13();
#endif /* CURSES_BASIC */
#ifdef DONT_DISPLAY
		Atari800_display_screen = FALSE;
#else
		Atari800_display_screen = TRUE;
#endif /* DONT_DISPLAY */
	}
	else {
#if defined(VERY_SLOW) || defined(CURSES_BASIC)
		basic_frame();
#else
		FUNC0(Atari800_collisions_in_skipped_frames);
#endif
		Atari800_display_screen = FALSE;
	}
#endif /* BASIC */
	FUNC12();
#ifdef SOUND
	Sound_Update();
#endif
	Atari800_nframes++;
#ifdef BENCHMARK
	if (Atari800_nframes >= BENCHMARK) {
		double benchmark_time = Util_time() - benchmark_start_time;
		Atari800_ErrExit();
		printf("%d frames emulated in %.2f seconds\n", BENCHMARK, benchmark_time);
		exit(0);
	}
#else

#ifdef ALTERNATE_SYNC_WITH_HOST
	if (refresh_counter == 0)
#endif
		if (Atari800_turbo) {
			/* No need to draw Atari frames with frequency higher than display
			   refresh rate. */
			static double last_display_screen_time = 0.0;
			static double const limit = 1.0 / 60.0; /* refresh every 1/60 s */
			/* TODO Actually sync the limit with the display refresh rate. */
			double cur_time = FUNC21();
			if (cur_time - last_display_screen_time > limit)
				last_display_screen_time = cur_time;
			else
				Atari800_display_screen = FALSE;
		}
		else
			FUNC4();
#endif /* BENCHMARK */
}