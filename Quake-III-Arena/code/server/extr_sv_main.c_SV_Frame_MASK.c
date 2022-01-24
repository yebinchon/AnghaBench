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
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {int /*<<< orphan*/  integer; } ;
struct TYPE_11__ {int timeResidual; int restartTime; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int time; int nextSnapshotEntities; int numSnapshotEntities; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_SERVERINFO ; 
 int /*<<< orphan*/  CS_SYSTEMINFO ; 
 int CVAR_SERVERINFO ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  GAME_RUN_FRAME ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* com_dedicated ; 
 TYPE_6__* com_speeds ; 
 TYPE_5__* com_sv_running ; 
 int cvar_modifiedFlags ; 
 int /*<<< orphan*/  gvm ; 
 TYPE_4__ sv ; 
 TYPE_3__* sv_fps ; 
 TYPE_2__* sv_killserver ; 
 TYPE_1__ svs ; 
 int time_game ; 

void FUNC15( int msec ) {
	int		frameMsec;
	int		startTime;

	// the menu kills the server with this cvar
	if ( sv_killserver->integer ) {
		FUNC12 ("Server was killed.\n");
		FUNC3( "sv_killserver", "0" );
		return;
	}

	if ( !com_sv_running->integer ) {
		return;
	}

	// allow pause if only the local client is connected
	if ( FUNC7() ) {
		return;
	}

	// if it isn't time for the next frame, do nothing
	if ( sv_fps->integer < 1 ) {
		FUNC3( "sv_fps", "10" );
	}
	frameMsec = 1000 / sv_fps->integer ;

	sv.timeResidual += msec;

	if (!com_dedicated->integer) FUNC5( svs.time + sv.timeResidual );

	if ( com_dedicated->integer && sv.timeResidual < frameMsec ) {
		// NET_Sleep will give the OS time slices until either get a packet
		// or time enough for a server frame has gone by
		FUNC4(frameMsec - sv.timeResidual);
		return;
	}

	// if time is about to hit the 32nd bit, kick all clients
	// and clear sv.time, rather
	// than checking for negative time wraparound everywhere.
	// 2giga-milliseconds = 23 days, so it won't be too often
	if ( svs.time > 0x70000000 ) {
		FUNC12( "Restarting server due to time wrapping" );
		FUNC0( "vstr nextmap\n" );
		return;
	}
	// this can happen considerably earlier when lots of clients play and the map doesn't change
	if ( svs.nextSnapshotEntities >= 0x7FFFFFFE - svs.numSnapshotEntities ) {
		FUNC12( "Restarting server due to numSnapshotEntities wrapping" );
		FUNC0( "vstr nextmap\n" );
		return;
	}

	if( sv.restartTime && svs.time >= sv.restartTime ) {
		sv.restartTime = 0;
		FUNC0( "map_restart 0\n" );
		return;
	}

	// update infostrings if anything has been changed
	if ( cvar_modifiedFlags & CVAR_SERVERINFO ) {
		FUNC11( CS_SERVERINFO, FUNC1( CVAR_SERVERINFO ) );
		cvar_modifiedFlags &= ~CVAR_SERVERINFO;
	}
	if ( cvar_modifiedFlags & CVAR_SYSTEMINFO ) {
		FUNC11( CS_SYSTEMINFO, FUNC2( CVAR_SYSTEMINFO ) );
		cvar_modifiedFlags &= ~CVAR_SYSTEMINFO;
	}

	if ( com_speeds->integer ) {
		startTime = FUNC13 ();
	} else {
		startTime = 0;	// quite a compiler warning
	}

	// update ping based on the all received frames
	FUNC6();

	if (com_dedicated->integer) FUNC5( svs.time );

	// run the game simulation in chunks
	while ( sv.timeResidual >= frameMsec ) {
		sv.timeResidual -= frameMsec;
		svs.time += frameMsec;

		// let everything in the world think and move
		FUNC14( gvm, GAME_RUN_FRAME, svs.time );
	}

	if ( com_speeds->integer ) {
		time_game = FUNC13 () - startTime;
	}

	// check timeouts
	FUNC8();

	// send messages back to the clients
	FUNC10();

	// send a heartbeat to the master if needed
	FUNC9();
}