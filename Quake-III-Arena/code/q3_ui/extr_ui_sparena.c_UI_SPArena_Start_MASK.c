#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int ARENAS_PER_TIER ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 char* FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 () ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8( const char *arenaInfo ) {
	char	*map;
	int		level;
	int		n;
	char	*txt;

	n = (int)FUNC6( "sv_maxclients" );
	if ( n < 8 ) {
		FUNC5( "sv_maxclients", 8 );
	}

	level = FUNC3( FUNC0( arenaInfo, "num" ) );
	txt = FUNC0( arenaInfo, "special" );
	if( txt[0] ) {
		if( FUNC1( txt, "training" ) == 0 ) {
			level = -4;
		}
		else if( FUNC1( txt, "final" ) == 0 ) {
			level = FUNC2() * ARENAS_PER_TIER;
		}
	}
	FUNC5( "ui_spSelection", level );

	map = FUNC0( arenaInfo, "map" );
	FUNC4( EXEC_APPEND, FUNC7( "spmap %s\n", map ) );
}