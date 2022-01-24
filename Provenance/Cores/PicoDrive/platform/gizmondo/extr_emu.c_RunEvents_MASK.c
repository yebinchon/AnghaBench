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
struct TYPE_2__ {int EmuOpt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PBTN_PLAY ; 
 int PBTN_STOP ; 
 int PicoOpt ; 
 int /*<<< orphan*/ * PicoStateProgressCB ; 
 int /*<<< orphan*/ * PsndOut ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ currentConfig ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * emu_stateCb ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/ * giz_screen ; 
 int /*<<< orphan*/  noticeMsg ; 
 int /*<<< orphan*/  noticeMsgTime ; 
 int /*<<< orphan*/  FUNC9 (int,int,char*) ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int state_slot ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void FUNC13(unsigned int which)
{
	if (which & 0x1800) // save or load (but not both)
	{
		int do_it = 1;

		if (PsndOut != NULL)
			FUNC0(1);
		if (giz_screen == NULL)
			giz_screen = FUNC8(1);
		if ( FUNC6(state_slot) &&
				(( (which & 0x1000) && (currentConfig.EmuOpt & 0x800)) || // load
				 (!(which & 0x1000) && (currentConfig.EmuOpt & 0x200))) ) // save
		{
			int keys;
			FUNC4("", (which & 0x1000) ? "LOAD STATE? (PLAY=yes, STOP=no)" : "OVERWRITE SAVE? (PLAY=yes, STOP=no)");
			while( !((keys = FUNC1()) & (PBTN_PLAY|PBTN_STOP)) )
				FUNC3(50);
			if (keys & PBTN_STOP) do_it = 0;
			while(  ((keys = FUNC1()) & (PBTN_PLAY|PBTN_STOP)) ) // wait for release
				FUNC3(50);
			FUNC5(0);
		}

		if (do_it)
		{
			FUNC9(4, 232, (which & 0x1000) ? "LOADING GAME" : "SAVING GAME");
			PicoStateProgressCB = emu_stateCb;
			FUNC7((which & 0x1000) >> 12, 0);
			PicoStateProgressCB = NULL;
			FUNC3(0);
		}

		if (PsndOut != NULL)
			FUNC0(0);
		reset_timing = 1;
	}
	if (which & 0x0400) // switch renderer
	{
		if (PicoOpt&0x10) { PicoOpt&=~0x10; currentConfig.EmuOpt |=  0x80; }
		else              { PicoOpt|= 0x10; currentConfig.EmuOpt &= ~0x80; }

		FUNC12();

		if (PicoOpt&0x10) {
			FUNC11(noticeMsg, " 8bit fast renderer");
		} else if (currentConfig.EmuOpt&0x80) {
			FUNC11(noticeMsg, "16bit accurate renderer");
		} else {
			FUNC11(noticeMsg, " 8bit accurate renderer");
		}

		noticeMsgTime = FUNC2();
	}
	if (which & 0x0300)
	{
		if(which&0x0200) {
			state_slot -= 1;
			if(state_slot < 0) state_slot = 9;
		} else {
			state_slot += 1;
			if(state_slot > 9) state_slot = 0;
		}
		FUNC10(noticeMsg, "SAVE SLOT %i [%s]", state_slot, FUNC6(state_slot) ? "USED" : "FREE");
		noticeMsgTime = FUNC2();
	}
}