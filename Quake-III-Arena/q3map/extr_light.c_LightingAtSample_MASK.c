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
struct TYPE_5__ {double* filter; scalar_t__ passSolid; } ;
typedef  TYPE_1__ trace_t ;
typedef  int /*<<< orphan*/  traceWork_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {float* origin; scalar_t__ type; float* normal; float dist; float* emitColor; float photons; float radiusByDist; float* color; scalar_t__ linearLight; scalar_t__ twosided; int /*<<< orphan*/  w; struct TYPE_6__* next; } ;
typedef  TYPE_2__ light_t ;

/* Variables and functions */
 float FUNC0 (float*,float*) ; 
 float FUNC1 (float*,float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 float FUNC5 (float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float*,float*) ; 
 float FUNC7 (float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float*) ; 
 float* ambientColor ; 
 scalar_t__ emit_area ; 
 scalar_t__ emit_point ; 
 scalar_t__ emit_spotlight ; 
 scalar_t__ exactPointToPolygon ; 
 TYPE_2__* lights ; 
 float linearScale ; 
 int /*<<< orphan*/  notrace ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC9( vec3_t origin, vec3_t normal, vec3_t color, 
					  qboolean testOcclusion, qboolean forceSunLight, traceWork_t *tw ) {
	light_t		*light;
	trace_t		trace;
	float		angle;
	float		add;
	float		dist;
	vec3_t		dir;

	FUNC4( ambientColor, color );

	// trace to all the lights
	for ( light = lights ; light ; light = light->next ) {

		//MrE: if the light is behind the surface
		if ( FUNC0(light->origin, normal) - FUNC0(normal, origin) < 0 )
			continue;
		// testing exact PTPFF
		if ( exactPointToPolygon && light->type == emit_area ) {
			float		factor;
			float		d;
			vec3_t		pushedOrigin;

			// see if the point is behind the light
			d = FUNC0( origin, light->normal ) - light->dist;
			if ( !light->twosided ) {
				if ( d < -1 ) {
					continue;		// point is behind light
				}
			}

			// test occlusion and find light filters
			// clip the line, tracing from the surface towards the light
			if ( !notrace && testOcclusion ) {
				FUNC3( origin, light->origin, &trace, qfalse, tw );

				// other light rays must not hit anything
				if ( trace.passSolid ) {
					continue;
				}
			} else {
				trace.filter[0] = 1.0;
				trace.filter[1] = 1.0;
				trace.filter[2] = 1.0;
			}

			// nudge the point so that it is clearly forward of the light
			// so that surfaces meeting a light emiter don't get black edges
			if ( d > -8 && d < 8 ) {
				FUNC6( origin, (8-d), light->normal, pushedOrigin );	
			} else {
				FUNC4( origin, pushedOrigin );
			}

			// calculate the contribution
			factor = FUNC1( pushedOrigin, normal, light->w );
			if ( factor <= 0 ) {
				if ( light->twosided ) {
					factor = -factor;
				} else {
					continue;
				}
			}
			color[0] += factor * light->emitColor[0] * trace.filter[0];
			color[1] += factor * light->emitColor[1] * trace.filter[1];
			color[2] += factor * light->emitColor[2] * trace.filter[2];

			continue;
		}

		// calculate the amount of light at this sample
		if ( light->type == emit_point ) {
			FUNC8( light->origin, origin, dir );
			dist = FUNC7( dir, dir );
			// clamp the distance to prevent super hot spots
			if ( dist < 16 ) {
				dist = 16;
			}
			angle = FUNC0( normal, dir );
			if ( light->linearLight ) {
				add = angle * light->photons * linearScale - dist;
				if ( add < 0 ) {
					add = 0;
				}
			} else {
				add = light->photons / ( dist * dist ) * angle;
			}
		} else if ( light->type == emit_spotlight ) {
			float	distByNormal;
			vec3_t	pointAtDist;
			float	radiusAtDist;
			float	sampleRadius;
			vec3_t	distToSample;
			float	coneScale;

			FUNC8( light->origin, origin, dir );

			distByNormal = -FUNC0( dir, light->normal );
			if ( distByNormal < 0 ) {
				continue;
			}
			FUNC6( light->origin, distByNormal, light->normal, pointAtDist );
			radiusAtDist = light->radiusByDist * distByNormal;

			FUNC8( origin, pointAtDist, distToSample );
			sampleRadius = FUNC5( distToSample );

			if ( sampleRadius >= radiusAtDist ) {
				continue;		// outside the cone
			}
			if ( sampleRadius <= radiusAtDist - 32 ) {
				coneScale = 1.0;	// fully inside
			} else {
				coneScale = ( radiusAtDist - sampleRadius ) / 32.0;
			}
			
			dist = FUNC7( dir, dir );
			// clamp the distance to prevent super hot spots
			if ( dist < 16 ) {
				dist = 16;
			}
			angle = FUNC0( normal, dir );
			add = light->photons / ( dist * dist ) * angle * coneScale;

		} else if ( light->type == emit_area ) {
			FUNC8( light->origin, origin, dir );
			dist = FUNC7( dir, dir );
			// clamp the distance to prevent super hot spots
			if ( dist < 16 ) {
				dist = 16;
			}
			angle = FUNC0( normal, dir );
			if ( angle <= 0 ) {
				continue;
			}
			angle *= -FUNC0( light->normal, dir );
			if ( angle <= 0 ) {
				continue;
			}

			if ( light->linearLight ) {
				add = angle * light->photons * linearScale - dist;
				if ( add < 0 ) {
					add = 0;
				}
			} else {
				add = light->photons / ( dist * dist ) * angle;
			}
		}

		if ( add <= 1.0 ) {
			continue;
		}

		// clip the line, tracing from the surface towards the light
		if ( !notrace && testOcclusion ) {
			FUNC3( origin, light->origin, &trace, qfalse, tw );

			// other light rays must not hit anything
			if ( trace.passSolid ) {
				continue;
			}
		} else {
			trace.filter[0] = 1;
			trace.filter[1] = 1;
			trace.filter[2] = 1;
		}
		
		// add the result
		color[0] += add * light->color[0] * trace.filter[0];
		color[1] += add * light->color[1] * trace.filter[1];
		color[2] += add * light->color[2] * trace.filter[2];
	}

	//
	// trace directly to the sun
	//
	if ( testOcclusion || forceSunLight ) {
		FUNC2( origin, normal, color, tw );
	}
}