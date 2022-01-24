#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_14__ {int rdflags; int num_dlights; TYPE_5__* dlights; } ;
typedef  TYPE_3__ trRefdef_t ;
struct TYPE_13__ {int renderfx; int /*<<< orphan*/ * axis; int /*<<< orphan*/  origin; int /*<<< orphan*/  lightingOrigin; } ;
struct TYPE_15__ {int* ambientLight; int* directedLight; int* lightDir; TYPE_2__ e; int /*<<< orphan*/  ambientLightInt; scalar_t__ lightingCalculated; } ;
typedef  TYPE_4__ trRefEntity_t ;
struct TYPE_16__ {float radius; int* color; int /*<<< orphan*/  origin; } ;
typedef  TYPE_5__ dlight_t ;
typedef  int byte ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {int identityLight; scalar_t__ identityLightByte; int /*<<< orphan*/  sunDirection; TYPE_1__* world; } ;
struct TYPE_12__ {scalar_t__ lightGridData; } ;

/* Variables and functions */
 float DLIGHT_AT_RADIUS ; 
 float DLIGHT_MINIMUM_RADIUS ; 
 void* FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int RDF_NOWORLDMODEL ; 
 int RF_LIGHTING_ORIGIN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 float FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,float,int*,int*) ; 
 float FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int*,float,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ qtrue ; 
 TYPE_7__* r_debugLight ; 
 TYPE_6__ tr ; 

void FUNC10( const trRefdef_t *refdef, trRefEntity_t *ent ) {
	int				i;
	dlight_t		*dl;
	float			power;
	vec3_t			dir;
	float			d;
	vec3_t			lightDir;
	vec3_t			lightOrigin;

	// lighting calculations 
	if ( ent->lightingCalculated ) {
		return;
	}
	ent->lightingCalculated = qtrue;

	//
	// trace a sample point down to find ambient light
	//
	if ( ent->e.renderfx & RF_LIGHTING_ORIGIN ) {
		// seperate lightOrigins are needed so an object that is
		// sinking into the ground can still be lit, and so
		// multi-part models can be lit identically
		FUNC3( ent->e.lightingOrigin, lightOrigin );
	} else {
		FUNC3( ent->e.origin, lightOrigin );
	}

	// if NOWORLDMODEL, only use dynamic lights (menu system, etc)
	if ( !(refdef->rdflags & RDF_NOWORLDMODEL ) 
		&& tr.world->lightGridData ) {
		FUNC2( ent );
	} else {
		ent->ambientLight[0] = ent->ambientLight[1] = 
			ent->ambientLight[2] = tr.identityLight * 150;
		ent->directedLight[0] = ent->directedLight[1] = 
			ent->directedLight[2] = tr.identityLight * 150;
		FUNC3( tr.sunDirection, ent->lightDir );
	}

	// bonus items and view weapons have a fixed minimum add
	if ( 1 /* ent->e.renderfx & RF_MINLIGHT */ ) {
		// give everything a minimum light add
		ent->ambientLight[0] += tr.identityLight * 32;
		ent->ambientLight[1] += tr.identityLight * 32;
		ent->ambientLight[2] += tr.identityLight * 32;
	}

	//
	// modify the light by dynamic lights
	//
	d = FUNC4( ent->directedLight );
	FUNC7( ent->lightDir, d, lightDir );

	for ( i = 0 ; i < refdef->num_dlights ; i++ ) {
		dl = &refdef->dlights[i];
		FUNC8( dl->origin, lightOrigin, dir );
		d = FUNC6( dir );

		power = DLIGHT_AT_RADIUS * ( dl->radius * dl->radius );
		if ( d < DLIGHT_MINIMUM_RADIUS ) {
			d = DLIGHT_MINIMUM_RADIUS;
		}
		d = power / ( d * d );

		FUNC5( ent->directedLight, d, dl->color, ent->directedLight );
		FUNC5( lightDir, d, dir, lightDir );
	}

	// clamp ambient
	for ( i = 0 ; i < 3 ; i++ ) {
		if ( ent->ambientLight[i] > tr.identityLightByte ) {
			ent->ambientLight[i] = tr.identityLightByte;
		}
	}

	if ( r_debugLight->integer ) {
		FUNC1( ent );
	}

	// save out the byte packet version
	((byte *)&ent->ambientLightInt)[0] = FUNC9( ent->ambientLight[0] );
	((byte *)&ent->ambientLightInt)[1] = FUNC9( ent->ambientLight[1] );
	((byte *)&ent->ambientLightInt)[2] = FUNC9( ent->ambientLight[2] );
	((byte *)&ent->ambientLightInt)[3] = 0xff;
	
	// transform the direction to local space
	FUNC6( lightDir );
	ent->lightDir[0] = FUNC0( lightDir, ent->e.axis[0] );
	ent->lightDir[1] = FUNC0( lightDir, ent->e.axis[1] );
	ent->lightDir[2] = FUNC0( lightDir, ent->e.axis[2] );
}