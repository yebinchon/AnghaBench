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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ATARI_CRASHED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ CFG_save_on_exit ; 
 scalar_t__ CPU_cim_encountered ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int* Screen_atari_write_long_stat ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  g_ulAtariState ; 
 scalar_t__* memory_read_aligned_word_stat ; 
 int* memory_read_word_stat ; 
 scalar_t__* memory_write_aligned_word_stat ; 
 scalar_t__* memory_write_word_stat ; 
 int* pm_scanline_read_long_stat ; 
 int /*<<< orphan*/  FUNC16 (char*,...) ; 
 int /*<<< orphan*/  sigint_flag ; 

int FUNC17(int run_monitor)
{
	int restart;

#ifdef __PLUS
	if (CPU_cim_encountered)
		g_ulAtariState |= ATARI_CRASHED;
#endif

#ifdef STAT_UNALIGNED_WORDS
	printf("(ptr&7) Screen_atari  pm_scanline  _____ memory ______  memory (aligned addr)\n");
	printf("          32-bit W      32-bit R   16-bit R   16-bit W   16-bit R   16-bit W\n");
	{
		unsigned int sums[6] = {0, 0, 0, 0, 0, 0};
		int i;
		for (i = 0; i < 8; i++) {
			printf("%6d%12u%14u%11u%11u%11u%11u\n", i,
				Screen_atari_write_long_stat[i], pm_scanline_read_long_stat[i],
				memory_read_word_stat[i], memory_write_word_stat[i],
				memory_read_aligned_word_stat[i], memory_write_aligned_word_stat[i]);
			sums[0] += Screen_atari_write_long_stat[i];
			sums[1] += pm_scanline_read_long_stat[i];
			sums[2] += memory_read_word_stat[i];
			sums[3] += memory_write_word_stat[i];
			sums[4] += memory_read_aligned_word_stat[i];
			sums[5] += memory_write_aligned_word_stat[i];
		}
		printf("total:%12u%14u%11u%11u%11u%11u\n",
			sums[0], sums[1], sums[2], sums[3], sums[4], sums[5]);
	}
#endif /* STAT_UNALIGNED_WORDS */
	restart = FUNC9(run_monitor);
#ifdef HAVE_SIGNAL
	/* If a user pressed Ctrl+C in the monitor, avoid immediate return to it. */
	sigint_flag = FALSE;
#endif /* HAVE_SIGNAL */
#ifndef __PLUS
	if (!restart) {
		/* We'd better save the configuration before calling the *_Exit() functions -
		   there's a danger that they might change some emulator settings. */
		if (CFG_save_on_exit)
			FUNC3();

		/* Cleanup functions, in reverse order as the init functions in
		   Atari800_Initialise(). */
#ifdef SOUND
		Sound_Exit();
#endif
#if SUPPORTS_CHANGE_VIDEOMODE
		VIDEOMODE_Exit();
#endif
#ifdef AF80
		AF80_Exit();
#endif
#ifndef BASIC
		FUNC6();	/* finish event recording */
#endif
		FUNC8();
		FUNC2(); /* Finish writing to the cassette file */
		FUNC1();
		FUNC12();	/* umount disks, so temporary files are deleted */
#ifdef IDE
		IDE_Exit();
#endif
		FUNC4();
#ifdef R_IO_DEVICE
		RDevice_Exit(); /* R: Device cleanup */
#endif
#ifdef SOUND
		SndSave_CloseSoundFile();
#endif
		FUNC7();
#ifdef SDL
		SDL_INIT_Exit();
#endif /* SDL */
	}
#endif /* __PLUS */
	return restart;
}