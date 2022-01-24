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
 int PBTN_CIRCLE ; 
 int PBTN_X ; 
 int POPT_ALT_RENDERER ; 
 int PicoOpt ; 
 int /*<<< orphan*/ * PicoStateProgressCB ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ currentConfig ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/ * emu_msg_cb ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int reset_timing ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int state_slot ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void FUNC10(unsigned int which)
{
	if (which & 0x1800) // save or load (but not both)
	{
		int do_it = 1;

		if ( FUNC2(state_slot) &&
				(( (which & 0x1000) && (currentConfig.EmuOpt & 0x800)) || // load
				 (!(which & 0x1000) && (currentConfig.EmuOpt & 0x200))) ) // save
		{
			int keys;
			FUNC8(0,0);
			FUNC0("", (which & 0x1000) ? "LOAD STATE? (X=yes, O=no)" : "OVERWRITE SAVE? (X=yes, O=no)", 0);
			while( !((keys = FUNC7(1)) & (PBTN_X|PBTN_CIRCLE)) )
				FUNC6(50);
			if (keys & PBTN_CIRCLE) do_it = 0;
			while(  ((keys = FUNC7(1)) & (PBTN_X|PBTN_CIRCLE)) ) // wait for release
				FUNC6(50);
			FUNC1(0);
		}

		if (do_it)
		{
			FUNC5(4, (which & 0x1000) ? "LOADING GAME" : "SAVING GAME", 1, 0);
			PicoStateProgressCB = emu_msg_cb;
			FUNC3((which & 0x1000) >> 12, 0);
			PicoStateProgressCB = NULL;
			FUNC6(0);
		}

		reset_timing = 1;
	}
	if (which & 0x0400) // switch renderer
	{
		if (PicoOpt&0x10) { PicoOpt&=~0x10; currentConfig.EmuOpt |=  0x80; }
		else              { PicoOpt|= 0x10; currentConfig.EmuOpt &= ~0x80; }

		FUNC9();

		if (PicoOpt & POPT_ALT_RENDERER)
			FUNC4("fast renderer");
		else if (currentConfig.EmuOpt&0x80)
			FUNC4("accurate renderer");
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
		FUNC4("SAVE SLOT %i [%s]", state_slot,
			FUNC2(state_slot) ? "USED" : "FREE");
	}
}