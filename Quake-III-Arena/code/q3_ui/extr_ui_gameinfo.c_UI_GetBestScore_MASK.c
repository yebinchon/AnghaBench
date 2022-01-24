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
typedef  int /*<<< orphan*/  arenaKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int ui_numArenas ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5( int level, int *score, int *skill ) {
	int		n;
	int		skillScore;
	int		bestScore;
	int		bestScoreSkill;
	char	arenaKey[16];
	char	scores[MAX_INFO_VALUE];

	if( !score || !skill ) {
		return;
	}

	if( level < 0 || level > ui_numArenas ) {
		return;
	}

	bestScore = 0;
	bestScoreSkill = 0;

	for( n = 1; n <= 5; n++ ) {
		FUNC3( FUNC4( "g_spScores%i", n ), scores, MAX_INFO_VALUE );

		FUNC0( arenaKey, sizeof( arenaKey ), "l%i", level );
		skillScore = FUNC2( FUNC1( scores, arenaKey ) );

		if( skillScore < 1 || skillScore > 8 ) {
			continue;
		}

		if( !bestScore || skillScore <= bestScore ) {
			bestScore = skillScore;
			bestScoreSkill = n;
		}
	}

	*score = bestScore;
	*skill = bestScoreSkill;
}