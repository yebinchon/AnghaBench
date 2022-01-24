#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  verts ;
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_12__ {double* st; scalar_t__ modulate; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ polyVert_t ;
struct TYPE_11__ {int numVerts; } ;
struct TYPE_13__ {float* color; int /*<<< orphan*/  verts; TYPE_1__ poly; int /*<<< orphan*/  markShader; scalar_t__ alphaFade; int /*<<< orphan*/  time; } ;
typedef  TYPE_3__ markPoly_t ;
struct TYPE_14__ {int numPoints; int firstPoint; } ;
typedef  TYPE_4__ markFragment_t ;
typedef  float byte ;
struct TYPE_16__ {int /*<<< orphan*/  time; } ;
struct TYPE_15__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (float*,float*,float*) ; 
 float FUNC3 (float*,float*) ; 
 int MAX_MARK_FRAGMENTS ; 
 int MAX_MARK_POINTS ; 
 int MAX_VERTS_ON_POLY ; 
 int /*<<< orphan*/  FUNC4 (float*,float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,float*,float) ; 
 int /*<<< orphan*/  FUNC6 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (float* const,float*) ; 
 int /*<<< orphan*/  FUNC8 (float* const,int,float*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,float* const,float*) ; 
 TYPE_9__ cg ; 
 TYPE_8__ cg_addMarks ; 
 int /*<<< orphan*/  markTotal ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC11 (int,void*,float*,int,float*,int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 

void FUNC13( qhandle_t markShader, const vec3_t origin, const vec3_t dir, 
				   float orientation, float red, float green, float blue, float alpha,
				   qboolean alphaFade, float radius, qboolean temporary ) {
	vec3_t			axis[3];
	float			texCoordScale;
	vec3_t			originalPoints[4];
	byte			colors[4];
	int				i, j;
	int				numFragments;
	markFragment_t	markFragments[MAX_MARK_FRAGMENTS], *mf;
	vec3_t			markPoints[MAX_MARK_POINTS];
	vec3_t			projection;

	if ( !cg_addMarks.integer ) {
		return;
	}

	if ( radius <= 0 ) {
		FUNC1( "CG_ImpactMark called with <= 0 radius" );
	}

	//if ( markTotal >= MAX_MARK_POLYS ) {
	//	return;
	//}

	// create the texture axis
	FUNC7( dir, axis[0] );
	FUNC4( axis[1], axis[0] );
	FUNC5( axis[2], axis[0], axis[1], orientation );
	FUNC2( axis[0], axis[2], axis[1] );

	texCoordScale = 0.5 * 1.0 / radius;

	// create the full polygon
	for ( i = 0 ; i < 3 ; i++ ) {
		originalPoints[0][i] = origin[i] - radius * axis[1][i] - radius * axis[2][i];
		originalPoints[1][i] = origin[i] + radius * axis[1][i] - radius * axis[2][i];
		originalPoints[2][i] = origin[i] + radius * axis[1][i] + radius * axis[2][i];
		originalPoints[3][i] = origin[i] - radius * axis[1][i] + radius * axis[2][i];
	}

	// get the fragments
	FUNC8( dir, -20, projection );
	numFragments = FUNC11( 4, (void *)originalPoints,
					projection, MAX_MARK_POINTS, markPoints[0],
					MAX_MARK_FRAGMENTS, markFragments );

	colors[0] = red * 255;
	colors[1] = green * 255;
	colors[2] = blue * 255;
	colors[3] = alpha * 255;

	for ( i = 0, mf = markFragments ; i < numFragments ; i++, mf++ ) {
		polyVert_t	*v;
		polyVert_t	verts[MAX_VERTS_ON_POLY];
		markPoly_t	*mark;

		// we have an upper limit on the complexity of polygons
		// that we store persistantly
		if ( mf->numPoints > MAX_VERTS_ON_POLY ) {
			mf->numPoints = MAX_VERTS_ON_POLY;
		}
		for ( j = 0, v = verts ; j < mf->numPoints ; j++, v++ ) {
			vec3_t		delta;

			FUNC6( markPoints[mf->firstPoint + j], v->xyz );

			FUNC9( v->xyz, origin, delta );
			v->st[0] = 0.5 + FUNC3( delta, axis[1] ) * texCoordScale;
			v->st[1] = 0.5 + FUNC3( delta, axis[2] ) * texCoordScale;
			*(int *)v->modulate = *(int *)colors;
		}

		// if it is a temporary (shadow) mark, add it immediately and forget about it
		if ( temporary ) {
			FUNC12( markShader, mf->numPoints, verts );
			continue;
		}

		// otherwise save it persistantly
		mark = FUNC0();
		mark->time = cg.time;
		mark->alphaFade = alphaFade;
		mark->markShader = markShader;
		mark->poly.numVerts = mf->numPoints;
		mark->color[0] = red;
		mark->color[1] = green;
		mark->color[2] = blue;
		mark->color[3] = alpha;
		FUNC10( mark->verts, verts, mf->numPoints * sizeof( verts[0] ) );
		markTotal++;
	}
}