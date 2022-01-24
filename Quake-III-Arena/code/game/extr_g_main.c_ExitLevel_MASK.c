#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ connected; } ;
struct TYPE_7__ {scalar_t__* persistant; } ;
struct TYPE_9__ {TYPE_2__ pers; TYPE_1__ ps; } ;
typedef  TYPE_3__ gclient_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {TYPE_3__* clients; scalar_t__* teamScores; scalar_t__ intermissiontime; int /*<<< orphan*/ * changemap; scalar_t__ restarted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ CON_CONNECTED ; 
 scalar_t__ CON_CONNECTING ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 scalar_t__ GT_TOURNAMENT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 size_t PERS_SCORE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t TEAM_BLUE ; 
 size_t TEAM_RED ; 
 TYPE_6__ g_gametype ; 
 TYPE_5__ g_maxclients ; 
 TYPE_4__ level ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void FUNC4 (void) {
	int		i;
	gclient_t *cl;

	//bot interbreeding
	FUNC0();

	// if we are running a tournement map, kick the loser to spectator status,
	// which will automatically grab the next spectator and restart
	if ( g_gametype.integer == GT_TOURNAMENT  ) {
		if ( !level.restarted ) {
			FUNC2();
			FUNC3( EXEC_APPEND, "map_restart 0\n" );
			level.restarted = qtrue;
			level.changemap = NULL;
			level.intermissiontime = 0;
		}
		return;	
	}


	FUNC3( EXEC_APPEND, "vstr nextmap\n" );
	level.changemap = NULL;
	level.intermissiontime = 0;

	// reset all the scores so we don't enter the intermission again
	level.teamScores[TEAM_RED] = 0;
	level.teamScores[TEAM_BLUE] = 0;
	for ( i=0 ; i< g_maxclients.integer ; i++ ) {
		cl = level.clients + i;
		if ( cl->pers.connected != CON_CONNECTED ) {
			continue;
		}
		cl->ps.persistant[PERS_SCORE] = 0;
	}

	// we need to do this here before chaning to CON_CONNECTING
	FUNC1();

	// change all client states to connecting, so the early players into the
	// next level will know the others aren't done reconnecting
	for (i=0 ; i< g_maxclients.integer ; i++) {
		if ( level.clients[i].pers.connected == CON_CONNECTED ) {
			level.clients[i].pers.connected = CON_CONNECTING;
		}
	}

}