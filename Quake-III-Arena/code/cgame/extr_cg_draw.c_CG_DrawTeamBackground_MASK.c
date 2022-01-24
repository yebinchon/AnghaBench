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
typedef  float* vec4_t ;
struct TYPE_3__ {int /*<<< orphan*/  teamStatusBar; } ;
struct TYPE_4__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int TEAM_BLUE ; 
 int TEAM_RED ; 
 TYPE_2__ cgs ; 
 int /*<<< orphan*/  FUNC1 (float*) ; 

void FUNC2( int x, int y, int w, int h, float alpha, int team )
{
	vec4_t		hcolor;

	hcolor[3] = alpha;
	if ( team == TEAM_RED ) {
		hcolor[0] = 1;
		hcolor[1] = 0;
		hcolor[2] = 0;
	} else if ( team == TEAM_BLUE ) {
		hcolor[0] = 0;
		hcolor[1] = 0;
		hcolor[2] = 1;
	} else {
		return;
	}
	FUNC1( hcolor );
	FUNC0( x, y, w, h, cgs.media.teamStatusBar );
	FUNC1( NULL );
}