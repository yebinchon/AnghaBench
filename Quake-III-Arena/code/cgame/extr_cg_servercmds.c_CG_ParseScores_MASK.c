#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int numScores; TYPE_2__* scores; void** teamScores; } ;
struct TYPE_7__ {TYPE_1__* clientinfo; } ;
struct TYPE_6__ {int client; int /*<<< orphan*/  team; void* score; void* captures; void* perfect; void* assistCount; void* defendCount; void* guantletCount; void* excellentCount; void* impressiveCount; void* accuracy; void* scoreFlags; void* time; void* ping; } ;
struct TYPE_5__ {int powerups; int /*<<< orphan*/  team; void* score; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_CLIENTS ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__ cg ; 
 TYPE_3__ cgs ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4( void ) {
	int		i, powerups;

	cg.numScores = FUNC2( FUNC0( 1 ) );
	if ( cg.numScores > MAX_CLIENTS ) {
		cg.numScores = MAX_CLIENTS;
	}

	cg.teamScores[0] = FUNC2( FUNC0( 2 ) );
	cg.teamScores[1] = FUNC2( FUNC0( 3 ) );

	FUNC3( cg.scores, 0, sizeof( cg.scores ) );
	for ( i = 0 ; i < cg.numScores ; i++ ) {
		//
		cg.scores[i].client = FUNC2( FUNC0( i * 14 + 4 ) );
		cg.scores[i].score = FUNC2( FUNC0( i * 14 + 5 ) );
		cg.scores[i].ping = FUNC2( FUNC0( i * 14 + 6 ) );
		cg.scores[i].time = FUNC2( FUNC0( i * 14 + 7 ) );
		cg.scores[i].scoreFlags = FUNC2( FUNC0( i * 14 + 8 ) );
		powerups = FUNC2( FUNC0( i * 14 + 9 ) );
		cg.scores[i].accuracy = FUNC2(FUNC0(i * 14 + 10));
		cg.scores[i].impressiveCount = FUNC2(FUNC0(i * 14 + 11));
		cg.scores[i].excellentCount = FUNC2(FUNC0(i * 14 + 12));
		cg.scores[i].guantletCount = FUNC2(FUNC0(i * 14 + 13));
		cg.scores[i].defendCount = FUNC2(FUNC0(i * 14 + 14));
		cg.scores[i].assistCount = FUNC2(FUNC0(i * 14 + 15));
		cg.scores[i].perfect = FUNC2(FUNC0(i * 14 + 16));
		cg.scores[i].captures = FUNC2(FUNC0(i * 14 + 17));

		if ( cg.scores[i].client < 0 || cg.scores[i].client >= MAX_CLIENTS ) {
			cg.scores[i].client = 0;
		}
		cgs.clientinfo[ cg.scores[i].client ].score = cg.scores[i].score;
		cgs.clientinfo[ cg.scores[i].client ].powerups = powerups;

		cg.scores[i].team = cgs.clientinfo[cg.scores[i].client].team;
	}
#ifdef MISSIONPACK
	CG_SetScoreSelection(NULL);
#endif

}