#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_5__ {scalar_t__ passSolid; } ;
typedef  TYPE_1__ trace_t ;
typedef  int /*<<< orphan*/  traceWork_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_6__ {scalar_t__ type; float dist; float photons; float* color; int /*<<< orphan*/  origin; scalar_t__ linearLight; int /*<<< orphan*/  emitColor; scalar_t__ twosided; int /*<<< orphan*/  w; int /*<<< orphan*/  normal; } ;
typedef  TYPE_2__ light_t ;

/* Variables and functions */
 float FUNC0 (float* const,int /*<<< orphan*/ ) ; 
 float FUNC1 (float* const,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float* const,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 float FUNC4 (float*) ; 
 scalar_t__ FUNC5 (float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,float,float*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,float* const,float*) ; 
 scalar_t__ emit_area ; 
 scalar_t__ emit_point ; 
 scalar_t__ emit_spotlight ; 
 scalar_t__ exactPointToPolygon ; 
 float linearScale ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC8( const light_t *light, const vec3_t origin,
								  vec3_t color, traceWork_t *tw ) {
	trace_t		trace;
	float		add;

	add = 0;

	FUNC3( color );

	// testing exact PTPFF
	if ( exactPointToPolygon && light->type == emit_area ) {
		float		factor;
		float		d;
		vec3_t		normal;

		// see if the point is behind the light
		d = FUNC0( origin, light->normal ) - light->dist;
		if ( !light->twosided ) {
			if ( d < 1 ) {
				return qfalse;		// point is behind light
			}
		}

		// test occlusion
		// clip the line, tracing from the surface towards the light
		FUNC2( origin, light->origin, &trace, qfalse, tw );
		if ( trace.passSolid ) {
			return qfalse;
		}

		// calculate the contribution
		FUNC7( light->origin, origin, normal );
		if ( FUNC5( normal, normal ) == 0 ) {
			return qfalse;
		}
		factor = FUNC1( origin, normal, light->w );
		if ( factor <= 0 ) {
			if ( light->twosided ) {
				factor = -factor;
			} else {
				return qfalse;
			}
		}
		FUNC6( light->emitColor, factor, color );
		return qtrue;
	}

	// calculate the amount of light at this sample
	if ( light->type == emit_point || light->type == emit_spotlight ) {
		vec3_t		dir;
		float		dist;

		FUNC7( light->origin, origin, dir );
		dist = FUNC4( dir );
		// clamp the distance to prevent super hot spots
		if ( dist < 16 ) {
			dist = 16;
		}
		if ( light->linearLight ) {
			add = light->photons * linearScale - dist;
			if ( add < 0 ) {
				add = 0;
			}
		} else {
			add = light->photons / ( dist * dist );
		}
	} else {
		return qfalse;
	}

	if ( add <= 1.0 ) {
		return qfalse;
	}

	// clip the line, tracing from the surface towards the light
	FUNC2( origin, light->origin, &trace, qfalse, tw );

	// other light rays must not hit anything
	if ( trace.passSolid ) {
		return qfalse;
	}

	// add the result
	color[0] = add * light->color[0];
	color[1] = add * light->color[1];
	color[2] = add * light->color[2];

	return qtrue;
}