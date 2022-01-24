#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pingtime; int gametype; int /*<<< orphan*/  gamename; void* nettype; void* bPB; void* maxPing; void* minPing; void* maxclients; void* numclients; int /*<<< orphan*/  mapname; int /*<<< orphan*/  hostname; int /*<<< orphan*/  adrstr; } ;
typedef  TYPE_1__ servernode_t ;
struct TYPE_4__ {scalar_t__* numservers; scalar_t__ maxservers; TYPE_1__* serverlist; } ;

/* Variables and functions */
 scalar_t__ AS_FAVORITES ; 
 int FUNC0 () ; 
 char* FUNC1 (char*,char*) ; 
 int MAX_ADDRESSLENGTH ; 
 int MAX_HOSTNAMELENGTH ; 
 int MAX_MAPNAMELENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (char*) ; 
 TYPE_2__ g_arenaservers ; 
 scalar_t__ g_servertype ; 
 char** gamenames ; 

__attribute__((used)) static void FUNC6( char* adrstr, char* info, int pingtime )
{
	servernode_t*	servernodeptr;
	char*			s;
	int				i;


	if ((pingtime >= FUNC0()) && (g_servertype != AS_FAVORITES))
	{
		// slow global or local servers do not get entered
		return;
	}

	if (*g_arenaservers.numservers >= g_arenaservers.maxservers) {
		// list full;
		servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers)-1;
	} else {
		// next slot
		servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers);
		(*g_arenaservers.numservers)++;
	}

	FUNC3( servernodeptr->adrstr, adrstr, MAX_ADDRESSLENGTH );

	FUNC3( servernodeptr->hostname, FUNC1( info, "hostname"), MAX_HOSTNAMELENGTH );
	FUNC2( servernodeptr->hostname );
	FUNC4( servernodeptr->hostname );

	FUNC3( servernodeptr->mapname, FUNC1( info, "mapname"), MAX_MAPNAMELENGTH );
	FUNC2( servernodeptr->mapname );
	FUNC4( servernodeptr->mapname );

	servernodeptr->numclients = FUNC5( FUNC1( info, "clients") );
	servernodeptr->maxclients = FUNC5( FUNC1( info, "sv_maxclients") );
	servernodeptr->pingtime   = pingtime;
	servernodeptr->minPing    = FUNC5( FUNC1( info, "minPing") );
	servernodeptr->maxPing    = FUNC5( FUNC1( info, "maxPing") );
	servernodeptr->bPB = FUNC5( FUNC1( info, "punkbuster") );

	/*
	s = Info_ValueForKey( info, "nettype" );
	for (i=0; ;i++)
	{
		if (!netnames[i])
		{
			servernodeptr->nettype = 0;
			break;
		}
		else if (!Q_stricmp( netnames[i], s ))
		{
			servernodeptr->nettype = i;
			break;
		}
	}
	*/
	servernodeptr->nettype = FUNC5(FUNC1(info, "nettype"));

	s = FUNC1( info, "game");
	i = FUNC5( FUNC1( info, "gametype") );
	if( i < 0 ) {
		i = 0;
	}
	else if( i > 11 ) {
		i = 12;
	}
	if( *s ) {
		servernodeptr->gametype = i;//-1;
		FUNC3( servernodeptr->gamename, s, sizeof(servernodeptr->gamename) );
	}
	else {
		servernodeptr->gametype = i;
		FUNC3( servernodeptr->gamename, gamenames[i], sizeof(servernodeptr->gamename) );
	}
}