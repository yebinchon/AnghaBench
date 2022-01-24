#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_22__ {int* lightingOrigin; int /*<<< orphan*/  hModel; int /*<<< orphan*/ * axis; int /*<<< orphan*/  backlerp; int /*<<< orphan*/  frame; int /*<<< orphan*/  oldframe; int /*<<< orphan*/  renderfx; int /*<<< orphan*/  shadowPlane; int /*<<< orphan*/  customSkin; } ;
typedef  TYPE_5__ refEntity_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
typedef  int /*<<< orphan*/  pole ;
typedef  int /*<<< orphan*/  flag ;
typedef  int /*<<< orphan*/  clientInfo_t ;
struct TYPE_17__ {int yawAngle; int /*<<< orphan*/  backlerp; int /*<<< orphan*/  frame; int /*<<< orphan*/  oldFrame; int /*<<< orphan*/  yawing; } ;
struct TYPE_21__ {TYPE_10__ flag; } ;
struct TYPE_19__ {int* trDelta; } ;
struct TYPE_20__ {int legsAnim; size_t clientNum; TYPE_2__ pos; } ;
struct TYPE_23__ {TYPE_4__ pe; TYPE_3__ currentState; } ;
typedef  TYPE_6__ centity_t ;
struct TYPE_18__ {int /*<<< orphan*/  flagFlapModel; int /*<<< orphan*/  flagPoleModel; } ;
struct TYPE_24__ {int /*<<< orphan*/ * clientinfo; TYPE_1__ media; } ;

/* Variables and functions */
 int ANIM_TOGGLEBIT ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_10__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,float,int*,int /*<<< orphan*/ *) ; 
 float FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int FLAG_RUN ; 
 int FLAG_STAND ; 
 int LEGS_IDLE ; 
 int LEGS_IDLECR ; 
 int LEGS_WALK ; 
 int LEGS_WALKCR ; 
 float M_PI ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 size_t YAW ; 
 float FUNC9 (float) ; 
 TYPE_9__ cgs ; 
 double FUNC10 (float) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int qfalse ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 

__attribute__((used)) static void FUNC13( centity_t *cent, qhandle_t hSkin, refEntity_t *torso ) {
	clientInfo_t	*ci;
	refEntity_t	pole;
	refEntity_t	flag;
	vec3_t		angles, dir;
	int			legsAnim, flagAnim, updateangles;
	float		angle, d;

	// show the flag pole model
	FUNC11( &pole, 0, sizeof(pole) );
	pole.hModel = cgs.media.flagPoleModel;
	FUNC7( torso->lightingOrigin, pole.lightingOrigin );
	pole.shadowPlane = torso->shadowPlane;
	pole.renderfx = torso->renderfx;
	FUNC1( &pole, torso, torso->hModel, "tag_flag" );
	FUNC12( &pole );

	// show the flag model
	FUNC11( &flag, 0, sizeof(flag) );
	flag.hModel = cgs.media.flagFlapModel;
	flag.customSkin = hSkin;
	FUNC7( torso->lightingOrigin, flag.lightingOrigin );
	flag.shadowPlane = torso->shadowPlane;
	flag.renderfx = torso->renderfx;

	FUNC6(angles);

	updateangles = qfalse;
	legsAnim = cent->currentState.legsAnim & ~ANIM_TOGGLEBIT;
	if( legsAnim == LEGS_IDLE || legsAnim == LEGS_IDLECR ) {
		flagAnim = FLAG_STAND;
	} else if ( legsAnim == LEGS_WALK || legsAnim == LEGS_WALKCR ) {
		flagAnim = FLAG_STAND;
		updateangles = qtrue;
	} else {
		flagAnim = FLAG_RUN;
		updateangles = qtrue;
	}

	if ( updateangles ) {

		FUNC7( cent->currentState.pos.trDelta, dir );
		// add gravity
		dir[2] += 100;
		FUNC8( dir );
		d = FUNC5(pole.axis[2], dir);
		// if there is anough movement orthogonal to the flag pole
		if (FUNC10(d) < 0.9) {
			//
			d = FUNC5(pole.axis[0], dir);
			if (d > 1.0f) {
				d = 1.0f;
			}
			else if (d < -1.0f) {
				d = -1.0f;
			}
			angle = FUNC9(d);

			d = FUNC5(pole.axis[1], dir);
			if (d < 0) {
				angles[YAW] = 360 - angle * 180 / M_PI;
			}
			else {
				angles[YAW] = angle * 180 / M_PI;
			}
			if (angles[YAW] < 0)
				angles[YAW] += 360;
			if (angles[YAW] > 360)
				angles[YAW] -= 360;

			//vectoangles( cent->currentState.pos.trDelta, tmpangles );
			//angles[YAW] = tmpangles[YAW] + 45 - cent->pe.torso.yawAngle;
			// change the yaw angle
			FUNC4( angles[YAW], 25, 90, 0.15f, &cent->pe.flag.yawAngle, &cent->pe.flag.yawing );
		}

		/*
		d = DotProduct(pole.axis[2], dir);
		angle = Q_acos(d);

		d = DotProduct(pole.axis[1], dir);
		if (d < 0) {
			angle = 360 - angle * 180 / M_PI;
		}
		else {
			angle = angle * 180 / M_PI;
		}
		if (angle > 340 && angle < 20) {
			flagAnim = FLAG_RUNUP;
		}
		if (angle > 160 && angle < 200) {
			flagAnim = FLAG_RUNDOWN;
		}
		*/
	}

	// set the yaw angle
	angles[YAW] = cent->pe.flag.yawAngle;
	// lerp the flag animation frames
	ci = &cgs.clientinfo[ cent->currentState.clientNum ];
	FUNC3( ci, &cent->pe.flag, flagAnim, 1 );
	flag.oldframe = cent->pe.flag.oldFrame;
	flag.frame = cent->pe.flag.frame;
	flag.backlerp = cent->pe.flag.backlerp;

	FUNC0( angles, flag.axis );
	FUNC2( &flag, &pole, pole.hModel, "tag_flag" );

	FUNC12( &flag );
}