#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_11__ ;

/* Type definitions */
struct TYPE_22__ {int numpoints; scalar_t__** p; } ;
typedef  TYPE_1__ winding_t ;
typedef  scalar_t__* vec3_t ;
struct TYPE_23__ {int value; float lightSubdivide; int twoSided; scalar_t__* color; scalar_t__ autosprite; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_24__ {int photons; int /*<<< orphan*/  type; scalar_t__* color; scalar_t__* origin; struct TYPE_24__* next; } ;
typedef  TYPE_3__ light_t ;
struct TYPE_25__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__** lightmapVecs; } ;
typedef  TYPE_4__ dsurface_t ;
struct TYPE_26__ {scalar_t__* xyz; } ;
typedef  TYPE_5__ drawVert_t ;
struct TYPE_27__ {int numBoundaries; scalar_t__* surface; scalar_t__** points; } ;
typedef  TYPE_6__ cFacet_t ;
struct TYPE_28__ {int numFacets; TYPE_6__* facets; } ;
struct TYPE_21__ {int /*<<< orphan*/  shader; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,scalar_t__*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 float defaultLightSubdivide ; 
 TYPE_4__* drawSurfaces ; 
 TYPE_5__* drawVerts ; 
 TYPE_11__* dshaders ; 
 int /*<<< orphan*/  emit_point ; 
 TYPE_3__* lights ; 
 TYPE_3__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__**,scalar_t__**,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int numDrawSurfaces ; 
 int /*<<< orphan*/  numPointLights ; 
 int pointScale ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_7__** surfaceTest ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC14( void ) {
	int				i, j, side;
	dsurface_t		*ds;
	shaderInfo_t	*ls;
	winding_t		*w;
	cFacet_t		*f;
	light_t			*dl;
	vec3_t			origin;
	drawVert_t		*dv;
	int				c_lightSurfaces;
	float			lightSubdivide;
	vec3_t			normal;

	FUNC13 ("--- CreateSurfaceLights ---\n");
	c_lightSurfaces = 0;

	for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
		// see if this surface is light emiting
		ds = &drawSurfaces[i];

		ls = FUNC3( dshaders[ ds->shaderNum].shader );
		if ( ls->value == 0 ) {
			continue;
		}

		// determine how much we need to chop up the surface
		if ( ls->lightSubdivide ) {
			lightSubdivide = ls->lightSubdivide;
		} else {
			lightSubdivide = defaultLightSubdivide;
		}

		c_lightSurfaces++;

		// an autosprite shader will become
		// a point light instead of an area light
		if ( ls->autosprite ) {
			// autosprite geometry should only have four vertexes
			if ( surfaceTest[i] ) {
				// curve or misc_model
				f = surfaceTest[i]->facets;
				if ( surfaceTest[i]->numFacets != 1 || f->numBoundaries != 4 ) {
					FUNC9( "WARNING: surface at (%i %i %i) has autosprite shader but isn't a quad\n",
						(int)f->points[0], (int)f->points[1], (int)f->points[2] );
				}
				FUNC5( f->points[0], f->points[1], origin );
				FUNC5( f->points[2], origin, origin );
				FUNC5( f->points[3], origin, origin );
				FUNC7( origin, 0.25, origin );
			} else {
				// normal polygon
				dv = &drawVerts[ ds->firstVert ];
				if ( ds->numVerts != 4 ) {
					FUNC9( "WARNING: surface at (%i %i %i) has autosprite shader but %i verts\n",
						(int)dv->xyz[0], (int)dv->xyz[1], (int)dv->xyz[2] );
					continue;
				}

				FUNC5( dv[0].xyz, dv[1].xyz, origin );
				FUNC5( dv[2].xyz, origin, origin );
				FUNC5( dv[3].xyz, origin, origin );
				FUNC7( origin, 0.25, origin );
			}


			numPointLights++;
			dl = FUNC10(sizeof(*dl));
			FUNC12 (dl, 0, sizeof(*dl));
			dl->next = lights;
			lights = dl;

			FUNC6( origin, dl->origin );
			FUNC6( ls->color, dl->color );
			dl->photons = ls->value * pointScale;
			dl->type = emit_point;
			continue;
		}

		// possibly create for both sides of the polygon
		for ( side = 0 ; side <= ls->twoSided ; side++ ) {
			// create area lights
			if ( surfaceTest[i] ) {
				// curve or misc_model
				for ( j = 0 ; j < surfaceTest[i]->numFacets ; j++ ) {
					f = surfaceTest[i]->facets + j;
					w = FUNC0( f->numBoundaries );
					w->numpoints = f->numBoundaries;
					FUNC11( w->p, f->points, f->numBoundaries * 12 );

					FUNC6( f->surface, normal );
					if ( side ) {
						winding_t	*t;

						t = w;
						w = FUNC2( t );
						FUNC1( t );
						FUNC8( vec3_origin, normal, normal );
					}
					FUNC4( ls, w, normal, lightSubdivide, qtrue );
				}
			} else {
				// normal polygon

				w = FUNC0( ds->numVerts );
				w->numpoints = ds->numVerts;
				for ( j = 0 ; j < ds->numVerts ; j++ ) {
					FUNC6( drawVerts[ds->firstVert+j].xyz, w->p[j] );
				}
				FUNC6( ds->lightmapVecs[2], normal );
				if ( side ) {
					winding_t	*t;

					t = w;
					w = FUNC2( t );
					FUNC1( t );
					FUNC8( vec3_origin, normal, normal );
				}
				FUNC4( ls, w, normal, lightSubdivide, qtrue );
			}
		}
	}

	FUNC9( "%5i light emitting surfaces\n", c_lightSurfaces );
}