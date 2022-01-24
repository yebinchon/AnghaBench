#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int rewardStack; int* rewardCount; int /*<<< orphan*/ * rewardShader; int /*<<< orphan*/ * rewardSound; int /*<<< orphan*/  rewardTime; int /*<<< orphan*/  time; } ;
struct TYPE_3__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (float,float,char*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*) ; 
 float* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int ICON_SIZE ; 
 int /*<<< orphan*/  REWARD_TIME ; 
 int SCREEN_WIDTH ; 
 int /*<<< orphan*/  SMALLCHAR_HEIGHT ; 
 int SMALLCHAR_WIDTH ; 
 TYPE_2__ cg ; 
 TYPE_1__ cg_drawRewards ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( void ) { 
	float	*color;
	int		i, count;
	float	x, y;
	char	buf[32];

	if ( !cg_drawRewards.integer ) {
		return;
	}

	color = FUNC3( cg.rewardTime, REWARD_TIME );
	if ( !color ) {
		if (cg.rewardStack > 0) {
			for(i = 0; i < cg.rewardStack; i++) {
				cg.rewardSound[i] = cg.rewardSound[i+1];
				cg.rewardShader[i] = cg.rewardShader[i+1];
				cg.rewardCount[i] = cg.rewardCount[i+1];
			}
			cg.rewardTime = cg.time;
			cg.rewardStack--;
			color = FUNC3( cg.rewardTime, REWARD_TIME );
			FUNC6(cg.rewardSound[0], CHAN_ANNOUNCER);
		} else {
			return;
		}
	}

	FUNC5( color );

	/*
	count = cg.rewardCount[0]/10;				// number of big rewards to draw

	if (count) {
		y = 4;
		x = 320 - count * ICON_SIZE;
		for ( i = 0 ; i < count ; i++ ) {
			CG_DrawPic( x, y, (ICON_SIZE*2)-4, (ICON_SIZE*2)-4, cg.rewardShader[0] );
			x += (ICON_SIZE*2);
		}
	}

	count = cg.rewardCount[0] - count*10;		// number of small rewards to draw
	*/

	if ( cg.rewardCount[0] >= 10 ) {
		y = 56;
		x = 320 - ICON_SIZE/2;
		FUNC0( x, y, ICON_SIZE-4, ICON_SIZE-4, cg.rewardShader[0] );
		FUNC4(buf, sizeof(buf), "%d", cg.rewardCount[0]);
		x = ( SCREEN_WIDTH - SMALLCHAR_WIDTH * FUNC2( buf ) ) / 2;
		FUNC1( x, y+ICON_SIZE, buf, color, qfalse, qtrue,
								SMALLCHAR_WIDTH, SMALLCHAR_HEIGHT, 0 );
	}
	else {

		count = cg.rewardCount[0];

		y = 56;
		x = 320 - count * ICON_SIZE/2;
		for ( i = 0 ; i < count ; i++ ) {
			FUNC0( x, y, ICON_SIZE-4, ICON_SIZE-4, cg.rewardShader[0] );
			x += ICON_SIZE;
		}
	}
	FUNC5( NULL );
}