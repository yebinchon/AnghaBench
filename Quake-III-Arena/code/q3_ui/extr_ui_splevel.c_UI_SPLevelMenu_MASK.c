#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  item_next; int /*<<< orphan*/  menu; } ;

/* Variables and functions */
 int ARENAS_PER_TIER ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int currentGame ; 
 int currentSet ; 
 int finalTier ; 
 TYPE_1__ levelMenuInfo ; 
 int maxTier ; 
 int minTier ; 
 int trainingTier ; 

void FUNC9( void ) {
	int			level;
	int			trainingLevel;
	const char	*arenaInfo;

	trainingTier = -1;
	arenaInfo = FUNC5( "training" );
	if( arenaInfo ) {
		minTier = trainingTier;
		trainingLevel = FUNC8( FUNC0( arenaInfo, "num" ) );
	}
	else {
		minTier = 0;
		trainingLevel = -2;
	}

	finalTier = FUNC4();
	arenaInfo = FUNC5( "final" );
	if( arenaInfo ) {
		maxTier = finalTier;
	}
	else {
		maxTier = finalTier - 1;
		if( maxTier < minTier ) {
			maxTier = minTier;
		}
	}

	level = FUNC2();
	if ( level == -1 ) {
		level = FUNC3() - 1;
		if( maxTier == finalTier ) {
			level++;
		}
	}

	if( level == trainingLevel ) {
		currentSet = -1;
		currentGame = 0;
	}
	else {
		currentSet = level / ARENAS_PER_TIER;
		currentGame = level % ARENAS_PER_TIER;
	}

	FUNC7();
	FUNC6( &levelMenuInfo.menu );
	FUNC1( &levelMenuInfo.menu, &levelMenuInfo.item_next );
}