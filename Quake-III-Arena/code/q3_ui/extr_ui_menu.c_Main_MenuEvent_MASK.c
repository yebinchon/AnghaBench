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
struct TYPE_2__ {int id; } ;
typedef  TYPE_1__ menucommon_s ;

/* Variables and functions */
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  ID_CINEMATICS 135 
#define  ID_DEMOS 134 
#define  ID_EXIT 133 
#define  ID_MODS 132 
#define  ID_MULTIPLAYER 131 
#define  ID_SETUP 130 
#define  ID_SINGLEPLAYER 129 
#define  ID_TEAMARENA 128 
 int /*<<< orphan*/  MainMenu_ExitAction ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

void FUNC9 (void* ptr, int event) {
	if( event != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_SINGLEPLAYER:
		FUNC5();
		break;

	case ID_MULTIPLAYER:
		FUNC0();
		break;

	case ID_SETUP:
		FUNC6();
		break;

	case ID_DEMOS:
		FUNC3();
		break;

	case ID_CINEMATICS:
		FUNC1();
		break;

	case ID_MODS:
		FUNC4();
		break;

	case ID_TEAMARENA:
		FUNC8( "fs_game", "missionpack");
		FUNC7( EXEC_APPEND, "vid_restart;" );
		break;

	case ID_EXIT:
		FUNC2( "EXIT GAME?", NULL, MainMenu_ExitAction );
		break;
	}
}