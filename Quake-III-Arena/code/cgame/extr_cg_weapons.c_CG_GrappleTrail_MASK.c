#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  weaponInfo_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_12__ {int* origin; int* oldorigin; int* shaderRGBA; int /*<<< orphan*/  axis; int /*<<< orphan*/  customShader; int /*<<< orphan*/  reType; } ;
typedef  TYPE_2__ refEntity_t ;
struct TYPE_13__ {size_t otherEntityNum; int /*<<< orphan*/  pos; } ;
typedef  TYPE_3__ entityState_t ;
struct TYPE_14__ {TYPE_3__ currentState; int /*<<< orphan*/  trailTime; } ;
typedef  TYPE_4__ centity_t ;
typedef  int /*<<< orphan*/  beam ;
struct TYPE_17__ {int /*<<< orphan*/  time; } ;
struct TYPE_16__ {int /*<<< orphan*/  lerpAngles; int /*<<< orphan*/  lerpOrigin; } ;
struct TYPE_11__ {int /*<<< orphan*/  lightningShader; } ;
struct TYPE_15__ {TYPE_1__ media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  RT_LIGHTNING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int,int /*<<< orphan*/ ,int*) ; 
 TYPE_9__ cg ; 
 TYPE_8__* cg_entities ; 
 TYPE_7__ cgs ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8( centity_t *ent, const weaponInfo_t *wi ) {
	vec3_t	origin;
	entityState_t	*es;
	vec3_t			forward, up;
	refEntity_t		beam;

	es = &ent->currentState;

	FUNC2( &es->pos, cg.time, origin );
	ent->trailTime = cg.time;

	FUNC6( &beam, 0, sizeof( beam ) );
	//FIXME adjust for muzzle position
	FUNC4 ( cg_entities[ ent->currentState.otherEntityNum ].lerpOrigin, beam.origin );
	beam.origin[2] += 26;
	FUNC0( cg_entities[ ent->currentState.otherEntityNum ].lerpAngles, forward, NULL, up );
	FUNC5( beam.origin, -6, up, beam.origin );
	FUNC4( origin, beam.oldorigin );

	if (FUNC3( beam.origin, beam.oldorigin ) < 64 )
		return; // Don't draw if close

	beam.reType = RT_LIGHTNING;
	beam.customShader = cgs.media.lightningShader;

	FUNC1( beam.axis );
	beam.shaderRGBA[0] = 0xff;
	beam.shaderRGBA[1] = 0xff;
	beam.shaderRGBA[2] = 0xff;
	beam.shaderRGBA[3] = 0xff;
	FUNC7( &beam );
}