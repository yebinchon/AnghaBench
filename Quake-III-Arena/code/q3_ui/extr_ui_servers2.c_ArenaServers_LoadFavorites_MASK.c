#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  pingtime; int /*<<< orphan*/  adrstr; } ;
typedef  TYPE_1__ servernode_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {size_t numfavoriteaddresses; int /*<<< orphan*/ * favoriteaddresses; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int MAX_ADDRESSLENGTH ; 
 int MAX_FAVORITESERVERS ; 
 int MAX_INFO_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_6__ g_arenaservers ; 
 TYPE_1__* g_favoriteserverlist ; 
 size_t g_numfavoriteservers ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

void FUNC8( void )
{
	int				i;
	int				j;
	int				numtempitems;
	char			emptyinfo[MAX_INFO_STRING];
	char			adrstr[MAX_ADDRESSLENGTH];
	servernode_t	templist[MAX_FAVORITESERVERS];
	qboolean		found;

	found        = qfalse;
	emptyinfo[0] = '\0';

	// copy the old
	FUNC3( templist, g_favoriteserverlist, sizeof(servernode_t)*MAX_FAVORITESERVERS );
	numtempitems = g_numfavoriteservers;

	// clear the current for sync
	FUNC4( g_favoriteserverlist, 0, sizeof(servernode_t)*MAX_FAVORITESERVERS );
	g_numfavoriteservers = 0;

	// resync existing results with new or deleted cvars
	for (i=0; i<MAX_FAVORITESERVERS; i++)
	{
		FUNC6( FUNC7("server%d",i+1), adrstr, MAX_ADDRESSLENGTH );
		if (!adrstr[0])
			continue;

		// quick sanity check to avoid slow domain name resolving
		// first character must be numeric
		if (adrstr[0] < '0' || adrstr[0] > '9')
			continue;

		// favorite server addresses must be maintained outside refresh list
		// this mimics local and global netadr's stored in client
		// these can be fetched to fill ping list
		FUNC5( g_arenaservers.favoriteaddresses[g_numfavoriteservers], adrstr );

		// find this server in the old list
		for (j=0; j<numtempitems; j++)
			if (!FUNC1( templist[j].adrstr, adrstr ))
				break;

		if (j < numtempitems)
		{
			// found server - add exisiting results
			FUNC3( &g_favoriteserverlist[g_numfavoriteservers], &templist[j], sizeof(servernode_t) );
			found = qtrue;
		}
		else
		{
			// add new server
			FUNC2( g_favoriteserverlist[g_numfavoriteservers].adrstr, adrstr, MAX_ADDRESSLENGTH );
			g_favoriteserverlist[g_numfavoriteservers].pingtime = FUNC0();
		}

		g_numfavoriteservers++;
	}

	g_arenaservers.numfavoriteaddresses = g_numfavoriteservers;

	if (!found)
	{
		// no results were found, reset server list
		// list will be automatically refreshed when selected
		g_numfavoriteservers = 0;
	}
}