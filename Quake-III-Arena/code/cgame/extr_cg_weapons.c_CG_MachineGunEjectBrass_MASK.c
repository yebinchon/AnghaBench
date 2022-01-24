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

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_15__ {int /*<<< orphan*/  hModel; int /*<<< orphan*/  axis; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ refEntity_t ;
struct TYPE_13__ {int* trBase; int* trDelta; scalar_t__ trTime; int /*<<< orphan*/  trType; } ;
struct TYPE_14__ {int /*<<< orphan*/  trDelta; int /*<<< orphan*/  trBase; scalar_t__ trTime; int /*<<< orphan*/  trType; } ;
struct TYPE_16__ {double bounceFactor; int /*<<< orphan*/  leMarkType; int /*<<< orphan*/  leBounceSoundType; int /*<<< orphan*/  leFlags; TYPE_2__ angles; TYPE_3__ pos; scalar_t__ startTime; scalar_t__ endTime; int /*<<< orphan*/  leType; TYPE_4__ refEntity; } ;
typedef  TYPE_5__ localEntity_t ;
struct TYPE_17__ {int /*<<< orphan*/  lerpOrigin; int /*<<< orphan*/  lerpAngles; } ;
typedef  TYPE_6__ centity_t ;
struct TYPE_20__ {scalar_t__ time; } ;
struct TYPE_19__ {int integer; } ;
struct TYPE_12__ {int /*<<< orphan*/  machinegunBrassModel; } ;
struct TYPE_18__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int CONTENTS_WATER ; 
 int /*<<< orphan*/  LEBS_BRASS ; 
 int /*<<< orphan*/  LEF_TUMBLE ; 
 int /*<<< orphan*/  LEMT_NONE ; 
 int /*<<< orphan*/  LE_FRAGMENT ; 
 int /*<<< orphan*/  TR_GRAVITY ; 
 int /*<<< orphan*/  TR_LINEAR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  axisDefault ; 
 TYPE_9__ cg ; 
 TYPE_8__ cg_brassTime ; 
 TYPE_7__ cgs ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int FUNC9 () ; 

__attribute__((used)) static void FUNC10( centity_t *cent ) {
	localEntity_t	*le;
	refEntity_t		*re;
	vec3_t			velocity, xvelocity;
	vec3_t			offset, xoffset;
	float			waterScale = 1.0f;
	vec3_t			v[3];

	if ( cg_brassTime.integer <= 0 ) {
		return;
	}

	le = FUNC2();
	re = &le->refEntity;

	velocity[0] = 0;
	velocity[1] = -50 + 40 * FUNC7();
	velocity[2] = 100 + 50 * FUNC7();

	le->leType = LE_FRAGMENT;
	le->startTime = cg.time;
	le->endTime = le->startTime + cg_brassTime.integer + ( cg_brassTime.integer / 4 ) * FUNC9();

	le->pos.trType = TR_GRAVITY;
	le->pos.trTime = cg.time - (FUNC8()&15);

	FUNC0( cent->lerpAngles, v );

	offset[0] = 8;
	offset[1] = -4;
	offset[2] = 24;

	xoffset[0] = offset[0] * v[0][0] + offset[1] * v[1][0] + offset[2] * v[2][0];
	xoffset[1] = offset[0] * v[0][1] + offset[1] * v[1][1] + offset[2] * v[2][1];
	xoffset[2] = offset[0] * v[0][2] + offset[1] * v[1][2] + offset[2] * v[2][2];
	FUNC4( cent->lerpOrigin, xoffset, re->origin );

	FUNC5( re->origin, le->pos.trBase );

	if ( FUNC3( re->origin, -1 ) & CONTENTS_WATER ) {
		waterScale = 0.10f;
	}

	xvelocity[0] = velocity[0] * v[0][0] + velocity[1] * v[1][0] + velocity[2] * v[2][0];
	xvelocity[1] = velocity[0] * v[0][1] + velocity[1] * v[1][1] + velocity[2] * v[2][1];
	xvelocity[2] = velocity[0] * v[0][2] + velocity[1] * v[1][2] + velocity[2] * v[2][2];
	FUNC6( xvelocity, waterScale, le->pos.trDelta );

	FUNC1( axisDefault, re->axis );
	re->hModel = cgs.media.machinegunBrassModel;

	le->bounceFactor = 0.4 * waterScale;

	le->angles.trType = TR_LINEAR;
	le->angles.trTime = cg.time;
	le->angles.trBase[0] = FUNC8()&31;
	le->angles.trBase[1] = FUNC8()&31;
	le->angles.trBase[2] = FUNC8()&31;
	le->angles.trDelta[0] = 2;
	le->angles.trDelta[1] = 1;
	le->angles.trDelta[2] = 0;

	le->leFlags = LEF_TUMBLE;
	le->leBounceSoundType = LEBS_BRASS;
	le->leMarkType = LEMT_NONE;
}