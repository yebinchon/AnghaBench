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
typedef  float* vec3_t ;
struct TYPE_13__ {float* normal; float dist; } ;
struct TYPE_14__ {float fraction; TYPE_2__ plane; } ;
struct TYPE_12__ {float* offset; scalar_t__ radius; scalar_t__ use; } ;
struct TYPE_15__ {float* start; float* end; float** offsets; TYPE_3__ trace; TYPE_1__ sphere; scalar_t__ isPoint; } ;
typedef  TYPE_4__ traceWork_t ;
struct patchCollide_s {int numFacets; TYPE_5__* planes; TYPE_6__* facets; } ;
struct TYPE_16__ {float* plane; size_t signbits; } ;
typedef  TYPE_5__ patchPlane_t ;
struct TYPE_17__ {size_t surfacePlane; int numBorders; size_t* borderPlanes; scalar_t__* borderInward; } ;
typedef  TYPE_6__ facet_t ;
struct TYPE_18__ {scalar_t__ integer; } ;
typedef  TYPE_7__ cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*,float*,float*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,struct patchCollide_s const*) ; 
 TYPE_7__* FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 float FUNC3 (float*,float*) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*) ; 
 int /*<<< orphan*/  FUNC8 (float*,float*,float*) ; 
 TYPE_6__* debugFacet ; 
 struct patchCollide_s const* debugPatchCollide ; 
 scalar_t__ FUNC9 (float) ; 

void FUNC10( traceWork_t *tw, const struct patchCollide_s *pc ) {
	int i, j, hit, hitnum;
	float offset, enterFrac, leaveFrac, t;
	patchPlane_t *planes;
	facet_t	*facet;
	float plane[4], bestplane[4];
	vec3_t startp, endp;
#ifndef BSPC
	static cvar_t *cv;
#endif //BSPC

	if (tw->isPoint) {
		FUNC1( tw, pc );
		return;
	}

	facet = pc->facets;
	for ( i = 0 ; i < pc->numFacets ; i++, facet++ ) {
		enterFrac = -1.0;
		leaveFrac = 1.0;
		hitnum = -1;
		//
		planes = &pc->planes[ facet->surfacePlane ];
		FUNC6(planes->plane, plane);
		plane[3] = planes->plane[3];
		if ( tw->sphere.use ) {
			// adjust the plane distance apropriately for radius
			plane[3] += tw->sphere.radius;

			// find the closest point on the capsule to the plane
			t = FUNC3( plane, tw->sphere.offset );
			if ( t > 0.0f ) {
				FUNC8( tw->start, tw->sphere.offset, startp );
				FUNC8( tw->end, tw->sphere.offset, endp );
			}
			else {
				FUNC5( tw->start, tw->sphere.offset, startp );
				FUNC5( tw->end, tw->sphere.offset, endp );
			}
		}
		else {
			offset = FUNC3( tw->offsets[ planes->signbits ], plane);
			plane[3] -= offset;
			FUNC6( tw->start, startp );
			FUNC6( tw->end, endp );
		}

		if (!FUNC0(plane, startp, endp, &enterFrac, &leaveFrac, &hit)) {
			continue;
		}
		if (hit) {
			FUNC4(plane, bestplane);
		}

		for ( j = 0; j < facet->numBorders; j++ ) {
			planes = &pc->planes[ facet->borderPlanes[j] ];
			if (facet->borderInward[j]) {
				FUNC7(planes->plane, plane);
				plane[3] = -planes->plane[3];
			}
			else {
				FUNC6(planes->plane, plane);
				plane[3] = planes->plane[3];
			}
			if ( tw->sphere.use ) {
				// adjust the plane distance apropriately for radius
				plane[3] += tw->sphere.radius;

				// find the closest point on the capsule to the plane
				t = FUNC3( plane, tw->sphere.offset );
				if ( t > 0.0f ) {
					FUNC8( tw->start, tw->sphere.offset, startp );
					FUNC8( tw->end, tw->sphere.offset, endp );
				}
				else {
					FUNC5( tw->start, tw->sphere.offset, startp );
					FUNC5( tw->end, tw->sphere.offset, endp );
				}
			}
			else {
				// NOTE: this works even though the plane might be flipped because the bbox is centered
				offset = FUNC3( tw->offsets[ planes->signbits ], plane);
				plane[3] += FUNC9(offset);
				FUNC6( tw->start, startp );
				FUNC6( tw->end, endp );
			}

			if (!FUNC0(plane, startp, endp, &enterFrac, &leaveFrac, &hit)) {
				break;
			}
			if (hit) {
				hitnum = j;
				FUNC4(plane, bestplane);
			}
		}
		if (j < facet->numBorders) continue;
		//never clip against the back side
		if (hitnum == facet->numBorders - 1) continue;

		if (enterFrac < leaveFrac && enterFrac >= 0) {
			if (enterFrac < tw->trace.fraction) {
				if (enterFrac < 0) {
					enterFrac = 0;
				}
#ifndef BSPC
				if (!cv) {
					cv = FUNC2( "r_debugSurfaceUpdate", "1", 0 );
				}
				if (cv && cv->integer) {
					debugPatchCollide = pc;
					debugFacet = facet;
				}
#endif //BSPC

				tw->trace.fraction = enterFrac;
				FUNC6( bestplane, tw->trace.plane.normal );
				tw->trace.plane.dist = bestplane[3];
			}
		}
	}
}