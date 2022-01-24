#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ health; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_1__ gentity_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int maxclients; scalar_t__ time; scalar_t__ intermissiontime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 scalar_t__ GT_TOURNAMENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* g_entities ; 
 TYPE_5__ g_gametype ; 
 TYPE_4__ g_singlePlayer ; 
 TYPE_3__ level ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8( void ) {
	int			i;
	gentity_t	*client;

	if ( level.intermissiontime ) {
		return;		// already active
	}

	// if in tournement mode, change the wins / losses
	if ( g_gametype.integer == GT_TOURNAMENT ) {
		FUNC0();
	}

	level.intermissiontime = level.time;
	FUNC1();

#ifdef MISSIONPACK
	if (g_singlePlayer.integer) {
		trap_Cvar_Set("ui_singlePlayerActive", "0");
		UpdateTournamentInfo();
	}
#else
	// if single player game
	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
		FUNC5();
		FUNC4();
	}
#endif

	// move all clients to the intermission point
	for (i=0 ; i< level.maxclients ; i++) {
		client = g_entities + i;
		if (!client->inuse)
			continue;
		// respawn if dead
		if (client->health <= 0) {
			FUNC6(client);
		}
		FUNC2( client );
	}

	// send the current scoring to all clients
	FUNC3();

}