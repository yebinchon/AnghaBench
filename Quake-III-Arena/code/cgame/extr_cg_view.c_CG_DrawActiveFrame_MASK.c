#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ stereoFrame_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ value; } ;
struct TYPE_17__ {scalar_t__ value; } ;
struct TYPE_16__ {float value; } ;
struct TYPE_15__ {int time; int /*<<< orphan*/  viewaxis; int /*<<< orphan*/  vieworg; int /*<<< orphan*/  areamask; } ;
struct TYPE_13__ {scalar_t__* stats; int /*<<< orphan*/  clientNum; } ;
struct TYPE_14__ {int snapFlags; TYPE_2__ ps; int /*<<< orphan*/  areamask; } ;
struct TYPE_12__ {scalar_t__ hModel; } ;
struct TYPE_11__ {int time; scalar_t__* infoScreenText; int renderingThirdPerson; scalar_t__ frametime; scalar_t__ oldTime; int /*<<< orphan*/  clientFrame; TYPE_4__ refdef; TYPE_3__* snap; TYPE_1__ testModelEntity; int /*<<< orphan*/  predictedPlayerState; int /*<<< orphan*/  hyperspace; int /*<<< orphan*/  zoomSensitivity; int /*<<< orphan*/  weaponSelect; int /*<<< orphan*/  demoPlayback; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int SNAPFLAG_NOT_ACTIVE ; 
 size_t STAT_HEALTH ; 
 scalar_t__ STEREO_RIGHT ; 
 TYPE_10__ cg ; 
 TYPE_9__ cg_stats ; 
 TYPE_8__ cg_thirdPerson ; 
 TYPE_7__ cg_timescale ; 
 TYPE_6__ cg_timescaleFadeEnd ; 
 TYPE_5__ cg_timescaleFadeSpeed ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (char*,scalar_t__) ; 

void FUNC25( int serverTime, stereoFrame_t stereoView, qboolean demoPlayback ) {
	int		inwater;

	cg.time = serverTime;
	cg.demoPlayback = demoPlayback;

	// update cvars
	FUNC17();

	// if we are only updating the screen as a loading
	// pacifier, don't even try to read snapshots
	if ( cg.infoScreenText[0] != 0 ) {
		FUNC10();
		return;
	}

	// any looped sounds will be respecified as entities
	// are added to the render list
	FUNC21(qfalse);

	// clear all the render lists
	FUNC20();

	// set up cg.snap and possibly cg.nextSnap
	FUNC16();

	// if we haven't received any snapshots yet, all
	// we can draw is the information screen
	if ( !cg.snap || ( cg.snap->snapFlags & SNAPFLAG_NOT_ACTIVE ) ) {
		FUNC10();
		return;
	}

	// let the client system know what our weapon and zoom settings are
	FUNC23( cg.weaponSelect, cg.zoomSensitivity );

	// this counter will be bumped for every valid scene we generate
	cg.clientFrame++;

	// update cg.predictedPlayerState
	FUNC14();

	// decide on third person view
	cg.renderingThirdPerson = cg_thirdPerson.integer || (cg.snap->ps.stats[STAT_HEALTH] <= 0);

	// build cg.refdef
	inwater = FUNC7();

	// first person blend blobs, done after AnglesToAxis
	if ( !cg.renderingThirdPerson ) {
		FUNC8();
	}

	// build the render lists
	if ( !cg.hyperspace ) {
		FUNC3();			// adter calcViewValues, so predicted player state is correct
		FUNC2();
		FUNC4 ();
		FUNC1();
	}
	FUNC6( &cg.predictedPlayerState );

	// add buffered sounds
	FUNC11();

	// play buffered voice chats
	FUNC12();

	// finish up the rest of the refdef
	if ( cg.testModelEntity.hModel ) {
		FUNC5();
	}
	cg.refdef.time = cg.time;
	FUNC18( cg.refdef.areamask, cg.snap->areamask, sizeof( cg.refdef.areamask ) );

	// warning sounds when powerup is wearing off
	FUNC13();

	// update audio positions
	FUNC22( cg.snap->ps.clientNum, cg.refdef.vieworg, cg.refdef.viewaxis, inwater );

	// make sure the lagometerSample and frame timing isn't done twice when in stereo
	if ( stereoView != STEREO_RIGHT ) {
		cg.frametime = cg.time - cg.oldTime;
		if ( cg.frametime < 0 ) {
			cg.frametime = 0;
		}
		cg.oldTime = cg.time;
		FUNC0();
	}
	if (cg_timescale.value != cg_timescaleFadeEnd.value) {
		if (cg_timescale.value < cg_timescaleFadeEnd.value) {
			cg_timescale.value += cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
			if (cg_timescale.value > cg_timescaleFadeEnd.value)
				cg_timescale.value = cg_timescaleFadeEnd.value;
		}
		else {
			cg_timescale.value -= cg_timescaleFadeSpeed.value * ((float)cg.frametime) / 1000;
			if (cg_timescale.value < cg_timescaleFadeEnd.value)
				cg_timescale.value = cg_timescaleFadeEnd.value;
		}
		if (cg_timescaleFadeSpeed.value) {
			FUNC19("timescale", FUNC24("%f", cg_timescale.value));
		}
	}

	// actually issue the rendering calls
	FUNC9( stereoView );

	if ( cg_stats.integer ) {
		FUNC15( "cg.clientFrame:%i\n", cg.clientFrame );
	}


}