#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_17__ ;
typedef  struct TYPE_24__   TYPE_16__ ;
typedef  struct TYPE_23__   TYPE_15__ ;
typedef  struct TYPE_22__   TYPE_14__ ;
typedef  struct TYPE_21__   TYPE_13__ ;
typedef  struct TYPE_20__   TYPE_12__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_34__ {int curvalue; } ;
struct TYPE_33__ {int curvalue; } ;
struct TYPE_32__ {int curvalue; } ;
struct TYPE_30__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_31__ {TYPE_5__ field; } ;
struct TYPE_28__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_29__ {TYPE_3__ field; } ;
struct TYPE_26__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_27__ {TYPE_1__ field; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_19__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_20__ {TYPE_11__ field; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_25__ {char** playerNameBuffers; int gametype; TYPE_15__* playerTeam; TYPE_14__* playerType; TYPE_13__ punkbuster; TYPE_12__ hostname; TYPE_10__ botSkill; TYPE_9__ pure; TYPE_8__ friendlyfire; TYPE_7__ dedicated; TYPE_6__ flaglimit; TYPE_4__ fraglimit; TYPE_2__ timelimit; } ;
struct TYPE_24__ {size_t currentmap; int /*<<< orphan*/ * maplist; } ;
struct TYPE_23__ {size_t curvalue; } ;
struct TYPE_22__ {int curvalue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int,...) ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
#define  GT_CTF 131 
#define  GT_FFA 130 
#define  GT_TEAM 129 
#define  GT_TOURNAMENT 128 
 int PLAYER_SLOTS ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * playerTeam_list ; 
 TYPE_17__ s_serveroptions ; 
 TYPE_16__ s_startserver ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( void ) {
	int		timelimit;
	int		fraglimit;
	int		maxclients;
	int		dedicated;
	int		friendlyfire;
	int		flaglimit;
	int		pure;
	int		skill;
	int		n;
	char	buf[64];


	timelimit	 = FUNC2( s_serveroptions.timelimit.field.buffer );
	fraglimit	 = FUNC2( s_serveroptions.fraglimit.field.buffer );
	flaglimit	 = FUNC2( s_serveroptions.flaglimit.field.buffer );
	dedicated	 = s_serveroptions.dedicated.curvalue;
	friendlyfire = s_serveroptions.friendlyfire.curvalue;
	pure		 = s_serveroptions.pure.curvalue;
	skill		 = s_serveroptions.botSkill.curvalue + 1;

	//set maxclients
	for( n = 0, maxclients = 0; n < PLAYER_SLOTS; n++ ) {
		if( s_serveroptions.playerType[n].curvalue == 2 ) {
			continue;
		}
		if( (s_serveroptions.playerType[n].curvalue == 1) && (s_serveroptions.playerNameBuffers[n][0] == 0) ) {
			continue;
		}
		maxclients++;
	}

	switch( s_serveroptions.gametype ) {
	case GT_FFA:
	default:
		FUNC5( "ui_ffa_fraglimit", fraglimit );
		FUNC5( "ui_ffa_timelimit", timelimit );
		break;

	case GT_TOURNAMENT:
		FUNC5( "ui_tourney_fraglimit", fraglimit );
		FUNC5( "ui_tourney_timelimit", timelimit );
		break;

	case GT_TEAM:
		FUNC5( "ui_team_fraglimit", fraglimit );
		FUNC5( "ui_team_timelimit", timelimit );
		FUNC5( "ui_team_friendlt", friendlyfire );
		break;

	case GT_CTF:
		FUNC5( "ui_ctf_fraglimit", fraglimit );
		FUNC5( "ui_ctf_timelimit", timelimit );
		FUNC5( "ui_ctf_friendlt", friendlyfire );
		break;
	}

	FUNC5( "sv_maxclients", FUNC0( 0, 12, maxclients ) );
	FUNC5( "dedicated", FUNC0( 0, 2, dedicated ) );
	FUNC5 ("timelimit", FUNC0( 0, timelimit, timelimit ) );
	FUNC5 ("fraglimit", FUNC0( 0, fraglimit, fraglimit ) );
	FUNC5 ("capturelimit", FUNC0( 0, flaglimit, flaglimit ) );
	FUNC5( "g_friendlyfire", friendlyfire );
	FUNC5( "sv_pure", pure );
	FUNC4("sv_hostname", s_serveroptions.hostname.field.buffer );
	
	FUNC5( "sv_punkbuster", s_serveroptions.punkbuster.curvalue );

	// the wait commands will allow the dedicated to take effect
	FUNC3( EXEC_APPEND, FUNC6( "wait ; wait ; map %s\n", s_startserver.maplist[s_startserver.currentmap] ) );

	// add bots
	FUNC3( EXEC_APPEND, "wait 3\n" );
	for( n = 1; n < PLAYER_SLOTS; n++ ) {
		if( s_serveroptions.playerType[n].curvalue != 1 ) {
			continue;
		}
		if( s_serveroptions.playerNameBuffers[n][0] == 0 ) {
			continue;
		}
		if( s_serveroptions.playerNameBuffers[n][0] == '-' ) {
			continue;
		}
		if( s_serveroptions.gametype >= GT_TEAM ) {
			FUNC1( buf, sizeof(buf), "addbot %s %i %s\n", s_serveroptions.playerNameBuffers[n], skill,
				playerTeam_list[s_serveroptions.playerTeam[n].curvalue] );
		}
		else {
			FUNC1( buf, sizeof(buf), "addbot %s %i\n", s_serveroptions.playerNameBuffers[n], skill );
		}
		FUNC3( EXEC_APPEND, buf );
	}

	// set player's team
	if( dedicated == 0 && s_serveroptions.gametype >= GT_TEAM ) {
		FUNC3( EXEC_APPEND, FUNC6( "wait 5; team %s\n", playerTeam_list[s_serveroptions.playerTeam[0].curvalue] ) );
	}
}