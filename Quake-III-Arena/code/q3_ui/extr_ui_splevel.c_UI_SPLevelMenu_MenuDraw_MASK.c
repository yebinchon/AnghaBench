#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec4_t ;
typedef  int /*<<< orphan*/  string ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_7__ {int x; int y; } ;
struct TYPE_10__ {TYPE_2__ generic; } ;
struct TYPE_6__ {scalar_t__ shader; } ;
struct TYPE_9__ {char* playerModel; int* awardLevels; int numMaps; char** levelNames; int* levelScores; int* levelScoresSkill; int numBots; char** botNames; scalar_t__* botPics; int /*<<< orphan*/  selectedArenaInfo; scalar_t__ levelFocusPic; TYPE_5__* item_maps; int /*<<< orphan*/  menu; scalar_t__ levelSelectedPic; scalar_t__* levelCompletePic; TYPE_1__ item_player; int /*<<< orphan*/  playerPicName; scalar_t__ reinit; } ;
struct TYPE_8__ {int realtime; } ;

/* Variables and functions */
 int AWARDS_Y ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *) ; 
 int PLAYER_Y ; 
 int PULSE_DIVISOR ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int UI_BIGFONT ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC9 (int,int,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int UI_LEFT ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  color_black ; 
 int /*<<< orphan*/  color_orange ; 
 int /*<<< orphan*/  color_red ; 
 int /*<<< orphan*/  color_white ; 
 int /*<<< orphan*/  color_yellow ; 
 scalar_t__ currentSet ; 
 TYPE_4__ levelMenuInfo ; 
 int selectedArena ; 
 scalar_t__ selectedArenaSet ; 
 double FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (double*) ; 
 TYPE_3__ uis ; 
 char* FUNC19 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC20( void ) {
	int				n, i;
	int				x, y;
	vec4_t			color;
	int				level;
//	int				fraglimit;
	int				pad;
	char			buf[MAX_INFO_VALUE];
	char			string[64];

	if(	levelMenuInfo.reinit ) {
		FUNC13();
		FUNC14();
		return;
	}

	// draw player name
	FUNC17( "name", string, 32 );
	FUNC5( string );
	FUNC10( 320, PLAYER_Y, string, UI_CENTER|UI_SMALLFONT, color_orange );

	// check for model changes
	FUNC17( "model", buf, sizeof(buf) );
	if( FUNC6( buf, levelMenuInfo.playerModel ) != 0 ) {
		FUNC7( levelMenuInfo.playerModel, buf, sizeof(levelMenuInfo.playerModel) );
		FUNC4( levelMenuInfo.playerModel, levelMenuInfo.playerPicName, sizeof(levelMenuInfo.playerPicName) );
		levelMenuInfo.item_player.shader = 0;
	}

	// standard menu drawing
	FUNC2( &levelMenuInfo.menu );

	// draw player award levels
	y = AWARDS_Y;
	i = 0;
	for( n = 0; n < 6; n++ ) {
		level = levelMenuInfo.awardLevels[n];
		if( level > 0 ) {
			if( i & 1 ) {
				x = 224 - (i - 1 ) / 2 * (48 + 16);
			}
			else {
				x = 368 + i / 2 * (48 + 16);
			}
			i++;

			if( level == 1 ) {
				continue;
			}

			if( level >= 1000000 ) {
				FUNC0( string, sizeof(string), "%im", level / 1000000 );
			}
			else if( level >= 1000 ) {
				FUNC0( string, sizeof(string), "%ik", level / 1000 );
			}
			else {
				FUNC0( string, sizeof(string), "%i", level );
			}

			FUNC11( x + 24, y + 48, string, UI_CENTER, color_yellow );
		}
	}

	FUNC10( 18, 38, FUNC19( "Tier %i", selectedArenaSet + 1 ), UI_LEFT|UI_SMALLFONT, color_orange );

	for ( n = 0; n < levelMenuInfo.numMaps; n++ ) {
		x = levelMenuInfo.item_maps[n].generic.x;
		y = levelMenuInfo.item_maps[n].generic.y;
		FUNC12( x, y + 96, 128, 18, color_black );
	}

	if ( selectedArenaSet > currentSet ) {
		FUNC10( 320, 216, "ACCESS DENIED", UI_CENTER|UI_BIGFONT, color_red );
		return;
	}

	// show levelshots for levels of current tier
	FUNC15( color_white, color );
	color[3] = 0.5+0.5*FUNC16(uis.realtime/PULSE_DIVISOR);
	for ( n = 0; n < levelMenuInfo.numMaps; n++ ) {
		x = levelMenuInfo.item_maps[n].generic.x;
		y = levelMenuInfo.item_maps[n].generic.y;

		FUNC11( x + 64, y + 96, levelMenuInfo.levelNames[n], UI_CENTER|UI_SMALLFONT, color_orange );

		if( levelMenuInfo.levelScores[n] == 1 ) {
			FUNC9( x, y, 128, 96, levelMenuInfo.levelCompletePic[levelMenuInfo.levelScoresSkill[n] - 1] ); 
		}

		if ( n == selectedArena ) {
			if( FUNC3( &levelMenuInfo.menu ) == &levelMenuInfo.item_maps[n] ) {
				FUNC18( color );
			}
			FUNC9( x-1, y-1, 130, 130 - 14, levelMenuInfo.levelSelectedPic ); 
			FUNC18( NULL );
		}
		else if( FUNC3( &levelMenuInfo.menu ) == &levelMenuInfo.item_maps[n] ) {
			FUNC18( color );
			FUNC9( x-31, y-30, 256, 256-27, levelMenuInfo.levelFocusPic); 
			FUNC18( NULL );
		}
	}

	// show map name and long name of selected level
	y = 192;
	FUNC7( buf, FUNC1( levelMenuInfo.selectedArenaInfo, "map" ), 20 );
	FUNC8( buf );
	FUNC0( string, sizeof(string), "%s: %s", buf, FUNC1( levelMenuInfo.selectedArenaInfo, "longname" ) );
	FUNC10( 320, y, string, UI_CENTER|UI_SMALLFONT, color_orange );

//	fraglimit = atoi( Info_ValueForKey( levelMenuInfo.selectedArenaInfo, "fraglimit" ) );
//	UI_DrawString( 18, 212, va("Frags %i", fraglimit) , UI_LEFT|UI_SMALLFONT, color_orange );

	// draw bot opponents
	y += 24;
	pad = (7 - levelMenuInfo.numBots) * (64 + 26) / 2;
	for( n = 0; n < levelMenuInfo.numBots; n++ ) {
		x = 18 + pad + (64 + 26) * n;
		if( levelMenuInfo.botPics[n] ) {
			FUNC9( x, y, 64, 64, levelMenuInfo.botPics[n]);
		}
		else {
			FUNC12( x, y, 64, 64, color_black );
			FUNC10( x+22, y+18, "?", UI_BIGFONT, color_orange );
		}
		FUNC11( x, y + 64, levelMenuInfo.botNames[n], UI_SMALLFONT|UI_LEFT, color_orange );
	}
}