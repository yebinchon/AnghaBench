#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_21__ {float dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ plane_t ;
struct TYPE_22__ {int numpoints; scalar_t__ num; int /*<<< orphan*/ * points; TYPE_1__ plane; int /*<<< orphan*/ * boundaries; int /*<<< orphan*/ ** lightmapCoords; } ;
typedef  TYPE_2__ lFacet_t ;
typedef  int /*<<< orphan*/  dsurface_t ;
struct TYPE_23__ {int /*<<< orphan*/ * lightmap; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_3__ drawVert_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PLANAR_EPSILON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*,TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * drawSurfaces ; 
 scalar_t__ FUNC9 (float) ; 
 int /*<<< orphan*/  numfacets ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/ * surfaceOrigin ; 

qboolean FUNC10( dsurface_t *dsurf, shaderInfo_t *si, lFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c, drawVert_t *d ) {
	float	dist;
	vec3_t dir;
	int i;
	plane_t plane;

	// if we can't generate a valid plane for the points, ignore the facet
	if ( !FUNC4( &f->plane, a->xyz, b->xyz, c->xyz ) ) {
		f->numpoints = 0;
		return qfalse;
	}

	// if the fourth point is also on the plane, we can make a quad facet
	dist = FUNC0( d->xyz, f->plane.normal ) - f->plane.dist;
	if ( FUNC9( dist ) > PLANAR_EPSILON ) {
		f->numpoints = 0;
		return qfalse;
	}

	FUNC6( a->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[0] );
	FUNC6( b->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[1] );
	FUNC6( c->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[2] );
	FUNC6( d->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[3] );

	for (i = 1; i < 4; i++)
	{
		if ( !FUNC4( &plane, f->points[i], f->points[(i+1) % 4], f->points[(i+2) % 4]) ) {
			f->numpoints = 0;
			return qfalse;
		}

		if (!FUNC1(&f->plane, &plane, qfalse)) {
			f->numpoints = 0;
			return qfalse;
		}
	}

	f->lightmapCoords[0][0] = a->lightmap[0];
	f->lightmapCoords[0][1] = a->lightmap[1];
	f->lightmapCoords[1][0] = b->lightmap[0];
	f->lightmapCoords[1][1] = b->lightmap[1];
	f->lightmapCoords[2][0] = c->lightmap[0];
	f->lightmapCoords[2][1] = c->lightmap[1];
	f->lightmapCoords[3][0] = d->lightmap[0];
	f->lightmapCoords[3][1] = d->lightmap[1];

	FUNC2( &f->boundaries[0], &f->plane, f->points[0], f->points[1] );
	FUNC2( &f->boundaries[1], &f->plane, f->points[1], f->points[2] );
	FUNC2( &f->boundaries[2], &f->plane, f->points[2], f->points[3] );
	FUNC2( &f->boundaries[3], &f->plane, f->points[3], f->points[0] );

	for (i = 0; i < 4; i++)
	{
		FUNC8(f->points[(i+1)%4], f->points[i], dir);
		if (FUNC7(dir) < 0.1)
			return qfalse;
	}

	FUNC5( f, a, b, c );
	FUNC3( dsurf, si, f, a, b, c );

	f->num = numfacets++;
	f->numpoints = 4;

	return qtrue;
}