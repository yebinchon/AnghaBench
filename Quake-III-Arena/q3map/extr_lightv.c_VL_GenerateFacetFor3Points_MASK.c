#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  shaderInfo_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_15__ {int numpoints; int /*<<< orphan*/ * points; int /*<<< orphan*/  plane; int /*<<< orphan*/ * boundaries; int /*<<< orphan*/ ** lightmapCoords; scalar_t__ num; } ;
typedef  TYPE_1__ lFacet_t ;
typedef  int /*<<< orphan*/  dsurface_t ;
struct TYPE_16__ {int /*<<< orphan*/ * lightmap; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ drawVert_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * drawSurfaces ; 
 int /*<<< orphan*/  numfacets ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/ * surfaceOrigin ; 

qboolean FUNC7( dsurface_t *dsurf, shaderInfo_t *si, lFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c ) {
	//
	vec3_t dir;
	int i;

	// if we can't generate a valid plane for the points, ignore the facet
	if ( !FUNC2( &f->plane, a->xyz, b->xyz, c->xyz ) ) {
		f->numpoints = 0;
		return qfalse;
	}

	f->num = numfacets++;

	FUNC4( a->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[0] );
	FUNC4( b->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[1] );
	FUNC4( c->xyz, surfaceOrigin[dsurf - drawSurfaces], f->points[2] );

	f->lightmapCoords[0][0] = a->lightmap[0];
	f->lightmapCoords[0][1] = a->lightmap[1];
	f->lightmapCoords[1][0] = b->lightmap[0];
	f->lightmapCoords[1][1] = b->lightmap[1];
	f->lightmapCoords[2][0] = c->lightmap[0];
	f->lightmapCoords[2][1] = c->lightmap[1];

	FUNC0( &f->boundaries[0], &f->plane, f->points[0], f->points[1] );
	FUNC0( &f->boundaries[1], &f->plane, f->points[1], f->points[2] );
	FUNC0( &f->boundaries[2], &f->plane, f->points[2], f->points[0] );

	for (i = 0; i < 3; i++)
	{
		FUNC6(f->points[(i+1)%3], f->points[i], dir);
		if (FUNC5(dir) < 0.1)
			return qfalse;
	}

	FUNC3( f, a, b, c );
	FUNC1( dsurf, si, f, a, b, c );

	f->numpoints = 3;

	return qtrue;
}