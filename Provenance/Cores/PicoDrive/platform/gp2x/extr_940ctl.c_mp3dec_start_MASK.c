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
struct TYPE_2__ {int mp3_len; int mp3_offs; scalar_t__ mp3_buffsel; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JOB940_INVALIDATE_DCACHE ; 
 int /*<<< orphan*/  JOB940_MP3DECODE ; 
 int /*<<< orphan*/  JOB940_MP3RESET ; 
 int /*<<< orphan*/  MP3_SIZE_MAX ; 
 int POPT_EXT_FM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int PicoOpt ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * loaded_mp3 ; 
 int /*<<< orphan*/  mp3_mem ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int reset_timing ; 
 TYPE_1__* shared_ctl ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(FILE *f, int fpos_start)
{
	if (!(PicoOpt & POPT_EXT_FM)) {
		//mp3_start_play_local(f, pos);
		return -1;
	}

	if (loaded_mp3 != f)
	{
		if (&PicoMessage != NULL)
		{
			FUNC5(f, 0, SEEK_END);
			if (FUNC6(f) > 2*1024*1024)
				FUNC1("Loading MP3...");
		}
		FUNC5(f, 0, SEEK_SET);
		FUNC4(mp3_mem, 1, MP3_SIZE_MAX, f);
		if (!FUNC3(f))
			FUNC7("Warning: mp3 was too large, not all data loaded.\n");
		shared_ctl->mp3_len = FUNC6(f);
		loaded_mp3 = f;

		// as we are going to change 940's cacheable area,
		// we must invalidate it's cache..
		if (FUNC0(JOB940_MP3DECODE))
			FUNC8(JOB940_MP3DECODE);
		FUNC2(JOB940_INVALIDATE_DCACHE);
		reset_timing = 1;
	}

	shared_ctl->mp3_offs = fpos_start;
	shared_ctl->mp3_buffsel = 0;

	FUNC2(JOB940_MP3RESET);
	if (FUNC0(JOB940_MP3RESET))
		FUNC8(JOB940_MP3RESET);

	// because we decode ahea, need to start now
	if (shared_ctl->mp3_offs < shared_ctl->mp3_len) {
		FUNC2(JOB940_MP3DECODE);
	}

	return 0;
}