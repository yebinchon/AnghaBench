#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_12__ {float* xyz; } ;
typedef  TYPE_1__ drawVert_t ;
struct TYPE_13__ {float* surface; int numBoundaries; float** points; int /*<<< orphan*/ * boundaries; } ;
typedef  TYPE_2__ cFacet_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float*,float*,float*) ; 
 double FUNC1 (float*,float*) ; 
 scalar_t__ PLANAR_EPSILON ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 scalar_t__ FUNC5 (float) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 

qboolean FUNC6( cFacet_t *f, drawVert_t *a, drawVert_t *b, drawVert_t *c, drawVert_t *d ) {
	float	dist;
	int		i;
	vec4_t	plane;

	// if we can't generate a valid plane for the points, ignore the facet
	if ( !FUNC2( f->surface, a->xyz, b->xyz, c->xyz ) ) {
		f->numBoundaries = 0;
		return qfalse;
	}

	// if the fourth point is also on the plane, we can make a quad facet
	dist = FUNC1( d->xyz, f->surface ) - f->surface[3];
	if ( FUNC5( dist ) > PLANAR_EPSILON ) {
		f->numBoundaries = 0;
		return qfalse;
	}

	// make boundaries
	f->numBoundaries = 4;

	FUNC0( f->boundaries[0], f->surface, a->xyz, b->xyz );
	FUNC0( f->boundaries[1], f->surface, b->xyz, c->xyz );
	FUNC0( f->boundaries[2], f->surface, c->xyz, d->xyz );
	FUNC0( f->boundaries[3], f->surface, d->xyz, a->xyz );

	FUNC4( a->xyz, f->points[0] );
	FUNC4( b->xyz, f->points[1] );
	FUNC4( c->xyz, f->points[2] );
	FUNC4( d->xyz, f->points[3] );

	for (i = 1; i < 4; i++)
	{
		if ( !FUNC2( plane, f->points[i], f->points[(i+1) % 4], f->points[(i+2) % 4]) ) {
			f->numBoundaries = 0;
			return qfalse;
		}

		if (FUNC1(f->surface, plane) < 0.9) {
			f->numBoundaries = 0;
			return qfalse;
		}
	}

	FUNC3( f, a, b, c );

	return qtrue;
}