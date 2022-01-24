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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_2__ {int confirm_save; } ;

/* Variables and functions */
 int EOPT_CONFIRM_LOAD ; 
 int EOPT_CONFIRM_SAVE ; 
 int /*<<< orphan*/  IN_CFG_BLOCKING ; 
 int PBTN_MBACK ; 
 int PBTN_MOK ; 
 unsigned int PEV_MENU ; 
 unsigned int PEV_SSLOT_NEXT ; 
 unsigned int PEV_SSLOT_PREV ; 
 unsigned int PEV_STATE_LOAD ; 
 unsigned int PEV_STATE_SAVE ; 
 unsigned int PEV_SWITCH_RND ; 
 int /*<<< orphan*/  PGS_Menu ; 
 int /*<<< orphan*/ * PicoStateProgressCB ; 
 TYPE_1__ currentConfig ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  engineState ; 
 char* FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * plat_status_msg_busy_next ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 
 int state_slot ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(unsigned int which)
{
	if (which & (PEV_STATE_LOAD|PEV_STATE_SAVE))
	{
		int do_it = 1;
		if ( FUNC0(state_slot, NULL) &&
			(((which & PEV_STATE_LOAD) && (currentConfig.confirm_save & EOPT_CONFIRM_LOAD)) ||
			 ((which & PEV_STATE_SAVE) && (currentConfig.confirm_save & EOPT_CONFIRM_SAVE))) )
		{
			const char *nm;
			char tmp[64];
			int keys, len;

			FUNC9(tmp, (which & PEV_STATE_LOAD) ? "LOAD STATE? " : "OVERWRITE SAVE? ");
			len = FUNC10(tmp);
			nm = FUNC3(-1, -PBTN_MOK);
			FUNC8(tmp + len, sizeof(tmp) - len, "(%s=yes, ", nm);
			len = FUNC10(tmp);
			nm = FUNC3(-1, -PBTN_MBACK);
			FUNC8(tmp + len, sizeof(tmp) - len, "%s=no)", nm);

			FUNC6(tmp);

			FUNC5(0, IN_CFG_BLOCKING, 1);
			while (FUNC4(NULL, 50) & (PBTN_MOK | PBTN_MBACK))
				;
			while ( !((keys = FUNC4(NULL, 50)) & (PBTN_MOK | PBTN_MBACK)))
				;
			if (keys & PBTN_MBACK)
				do_it = 0;
			while (FUNC4(NULL, 50) & (PBTN_MOK | PBTN_MBACK))
				;
			FUNC5(0, IN_CFG_BLOCKING, 0);
		}
		if (do_it) {
			FUNC6((which & PEV_STATE_LOAD) ? "LOADING STATE" : "SAVING STATE");
			PicoStateProgressCB = plat_status_msg_busy_next;
			FUNC1((which & PEV_STATE_LOAD) ? 1 : 0, 0);
			PicoStateProgressCB = NULL;
		}
	}
	if (which & PEV_SWITCH_RND)
	{
		FUNC7(1, 0);
	}
	if (which & (PEV_SSLOT_PREV|PEV_SSLOT_NEXT))
	{
		if (which & PEV_SSLOT_PREV) {
			state_slot -= 1;
			if (state_slot < 0)
				state_slot = 9;
		} else {
			state_slot += 1;
			if (state_slot > 9)
				state_slot = 0;
		}

		FUNC2("SAVE SLOT %i [%s]", state_slot,
			FUNC0(state_slot, NULL) ? "USED" : "FREE");
	}
	if (which & PEV_MENU)
		engineState = PGS_Menu;
}