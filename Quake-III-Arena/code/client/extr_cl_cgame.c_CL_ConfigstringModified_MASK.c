#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* stringData; int* stringOffsets; int dataCount; } ;
typedef  TYPE_1__ gameState_t ;
struct TYPE_5__ {TYPE_1__ gameState; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CS_SYSTEMINFO ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int MAX_CONFIGSTRINGS ; 
 int MAX_GAMESTATE_CHARS ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ cl ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

void FUNC9( void ) {
	char		*old, *s;
	int			i, index;
	char		*dup;
	gameState_t	oldGs;
	int			len;

	index = FUNC6( FUNC2(1) );
	if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
		FUNC3( ERR_DROP, "configstring > MAX_CONFIGSTRINGS" );
	}
	// get everything after "cs <num>"
	s = FUNC1(2);

	old = cl.gameState.stringData + cl.gameState.stringOffsets[ index ];
	if ( !FUNC7( old, s ) ) {
		return;		// unchanged
	}

	// build the new gameState_t
	oldGs = cl.gameState;

	FUNC5( &cl.gameState, 0, sizeof( cl.gameState ) );

	// leave the first 0 for uninitialized strings
	cl.gameState.dataCount = 1;
		
	for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
		if ( i == index ) {
			dup = s;
		} else {
			dup = oldGs.stringData + oldGs.stringOffsets[ i ];
		}
		if ( !dup[0] ) {
			continue;		// leave with the default empty string
		}

		len = FUNC8( dup );

		if ( len + 1 + cl.gameState.dataCount > MAX_GAMESTATE_CHARS ) {
			FUNC3( ERR_DROP, "MAX_GAMESTATE_CHARS exceeded" );
		}

		// append it to the gameState string buffer
		cl.gameState.stringOffsets[ i ] = cl.gameState.dataCount;
		FUNC4( cl.gameState.stringData + cl.gameState.dataCount, dup, len + 1 );
		cl.gameState.dataCount += len + 1;
	}

	if ( index == CS_SYSTEMINFO ) {
		// parse serverId and other cvars
		FUNC0();
	}

}