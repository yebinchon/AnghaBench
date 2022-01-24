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
 double Atari800_FPS_NTSC ; 
 double Atari800_FPS_PAL ; 
 scalar_t__ Atari800_TV_PAL ; 
 scalar_t__ Atari800_auto_frameskip ; 
 double Atari800_refresh_rate ; 
 scalar_t__ Atari800_tv_mode ; 
 double FUNC0 () ; 
 int /*<<< orphan*/  UI_is_active ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 double FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (double,double) ; 

void FUNC4(void)
{
	static double lasttime = 0;
	double deltatime = 1.0 / ((Atari800_tv_mode == Atari800_TV_PAL) ? Atari800_FPS_PAL : Atari800_FPS_NTSC);
	double curtime;

#ifdef SYNCHRONIZED_SOUND
	deltatime *= Sound_AdjustSpeed();
#endif
#ifdef ALTERNATE_SYNC_WITH_HOST
	if (! UI_is_active)
		deltatime *= Atari800_refresh_rate;
#endif
	lasttime += deltatime;
	curtime = FUNC2();
	if (Atari800_auto_frameskip)
		FUNC3(curtime, lasttime);
	FUNC1(lasttime - curtime);
	curtime = FUNC2();

	if ((lasttime + deltatime) < curtime)
		lasttime = curtime;
}