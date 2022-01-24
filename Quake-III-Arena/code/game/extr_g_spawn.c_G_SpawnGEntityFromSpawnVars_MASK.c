#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  currentOrigin; } ;
struct TYPE_11__ {int /*<<< orphan*/  trBase; } ;
struct TYPE_12__ {int /*<<< orphan*/  origin; TYPE_1__ pos; } ;
struct TYPE_14__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef  TYPE_4__ gentity_t ;
struct TYPE_16__ {size_t integer; } ;
struct TYPE_15__ {int numSpawnVars; int /*<<< orphan*/ ** spawnVars; } ;

/* Variables and functions */
 size_t GT_FFA ; 
 size_t GT_MAX_GAME_TYPE ; 
 size_t GT_SINGLE_PLAYER ; 
 size_t GT_TEAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_4__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_6__ g_gametype ; 
 TYPE_5__ level ; 
 char* FUNC7 (char*,char*) ; 

void FUNC8( void ) {
	int			i;
	gentity_t	*ent;
	char		*s, *value, *gametypeName;
	static char *gametypeNames[] = {"ffa", "tournament", "single", "team", "ctf", "oneflag", "obelisk", "harvester", "teamtournament"};

	// get the next free entity
	ent = FUNC3();

	for ( i = 0 ; i < level.numSpawnVars ; i++ ) {
		FUNC2( level.spawnVars[i][0], level.spawnVars[i][1], ent );
	}

	// check for "notsingle" flag
	if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
		FUNC4( "notsingle", "0", &i );
		if ( i ) {
			FUNC1( ent );
			return;
		}
	}
	// check for "notteam" flag (GT_FFA, GT_TOURNAMENT, GT_SINGLE_PLAYER)
	if ( g_gametype.integer >= GT_TEAM ) {
		FUNC4( "notteam", "0", &i );
		if ( i ) {
			FUNC1( ent );
			return;
		}
	} else {
		FUNC4( "notfree", "0", &i );
		if ( i ) {
			FUNC1( ent );
			return;
		}
	}

#ifdef MISSIONPACK
	G_SpawnInt( "notta", "0", &i );
	if ( i ) {
		G_FreeEntity( ent );
		return;
	}
#else
	FUNC4( "notq3a", "0", &i );
	if ( i ) {
		FUNC1( ent );
		return;
	}
#endif

	if( FUNC5( "gametype", NULL, &value ) ) {
		if( g_gametype.integer >= GT_FFA && g_gametype.integer < GT_MAX_GAME_TYPE ) {
			gametypeName = gametypeNames[g_gametype.integer];

			s = FUNC7( value, gametypeName );
			if( !s ) {
				FUNC1( ent );
				return;
			}
		}
	}

	// move editor origin to pos
	FUNC6( ent->s.origin, ent->s.pos.trBase );
	FUNC6( ent->s.origin, ent->r.currentOrigin );

	// if we didn't get a classname, don't bother spawning anything
	if ( !FUNC0( ent ) ) {
		FUNC1( ent );
	}
}