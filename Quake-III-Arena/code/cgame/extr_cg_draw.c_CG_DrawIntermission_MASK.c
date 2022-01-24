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
struct TYPE_4__ {int /*<<< orphan*/  scoreBoardShowing; int /*<<< orphan*/  time; int /*<<< orphan*/  scoreFadeTime; } ;
struct TYPE_3__ {scalar_t__ gametype; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ GT_SINGLE_PLAYER ; 
 TYPE_2__ cg ; 
 TYPE_1__ cgs ; 

__attribute__((used)) static void FUNC2( void ) {
//	int key;
#ifdef MISSIONPACK
	//if (cg_singlePlayer.integer) {
	//	CG_DrawCenterString();
	//	return;
	//}
#else
	if ( cgs.gametype == GT_SINGLE_PLAYER ) {
		FUNC0();
		return;
	}
#endif
	cg.scoreFadeTime = cg.time;
	cg.scoreBoardShowing = FUNC1();
}