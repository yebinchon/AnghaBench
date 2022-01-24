#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ warmup; scalar_t__* time; int /*<<< orphan*/  mapRestart; int /*<<< orphan*/  intermissionStarted; scalar_t__ timelimitWarnings; scalar_t__ fraglimitWarnings; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__* string; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  countFightSound; } ;
struct TYPE_9__ {TYPE_1__ media; scalar_t__ voteTime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int GIANTCHAR_WIDTH ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_recordSPDemo ; 
 TYPE_5__ cg_recordSPDemoName ; 
 TYPE_4__ cg_showmiss ; 
 TYPE_3__ cg_singlePlayerActive ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* FUNC10 (char*,scalar_t__*) ; 

__attribute__((used)) static void FUNC11( void ) {
	if ( cg_showmiss.integer ) {
		FUNC4( "CG_MapRestart\n" );
	}

	FUNC2();
	FUNC3();
	FUNC1 ();

	// make sure the "3 frags left" warnings play again
	cg.fraglimitWarnings = 0;

	cg.timelimitWarnings = 0;

	cg.intermissionStarted = qfalse;

	cgs.voteTime = 0;

	cg.mapRestart = qtrue;

	FUNC5();

	FUNC7(qtrue);

	// we really should clear more parts of cg here and stop sounds

	// play the "fight" sound if this is a restart without warmup
	if ( cg.warmup == 0 /* && cgs.gametype == GT_TOURNAMENT */) {
		FUNC8( cgs.media.countFightSound, CHAN_ANNOUNCER );
		FUNC0( "FIGHT!", 120, GIANTCHAR_WIDTH*2 );
	}
#ifdef MISSIONPACK
	if (cg_singlePlayerActive.integer) {
		trap_Cvar_Set("ui_matchStartTime", va("%i", cg.time));
		if (cg_recordSPDemo.integer && cg_recordSPDemoName.string && *cg_recordSPDemoName.string) {
			trap_SendConsoleCommand(va("set g_synchronousclients 1 ; record %s \n", cg_recordSPDemoName.string));
		}
	}
#endif
	FUNC6("cg_thirdPerson", "0");
}