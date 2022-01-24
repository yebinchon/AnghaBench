#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int numpoints; int /*<<< orphan*/  points; } ;
typedef  TYPE_2__ winding_t ;
struct TYPE_17__ {int numpoints; int /*<<< orphan*/  points; } ;
struct TYPE_19__ {float photons; float* emitColor; TYPE_4__* si; int /*<<< orphan*/ * color; int /*<<< orphan*/  origin; int /*<<< orphan*/  type; int /*<<< orphan*/  twosided; int /*<<< orphan*/ * normal; int /*<<< orphan*/ * plane; TYPE_1__ w; } ;
typedef  TYPE_3__ vlight_t ;
typedef  float* vec3_t ;
struct TYPE_20__ {float value; float* color; int contents; int backsplashFraction; int /*<<< orphan*/  backsplashDistance; } ;
typedef  TYPE_4__ shaderInfo_t ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int CONTENTS_FOG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,float*,float,int /*<<< orphan*/ ,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  LIGHT_POINTFAKESURFACE ; 
 int /*<<< orphan*/  LIGHT_POINTRADIAL ; 
 int /*<<< orphan*/  ON_EPSILON ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float*,float,float*) ; 
 float FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,float*,float*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 float lightAreaScale ; 
 float lightFormFactorValueScale ; 
 TYPE_3__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numvlights ; 
 scalar_t__ qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_3__** vlights ; 

void FUNC14( shaderInfo_t *ls, winding_t *w, vec3_t normal, 
						float areaSubdivide, qboolean backsplash ) {
	float			area, value, intensity;
	vlight_t			*dl, *dl2;
	vec3_t			mins, maxs;
	int				axis;
	winding_t		*front, *back;
	vec3_t			planeNormal;
	float			planeDist;

	if ( !w ) {
		return;
	}

	FUNC9( w, mins, maxs );

	// check for subdivision
	for ( axis = 0 ; axis < 3 ; axis++ ) {
		if ( maxs[axis] - mins[axis] > areaSubdivide ) {
			FUNC4( planeNormal );
			planeNormal[axis] = 1;
			planeDist = ( maxs[axis] + mins[axis] ) * 0.5;
			FUNC0 ( w, planeNormal, planeDist, ON_EPSILON, &front, &back );
			FUNC14( ls, front, normal, areaSubdivide, qfalse );
			FUNC14( ls, back, normal, areaSubdivide, qfalse );
			FUNC2( w );
			return;
		}
	}

	// create a light from this
	area = FUNC8 (w);
	if ( area <= 0 || area > 20000000 ) {
		return;
	}

	dl = FUNC11(sizeof(*dl));
	FUNC13 (dl, 0, sizeof(*dl));
	dl->type = LIGHT_POINTFAKESURFACE;

	FUNC10( w, dl->origin );
	FUNC12(dl->w.points, w->points, sizeof(vec3_t) * w->numpoints);
	dl->w.numpoints = w->numpoints;
	FUNC5 ( normal, dl->normal);
	FUNC5 ( normal, dl->plane);
	dl->plane[3] = FUNC1( dl->origin, normal );

	value = ls->value;
	intensity = value * area * lightAreaScale;
	FUNC3( dl->origin, dl->normal, dl->origin );

	FUNC5( ls->color, dl->color );

	dl->photons = intensity;

	// emitColor is irrespective of the area
	FUNC7( ls->color, value*lightFormFactorValueScale*lightAreaScale, dl->emitColor );
	//
	FUNC5(dl->emitColor, dl->color);

	dl->si = ls;

	if ( ls->contents & CONTENTS_FOG ) {
		dl->twosided = qtrue;
	}

	vlights[numvlights++] = dl;

	// optionally create a point backsplash light
	if ( backsplash && ls->backsplashFraction > 0 ) {

		dl2 = FUNC11(sizeof(*dl));
		FUNC13 (dl2, 0, sizeof(*dl2));
		dl2->type = LIGHT_POINTRADIAL;

		FUNC6( dl->origin, ls->backsplashDistance, normal, dl2->origin );

		FUNC5( ls->color, dl2->color );

		dl2->photons = dl->photons * ls->backsplashFraction;
		dl2->si = ls;

		vlights[numvlights++] = dl2;
	}
}