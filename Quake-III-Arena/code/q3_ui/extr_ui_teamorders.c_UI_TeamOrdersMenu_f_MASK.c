#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ clientNum; } ;
typedef  TYPE_1__ uiClientState_t ;
typedef  int /*<<< orphan*/  info ;
struct TYPE_5__ {scalar_t__ gametype; } ;

/* Variables and functions */
 scalar_t__ CS_PLAYERS ; 
 scalar_t__ CS_SERVERINFO ; 
 scalar_t__ GT_TEAM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int MAX_INFO_STRING ; 
 int TEAM_SPECTATOR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__ teamOrdersMenuInfo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

void FUNC5( void ) {
	uiClientState_t	cs;
	char	info[MAX_INFO_STRING];
	int		team;

	// make sure it's a team game
	FUNC4( CS_SERVERINFO, info, sizeof(info) );
	teamOrdersMenuInfo.gametype = FUNC2( FUNC0( info, "g_gametype" ) );
	if( teamOrdersMenuInfo.gametype < GT_TEAM ) {
		return;
	}

	// not available to spectators
	FUNC3( &cs );
	FUNC4( CS_PLAYERS + cs.clientNum, info, MAX_INFO_STRING );
	team = FUNC2( FUNC0( info, "t" ) );
	if( team == TEAM_SPECTATOR ) {
		return;
	}

	FUNC1();
}