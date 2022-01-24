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
struct TYPE_8__ {int /*<<< orphan*/  levelShot; } ;
struct TYPE_7__ {int /*<<< orphan*/  integer; } ;
struct TYPE_5__ {int /*<<< orphan*/  talkSound; int /*<<< orphan*/  votePassed; int /*<<< orphan*/  voteFailed; } ;
struct TYPE_6__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,double,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int /*<<< orphan*/  CHAN_LOCAL_SOUND ; 
 int MAX_SAY_TEXT ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int /*<<< orphan*/  SAY_ALL ; 
 int /*<<< orphan*/  SAY_TEAM ; 
 int /*<<< orphan*/  SAY_TELL ; 
 double SCREEN_HEIGHT ; 
 TYPE_4__ cg ; 
 TYPE_3__ cg_teamChatsOnly ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC18( void ) {
	const char	*cmd;
	char		text[MAX_SAY_TEXT];

	cmd = FUNC1(0);

	if ( !cmd[0] ) {
		// server claimed the command
		return;
	}

	if ( !FUNC14( cmd, "cp" ) ) {
		FUNC2( FUNC1(1), SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
		return;
	}

	if ( !FUNC14( cmd, "cs" ) ) {
		FUNC3();
		return;
	}

	if ( !FUNC14( cmd, "print" ) ) {
		FUNC8( "%s", FUNC1(1) );
#ifdef MISSIONPACK
		cmd = CG_Argv(1);			// yes, this is obviously a hack, but so is the way we hear about
									// votes passing or failing
		if ( !Q_stricmpn( cmd, "vote failed", 11 ) || !Q_stricmpn( cmd, "team vote failed", 16 )) {
			trap_S_StartLocalSound( cgs.media.voteFailed, CHAN_ANNOUNCER );
		} else if ( !Q_stricmpn( cmd, "vote passed", 11 ) || !Q_stricmpn( cmd, "team vote passed", 16 ) ) {
			trap_S_StartLocalSound( cgs.media.votePassed, CHAN_ANNOUNCER );
		}
#endif
		return;
	}

	if ( !FUNC14( cmd, "chat" ) ) {
		if ( !cg_teamChatsOnly.integer ) {
			FUNC17( cgs.media.talkSound, CHAN_LOCAL_SOUND );
			FUNC13( text, FUNC1(1), MAX_SAY_TEXT );
			FUNC9( text );
			FUNC8( "%s\n", text );
		}
		return;
	}

	if ( !FUNC14( cmd, "tchat" ) ) {
		FUNC17( cgs.media.talkSound, CHAN_LOCAL_SOUND );
		FUNC13( text, FUNC1(1), MAX_SAY_TEXT );
		FUNC9( text );
		FUNC0( text );
		FUNC8( "%s\n", text );
		return;
	}
	if ( !FUNC14( cmd, "vchat" ) ) {
		FUNC10( SAY_ALL );
		return;
	}

	if ( !FUNC14( cmd, "vtchat" ) ) {
		FUNC10( SAY_TEAM );
		return;
	}

	if ( !FUNC14( cmd, "vtell" ) ) {
		FUNC10( SAY_TELL );
		return;
	}

	if ( !FUNC14( cmd, "scores" ) ) {
		FUNC6();
		return;
	}

	if ( !FUNC14( cmd, "tinfo" ) ) {
		FUNC7();
		return;
	}

	if ( !FUNC14( cmd, "map_restart" ) ) {
		FUNC5();
		return;
	}

  if ( FUNC11 (cmd, "remapShader") == 0 ) {
		if (FUNC15() == 4) {
			FUNC16(FUNC1(1), FUNC1(2), FUNC1(3));
		}
	}

	// loaddeferred can be both a servercmd and a consolecmd
	if ( !FUNC14( cmd, "loaddefered" ) ) {	// FIXME: spelled wrong, but not changing for demo
		FUNC4();
		return;
	}

	// clientLevelShot is sent before taking a special screenshot for
	// the menu system during development
	if ( !FUNC14( cmd, "clientLevelShot" ) ) {
		cg.levelShot = qtrue;
		return;
	}

	FUNC8( "Unknown client game command: %s\n", cmd );
}