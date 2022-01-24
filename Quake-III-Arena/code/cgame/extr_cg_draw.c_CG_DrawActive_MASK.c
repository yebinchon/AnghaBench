#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int stereoFrame_t ;
struct TYPE_8__ {int /*<<< orphan*/  vieworg; int /*<<< orphan*/ * viewaxis; } ;
struct TYPE_10__ {TYPE_3__ refdef; TYPE_2__* snap; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_6__ {scalar_t__* persistant; int pm_flags; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t PERS_TEAM ; 
 int PMF_SCOREBOARD ; 
#define  STEREO_CENTER 130 
#define  STEREO_LEFT 129 
#define  STEREO_RIGHT 128 
 scalar_t__ TEAM_SPECTATOR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ cg ; 
 TYPE_4__ cg_stereoSeparation ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void FUNC8( stereoFrame_t stereoView ) {
	float		separation;
	vec3_t		baseOrg;

	// optionally draw the info screen instead
	if ( !cg.snap ) {
		FUNC1();
		return;
	}

	// optionally draw the tournement scoreboard instead
	if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR &&
		( cg.snap->ps.pm_flags & PMF_SCOREBOARD ) ) {
		FUNC2();
		return;
	}

	switch ( stereoView ) {
	case STEREO_CENTER:
		separation = 0;
		break;
	case STEREO_LEFT:
		separation = -cg_stereoSeparation.value / 2;
		break;
	case STEREO_RIGHT:
		separation = cg_stereoSeparation.value / 2;
		break;
	default:
		separation = 0;
		FUNC3( "CG_DrawActive: Undefined stereoView" );
	}


	// clear around the rendered view if sized down
	FUNC4();

	// offset vieworg appropriately if we're doing stereo separation
	FUNC5( cg.refdef.vieworg, baseOrg );
	if ( separation != 0 ) {
		FUNC6( cg.refdef.vieworg, -separation, cg.refdef.viewaxis[1], cg.refdef.vieworg );
	}

	// draw 3D view
	FUNC7( &cg.refdef );

	// restore original viewpoint if running stereo
	if ( separation != 0 ) {
		FUNC5( baseOrg, cg.refdef.vieworg );
	}

	// draw status bar and other floating elements
 	FUNC0();
}