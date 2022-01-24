#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* qboolean ;
typedef  int /*<<< orphan*/  mapname ;
struct TYPE_12__ {scalar_t__ type; } ;
struct TYPE_13__ {TYPE_1__ remoteAddress; } ;
struct TYPE_14__ {scalar_t__ state; int /*<<< orphan*/  lastUsercmd; TYPE_2__ netchan; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_19__ {int /*<<< orphan*/  integer; } ;
struct TYPE_18__ {scalar_t__ serverId; int restartTime; void* restarting; int /*<<< orphan*/  state; } ;
struct TYPE_17__ {scalar_t__ modified; } ;
struct TYPE_16__ {int integer; scalar_t__ modified; } ;
struct TYPE_15__ {int time; TYPE_3__* clients; int /*<<< orphan*/  snapFlagServerBit; } ;

/* Variables and functions */
 scalar_t__ CS_ACTIVE ; 
 scalar_t__ CS_CONNECTED ; 
 int /*<<< orphan*/  CS_WARMUP ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  GAME_CLIENT_CONNECT ; 
 int /*<<< orphan*/  GAME_RUN_FRAME ; 
 int MAX_QPATH ; 
 scalar_t__ NA_BOT ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SNAPFLAG_SERVERCOUNT ; 
 int /*<<< orphan*/  SS_GAME ; 
 int /*<<< orphan*/  SS_LOADING ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,...) ; 
 char* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ com_frameTime ; 
 TYPE_8__* com_sv_running ; 
 int /*<<< orphan*/  gvm ; 
 void* qfalse ; 
 void* qtrue ; 
 TYPE_7__ sv ; 
 TYPE_6__* sv_gametype ; 
 TYPE_5__* sv_maxclients ; 
 TYPE_4__ svs ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 

__attribute__((used)) static void FUNC17( void ) {
	int			i;
	client_t	*client;
	char		*denied;
	qboolean	isBot;
	int			delay;

	// make sure we aren't restarting twice in the same frame
	if ( com_frameTime == sv.serverId ) {
		return;
	}

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}

	if ( sv.restartTime ) {
		return;
	}

	if (FUNC0() > 1 ) {
		delay = FUNC15( FUNC1(1) );
	}
	else {
		delay = 5;
	}
	if( delay && !FUNC5("g_doWarmup") ) {
		sv.restartTime = svs.time + delay * 1000;
		FUNC11( CS_WARMUP, FUNC16("%i", sv.restartTime) );
		return;
	}

	// check for changes in variables that can't just be restarted
	// check for maxclients change
	if ( sv_maxclients->modified || sv_gametype->modified ) {
		char	mapname[MAX_QPATH];

		FUNC2( "variable change -- restarting.\n" );
		// restart the map the slow way
		FUNC6( mapname, FUNC4( "mapname" ), sizeof( mapname ) );

		FUNC12( mapname, qfalse );
		return;
	}

	// toggle the server bit so clients can detect that a
	// map_restart has happened
	svs.snapFlagServerBit ^= SNAPFLAG_SERVERCOUNT;

	// generate a new serverid	
	// TTimo - don't update restartedserverId there, otherwise we won't deal correctly with multiple map_restart
	sv.serverId = com_frameTime;
	FUNC3( "sv_serverid", FUNC16("%i", sv.serverId ) );

	// reset all the vm data in place without changing memory allocation
	// note that we do NOT set sv.state = SS_LOADING, so configstrings that
	// had been changed from their default values will generate broadcast updates
	sv.state = SS_LOADING;
	sv.restarting = qtrue;

	FUNC10();

	// run a few frames to allow everything to settle
	for ( i = 0 ;i < 3 ; i++ ) {
		FUNC13( gvm, GAME_RUN_FRAME, svs.time );
		svs.time += 100;
	}

	sv.state = SS_GAME;
	sv.restarting = qfalse;

	// connect and begin all the clients
	for (i=0 ; i<sv_maxclients->integer ; i++) {
		client = &svs.clients[i];

		// send the new gamestate to all connected clients
		if ( client->state < CS_CONNECTED) {
			continue;
		}

		if ( client->netchan.remoteAddress.type == NA_BOT ) {
			isBot = qtrue;
		} else {
			isBot = qfalse;
		}

		// add the map_restart command
		FUNC7( client, "map_restart\n" );

		// connect the client again, without the firstTime flag
		denied = FUNC14( gvm, FUNC13( gvm, GAME_CLIENT_CONNECT, i, qfalse, isBot ) );
		if ( denied ) {
			// this generally shouldn't happen, because the client
			// was connected before the level change
			FUNC9( client, denied );
			FUNC2( "SV_MapRestart_f(%d): dropped client %i - denied!\n", delay, i ); // bk010125
			continue;
		}

		client->state = CS_ACTIVE;

		FUNC8( client, &client->lastUsercmd );
	}	

	// run another frame to allow things to look at all the players
	FUNC13( gvm, GAME_RUN_FRAME, svs.time );
	svs.time += 100;
}