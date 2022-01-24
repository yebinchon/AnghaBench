#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int x; int bottom; int flags; } ;
struct TYPE_14__ {TYPE_1__ generic; scalar_t__ shader; } ;
struct TYPE_12__ {int flags; } ;
struct TYPE_11__ {TYPE_5__ generic; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_2__ generic; } ;
struct TYPE_13__ {char const* selectedArenaInfo; int numMaps; TYPE_4__ item_rightarrow; TYPE_3__ item_leftarrow; TYPE_7__* item_maps; scalar_t__** levelPicNames; } ;

/* Variables and functions */
 int ARENAS_PER_TIER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int QMF_HIDDEN ; 
 int QMF_INACTIVE ; 
 void* FUNC2 (int) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int currentSet ; 
 int finalTier ; 
 TYPE_6__ levelMenuInfo ; 
 int maxTier ; 
 int minTier ; 
 int selectedArena ; 
 int selectedArenaSet ; 
 int trainingTier ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static void FUNC8( void ) {
	int			n;
	int			level;
	const char	*arenaInfo;

	if ( selectedArenaSet > currentSet ) {
		selectedArena = -1;
	}
	else if ( selectedArena == -1 ) {
		selectedArena = 0;
	}

	if( selectedArenaSet == trainingTier || selectedArenaSet == finalTier ) {
		selectedArena = 0;
	}

	if( selectedArena != -1 ) {
		FUNC7( "ui_spSelection", selectedArenaSet * ARENAS_PER_TIER + selectedArena );
	}

	if( selectedArenaSet == trainingTier ) {
		arenaInfo = FUNC3( "training" );
		level = FUNC6( FUNC1( arenaInfo, "num" ) );
		FUNC5( 0, level, arenaInfo );
		levelMenuInfo.selectedArenaInfo = arenaInfo;

		levelMenuInfo.item_maps[0].generic.x = 256;
		FUNC0( &levelMenuInfo.item_maps[0] );
		levelMenuInfo.item_maps[0].generic.bottom += 32;
		levelMenuInfo.numMaps = 1;

		levelMenuInfo.item_maps[1].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.item_maps[2].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.item_maps[3].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.levelPicNames[1][0] = 0;
		levelMenuInfo.levelPicNames[2][0] = 0;
		levelMenuInfo.levelPicNames[3][0] = 0;
		levelMenuInfo.item_maps[1].shader = 0;
		levelMenuInfo.item_maps[2].shader = 0;
		levelMenuInfo.item_maps[3].shader = 0;
	}
	else if( selectedArenaSet == finalTier ) {
		arenaInfo = FUNC3( "final" );
		level = FUNC6( FUNC1( arenaInfo, "num" ) );
		FUNC5( 0, level, arenaInfo );
		levelMenuInfo.selectedArenaInfo = arenaInfo;

		levelMenuInfo.item_maps[0].generic.x = 256;
		FUNC0( &levelMenuInfo.item_maps[0] );
		levelMenuInfo.item_maps[0].generic.bottom += 32;
		levelMenuInfo.numMaps = 1;

		levelMenuInfo.item_maps[1].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.item_maps[2].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.item_maps[3].generic.flags |= QMF_INACTIVE;
		levelMenuInfo.levelPicNames[1][0] = 0;
		levelMenuInfo.levelPicNames[2][0] = 0;
		levelMenuInfo.levelPicNames[3][0] = 0;
		levelMenuInfo.item_maps[1].shader = 0;
		levelMenuInfo.item_maps[2].shader = 0;
		levelMenuInfo.item_maps[3].shader = 0;
	}
	else {
		levelMenuInfo.item_maps[0].generic.x = 46;
		FUNC0( &levelMenuInfo.item_maps[0] );
		levelMenuInfo.item_maps[0].generic.bottom += 18;
		levelMenuInfo.numMaps = 4;

		for ( n = 0; n < 4; n++ ) {
			level = selectedArenaSet * ARENAS_PER_TIER + n;
			arenaInfo = FUNC2( level );
			FUNC5( n, level, arenaInfo );
		}

		if( selectedArena != -1 ) {
			levelMenuInfo.selectedArenaInfo = FUNC2( selectedArenaSet * ARENAS_PER_TIER + selectedArena );
		}
	}

	// enable/disable arrows when they are valid/invalid
	if ( selectedArenaSet == minTier ) {
		levelMenuInfo.item_leftarrow.generic.flags |= ( QMF_INACTIVE | QMF_HIDDEN );
	}
	else {
		levelMenuInfo.item_leftarrow.generic.flags &= ~( QMF_INACTIVE | QMF_HIDDEN );
	}

	if ( selectedArenaSet == maxTier ) {
		levelMenuInfo.item_rightarrow.generic.flags |= ( QMF_INACTIVE | QMF_HIDDEN );
	}
	else {
		levelMenuInfo.item_rightarrow.generic.flags &= ~( QMF_INACTIVE | QMF_HIDDEN );
	}

	FUNC4();
}