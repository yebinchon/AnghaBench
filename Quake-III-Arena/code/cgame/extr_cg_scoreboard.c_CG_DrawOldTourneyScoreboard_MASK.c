#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec4_t ;
struct TYPE_4__ {scalar_t__ team; char const* name; int /*<<< orphan*/  score; int /*<<< orphan*/  infoValid; } ;
typedef  TYPE_1__ clientInfo_t ;
struct TYPE_6__ {int scoresRequestTime; int time; int /*<<< orphan*/ * teamScores; } ;
struct TYPE_5__ {scalar_t__ gametype; TYPE_1__* clientinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,char const*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  CS_MOTD ; 
 int /*<<< orphan*/  GIANT_HEIGHT ; 
 int GIANT_WIDTH ; 
 scalar_t__ GT_TEAM ; 
 int MAX_CLIENTS ; 
 int /*<<< orphan*/  SCREEN_HEIGHT ; 
 int /*<<< orphan*/  SCREEN_WIDTH ; 
 scalar_t__ TEAM_FREE ; 
 TYPE_3__ cg ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  qtrue ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int,...) ; 

void FUNC7( void ) {
	const char		*s;
	vec4_t			color;
	int				min, tens, ones;
	clientInfo_t	*ci;
	int				y;
	int				i;

	// request more scores regularly
	if ( cg.scoresRequestTime + 2000 < cg.time ) {
		cg.scoresRequestTime = cg.time;
		FUNC5( "score" );
	}

	color[0] = 1;
	color[1] = 1;
	color[2] = 1;
	color[3] = 1;

	// draw the dialog background
	color[0] = color[1] = color[2] = 0;
	color[3] = 1;
	FUNC3( 0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, color );

	// print the mesage of the day
	s = FUNC1( CS_MOTD );
	if ( !s[0] ) {
		s = "Scoreboard";
	}

	// print optional title
	FUNC0( 8, s );

	// print server time
	ones = cg.time / 1000;
	min = ones / 60;
	ones %= 60;
	tens = ones / 10;
	ones %= 10;
	s = FUNC6("%i:%i%i", min, tens, ones );

	FUNC0( 64, s );


	// print the two scores

	y = 160;
	if ( cgs.gametype >= GT_TEAM ) {
		//
		// teamplay scoreboard
		//
		FUNC2( 8, y, "Red Team", color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
		s = FUNC6("%i", cg.teamScores[0] );
		FUNC2( 632 - GIANT_WIDTH * FUNC4(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
		
		y += 64;

		FUNC2( 8, y, "Blue Team", color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
		s = FUNC6("%i", cg.teamScores[1] );
		FUNC2( 632 - GIANT_WIDTH * FUNC4(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
	} else {
		//
		// free for all scoreboard
		//
		for ( i = 0 ; i < MAX_CLIENTS ; i++ ) {
			ci = &cgs.clientinfo[i];
			if ( !ci->infoValid ) {
				continue;
			}
			if ( ci->team != TEAM_FREE ) {
				continue;
			}

			FUNC2( 8, y, ci->name, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
			s = FUNC6("%i", ci->score );
			FUNC2( 632 - GIANT_WIDTH * FUNC4(s), y, s, color, qtrue, qtrue, GIANT_WIDTH, GIANT_HEIGHT, 0 );
			y += 64;
		}
	}


}