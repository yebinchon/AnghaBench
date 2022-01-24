#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int qboolean ;
typedef  int /*<<< orphan*/  newInfo ;
typedef  int /*<<< orphan*/  modelStr ;
struct TYPE_11__ {char const* name; char const* redTeam; char const* blueTeam; char const* modelName; char const* skinName; char const* headModelName; char const* headSkinName; int /*<<< orphan*/  infoValid; int /*<<< orphan*/  deferred; void* teamLeader; void* teamTask; void* team; void* losses; void* wins; void* handicap; void* botSkill; int /*<<< orphan*/  color2; int /*<<< orphan*/  color1; } ;
typedef  TYPE_1__ clientInfo_t ;
struct TYPE_16__ {int /*<<< orphan*/  loading; } ;
struct TYPE_15__ {int /*<<< orphan*/  integer; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ gametype; TYPE_1__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ CS_PLAYERS ; 
 char* DEFAULT_TEAM_MODEL ; 
 scalar_t__ GT_TEAM ; 
 char* FUNC6 (char const*,char*) ; 
 int MAX_QPATH ; 
 int MAX_TEAMNAME ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,int) ; 
 void* FUNC8 (char const*) ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_buildScript ; 
 TYPE_5__ cg_deferPlayers ; 
 TYPE_4__ cg_forceModel ; 
 TYPE_3__ cgs ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 char* FUNC10 (char const*,char) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int FUNC12 () ; 

void FUNC13( int clientNum ) {
	clientInfo_t *ci;
	clientInfo_t newInfo;
	const char	*configstring;
	const char	*v;
	char		*slash;

	ci = &cgs.clientinfo[clientNum];

	configstring = FUNC1( clientNum + CS_PLAYERS );
	if ( !configstring[0] ) {
		FUNC9( ci, 0, sizeof( *ci ) );
		return;		// player just left
	}

	// build into a temp buffer so the defer checks can use
	// the old value
	FUNC9( &newInfo, 0, sizeof( newInfo ) );

	// isolate the player's name
	v = FUNC6(configstring, "n");
	FUNC7( newInfo.name, v, sizeof( newInfo.name ) );

	// colors
	v = FUNC6( configstring, "c1" );
	FUNC0( v, newInfo.color1 );

	v = FUNC6( configstring, "c2" );
	FUNC0( v, newInfo.color2 );

	// bot skill
	v = FUNC6( configstring, "skill" );
	newInfo.botSkill = FUNC8( v );

	// handicap
	v = FUNC6( configstring, "hc" );
	newInfo.handicap = FUNC8( v );

	// wins
	v = FUNC6( configstring, "w" );
	newInfo.wins = FUNC8( v );

	// losses
	v = FUNC6( configstring, "l" );
	newInfo.losses = FUNC8( v );

	// team
	v = FUNC6( configstring, "t" );
	newInfo.team = FUNC8( v );

	// team task
	v = FUNC6( configstring, "tt" );
	newInfo.teamTask = FUNC8(v);

	// team leader
	v = FUNC6( configstring, "tl" );
	newInfo.teamLeader = FUNC8(v);

	v = FUNC6( configstring, "g_redteam" );
	FUNC7(newInfo.redTeam, v, MAX_TEAMNAME);

	v = FUNC6( configstring, "g_blueteam" );
	FUNC7(newInfo.blueTeam, v, MAX_TEAMNAME);

	// model
	v = FUNC6( configstring, "model" );
	if ( cg_forceModel.integer ) {
		// forcemodel makes everyone use a single model
		// to prevent load hitches
		char modelStr[MAX_QPATH];
		char *skin;

		if( cgs.gametype >= GT_TEAM ) {
			FUNC7( newInfo.modelName, DEFAULT_TEAM_MODEL, sizeof( newInfo.modelName ) );
			FUNC7( newInfo.skinName, "default", sizeof( newInfo.skinName ) );
		} else {
			FUNC11( "model", modelStr, sizeof( modelStr ) );
			if ( ( skin = FUNC10( modelStr, '/' ) ) == NULL) {
				skin = "default";
			} else {
				*skin++ = 0;
			}

			FUNC7( newInfo.skinName, skin, sizeof( newInfo.skinName ) );
			FUNC7( newInfo.modelName, modelStr, sizeof( newInfo.modelName ) );
		}

		if ( cgs.gametype >= GT_TEAM ) {
			// keep skin name
			slash = FUNC10( v, '/' );
			if ( slash ) {
				FUNC7( newInfo.skinName, slash + 1, sizeof( newInfo.skinName ) );
			}
		}
	} else {
		FUNC7( newInfo.modelName, v, sizeof( newInfo.modelName ) );

		slash = FUNC10( newInfo.modelName, '/' );
		if ( !slash ) {
			// modelName didn not include a skin name
			FUNC7( newInfo.skinName, "default", sizeof( newInfo.skinName ) );
		} else {
			FUNC7( newInfo.skinName, slash + 1, sizeof( newInfo.skinName ) );
			// truncate modelName
			*slash = 0;
		}
	}

	// head model
	v = FUNC6( configstring, "hmodel" );
	if ( cg_forceModel.integer ) {
		// forcemodel makes everyone use a single model
		// to prevent load hitches
		char modelStr[MAX_QPATH];
		char *skin;

		if( cgs.gametype >= GT_TEAM ) {
			FUNC7( newInfo.headModelName, DEFAULT_TEAM_MODEL, sizeof( newInfo.headModelName ) );
			FUNC7( newInfo.headSkinName, "default", sizeof( newInfo.headSkinName ) );
		} else {
			FUNC11( "headmodel", modelStr, sizeof( modelStr ) );
			if ( ( skin = FUNC10( modelStr, '/' ) ) == NULL) {
				skin = "default";
			} else {
				*skin++ = 0;
			}

			FUNC7( newInfo.headSkinName, skin, sizeof( newInfo.headSkinName ) );
			FUNC7( newInfo.headModelName, modelStr, sizeof( newInfo.headModelName ) );
		}

		if ( cgs.gametype >= GT_TEAM ) {
			// keep skin name
			slash = FUNC10( v, '/' );
			if ( slash ) {
				FUNC7( newInfo.headSkinName, slash + 1, sizeof( newInfo.headSkinName ) );
			}
		}
	} else {
		FUNC7( newInfo.headModelName, v, sizeof( newInfo.headModelName ) );

		slash = FUNC10( newInfo.headModelName, '/' );
		if ( !slash ) {
			// modelName didn not include a skin name
			FUNC7( newInfo.headSkinName, "default", sizeof( newInfo.headSkinName ) );
		} else {
			FUNC7( newInfo.headSkinName, slash + 1, sizeof( newInfo.headSkinName ) );
			// truncate modelName
			*slash = 0;
		}
	}

	// scan for an existing clientinfo that matches this modelname
	// so we can avoid loading checks if possible
	if ( !FUNC4( &newInfo ) ) {
		qboolean	forceDefer;

		forceDefer = FUNC12() < 4000000;

		// if we are defering loads, just have it pick the first valid
		if ( forceDefer || (cg_deferPlayers.integer && !cg_buildScript.integer && !cg.loading ) ) {
			// keep whatever they had if it won't violate team skins
			FUNC5( &newInfo );
			// if we are low on memory, leave them with this model
			if ( forceDefer ) {
				FUNC3( "Memory is low.  Using deferred model.\n" );
				newInfo.deferred = qfalse;
			}
		} else {
			FUNC2( &newInfo );
		}
	}

	// replace whatever was there with the new one
	newInfo.infoValid = qtrue;
	*ci = newInfo;
}