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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int ui_numSinglePlayerArenas ; 

int FUNC4( void ) {
	int		level;
	int		rank;
	int		skill;
	const char *info;

	info = FUNC2( "training" );
	if( info ) {
		level = FUNC3( FUNC0( info, "num" ) );
		FUNC1( level, &rank, &skill );
		if ( !rank || rank > 1 ) {
			return level;
		}
	}

	for( level = 0; level < ui_numSinglePlayerArenas; level++ ) {
		FUNC1( level, &rank, &skill );
		if ( !rank || rank > 1 ) {
			return level;
		}
	}

	info = FUNC2( "final" );
	if( !info ) {
		return -1;
	}
	return FUNC3( FUNC0( info, "num" ) );
}