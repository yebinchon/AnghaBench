#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_12__ ;
typedef  struct TYPE_22__   TYPE_11__ ;

/* Type definitions */
struct TYPE_25__ {int numpoints; scalar_t__** points; } ;
typedef  TYPE_2__ winding_t ;
struct TYPE_26__ {int photons; int /*<<< orphan*/  type; scalar_t__* color; scalar_t__* origin; } ;
typedef  TYPE_3__ vlight_t ;
typedef  scalar_t__* vec3_t ;
struct TYPE_27__ {int value; float lightSubdivide; int twoSided; scalar_t__* color; scalar_t__ autosprite; } ;
typedef  TYPE_4__ shaderInfo_t ;
struct TYPE_24__ {scalar_t__* normal; } ;
struct TYPE_28__ {int numpoints; TYPE_1__ plane; scalar_t__** points; } ;
typedef  TYPE_5__ lFacet_t ;
struct TYPE_29__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__** lightmapVecs; } ;
typedef  TYPE_6__ dsurface_t ;
struct TYPE_30__ {scalar_t__* xyz; } ;
typedef  TYPE_7__ drawVert_t ;
struct TYPE_23__ {int /*<<< orphan*/  shader; } ;
struct TYPE_22__ {int numFacets; TYPE_5__* facets; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  LIGHT_POINTRADIAL ; 
 TYPE_2__* FUNC2 (TYPE_2__*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,TYPE_2__*,scalar_t__*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,double,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 TYPE_6__* drawSurfaces ; 
 TYPE_7__* drawVerts ; 
 TYPE_12__* dshaders ; 
 float lightDefaultSubdivide ; 
 int lightPointScale ; 
 TYPE_11__** lsurfaceTest ; 
 TYPE_3__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__**,scalar_t__**,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int numDrawSurfaces ; 
 int /*<<< orphan*/  numvlights ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  vec3_origin ; 
 TYPE_3__** vlights ; 

void FUNC13( void ) {
	int				i, j, side;
	dsurface_t		*ds;
	shaderInfo_t	*ls;
	winding_t		*w;
	lFacet_t		*f;
	vlight_t			*dl;
	vec3_t			origin;
	drawVert_t		*dv;
	int				c_surfaceLights;
	float			lightSubdivide;
	vec3_t			normal;


	c_surfaceLights = 0;
	FUNC9 ("Creating surface lights...\n");

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
			lightSubdivide = lightDefaultSubdivide;
		}

		c_surfaceLights++;

		// an autosprite shader will become
		// a point light instead of an area light
		if ( ls->autosprite ) {
			// autosprite geometry should only have four vertexes
			if ( lsurfaceTest[i] ) {
				// curve or misc_model
				f = lsurfaceTest[i]->facets;
				if ( lsurfaceTest[i]->numFacets != 1 || f->numpoints != 4 ) {
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

			dl = FUNC10(sizeof(*dl));
			FUNC12 (dl, 0, sizeof(*dl));
			FUNC6( origin, dl->origin );
			FUNC6( ls->color, dl->color );
			dl->photons = ls->value * lightPointScale;
			dl->type = LIGHT_POINTRADIAL;
			vlights[numvlights++] = dl;
			continue;
		}

		// possibly create for both sides of the polygon
		for ( side = 0 ; side <= ls->twoSided ; side++ ) {
			// create area lights
			if ( lsurfaceTest[i] ) {
				// curve or misc_model
				for ( j = 0 ; j < lsurfaceTest[i]->numFacets ; j++ ) {
					f = lsurfaceTest[i]->facets + j;
					w = FUNC0( f->numpoints );
					w->numpoints = f->numpoints;
					FUNC11( w->points, f->points, f->numpoints * 12 );

					FUNC6( f->plane.normal, normal );
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
					FUNC6( drawVerts[ds->firstVert+j].xyz, w->points[j] );
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

	FUNC9( "%7i light emitting surfaces\n", c_surfaceLights );
}