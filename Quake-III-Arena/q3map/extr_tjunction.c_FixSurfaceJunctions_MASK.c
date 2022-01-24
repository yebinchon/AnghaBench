#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_9__ {int numVerts; TYPE_4__* verts; } ;
typedef  TYPE_1__ mapDrawSurface_t ;
struct TYPE_10__ {float intercept; struct TYPE_10__* prev; struct TYPE_10__* next; int /*<<< orphan*/  xyz; } ;
typedef  TYPE_2__ edgePoint_t ;
struct TYPE_11__ {TYPE_2__ chain; int /*<<< orphan*/  dir; int /*<<< orphan*/  origin; } ;
typedef  TYPE_3__ edgeLine_t ;
struct TYPE_12__ {float* st; int /*<<< orphan*/  normal; int /*<<< orphan*/  xyz; scalar_t__* lightmap; } ;
typedef  TYPE_4__ drawVert_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_SURFACE_VERTS ; 
 float ON_EPSILON ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int c_addedVerts ; 
 int /*<<< orphan*/  c_cant ; 
 int /*<<< orphan*/  c_natural ; 
 int /*<<< orphan*/  c_rotate ; 
 int c_totalVerts ; 
 TYPE_3__* edgeLines ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_4__*,int) ; 

void FUNC6( mapDrawSurface_t *ds ) {
	int			i, j, k;
	edgeLine_t	*e;
	edgePoint_t	*p;
	int			originalVerts;
	int			counts[MAX_SURFACE_VERTS];
	int			originals[MAX_SURFACE_VERTS];
	int			firstVert[MAX_SURFACE_VERTS];
	drawVert_t	verts[MAX_SURFACE_VERTS], *v1, *v2;
	int			numVerts;
	float		start, end, frac;
	vec3_t		delta;

	originalVerts = ds->numVerts;

	numVerts = 0;
	for ( i = 0 ; i < ds->numVerts ; i++ ) {
		counts[i] = 0;
		firstVert[i] = numVerts;

		// copy first vert
		if ( numVerts == MAX_SURFACE_VERTS ) {
			FUNC1( "MAX_SURFACE_VERTS" );
		}
		verts[numVerts] = ds->verts[i];
		originals[numVerts] = i;
		numVerts++;

		// check to see if there are any t junctions before the next vert
		v1 = &ds->verts[i];
		v2 = &ds->verts[ (i+1) % ds->numVerts ];

		j = (int)ds->verts[i].lightmap[0];
		if ( j == -1 ) {
			continue;		// degenerate edge
		}
		e = &edgeLines[ j ];
		
		FUNC3( v1->xyz, e->origin, delta );
		start = FUNC0( delta, e->dir );

		FUNC3( v2->xyz, e->origin, delta );
		end = FUNC0( delta, e->dir );


		if ( start < end ) {
			p = e->chain.next;
		} else {
			p = e->chain.prev;
		}

		for (  ; p != &e->chain ;  ) {
			if ( start < end ) {
				if ( p->intercept > end - ON_EPSILON ) {
					break;
				}
			} else {
				if ( p->intercept < end + ON_EPSILON ) {
					break;
				}
			}

			if ( 
				( start < end && p->intercept > start + ON_EPSILON ) ||
				( start > end && p->intercept < start - ON_EPSILON ) ) {
				// insert this point
				if ( numVerts == MAX_SURFACE_VERTS ) {
					FUNC1( "MAX_SURFACE_VERTS" );
				}

				// take the exact intercept point
				FUNC2( p->xyz, verts[ numVerts ].xyz );

				// copy the normal
				FUNC2( v1->normal, verts[ numVerts ].normal );

				// interpolate the texture coordinates
				frac = ( p->intercept - start ) / ( end - start );
				for ( j = 0 ; j < 2 ; j++ ) {
					verts[ numVerts ].st[j] = v1->st[j] + 
						frac * ( v2->st[j] - v1->st[j] );
				}
				originals[numVerts] = i;
				numVerts++;
				counts[i]++;
			}

			if ( start < end ) {
				p = p->next;
			} else {
				p = p->prev;
			}
		}
	}

	c_addedVerts += numVerts - ds->numVerts;
	c_totalVerts += numVerts;


	// FIXME: check to see if the entire surface degenerated
	// after snapping

	// rotate the points so that the initial vertex is between
	// two non-subdivided edges
	for ( i = 0 ; i < numVerts ; i++ ) {
		if ( originals[ (i+1) % numVerts ] == originals[ i ] ) {
			continue;
		}
		j = (i + numVerts - 1 ) % numVerts;
		k = (i + numVerts - 2 ) % numVerts;
		if ( originals[ j ] == originals[ k ] ) {
			continue;
		}
		break;
	}

	if ( i == 0 ) {
		// fine the way it is
		c_natural++;

		ds->numVerts = numVerts;
		ds->verts = FUNC4( numVerts * sizeof( *ds->verts ) );
		FUNC5( ds->verts, verts, numVerts * sizeof( *ds->verts ) );

		return;
	}
	if ( i == numVerts ) {
		// create a vertex in the middle to start the fan
		c_cant++;

/*
		memset ( &verts[numVerts], 0, sizeof( verts[numVerts] ) );
		for ( i = 0 ; i < numVerts ; i++ ) {
			for ( j = 0 ; j < 10 ; j++ ) {
				verts[numVerts].xyz[j] += verts[i].xyz[j];
			}
		}
		for ( j = 0 ; j < 10 ; j++ ) {
			verts[numVerts].xyz[j] /= numVerts;
		}

		i = numVerts;
		numVerts++;
*/
	} else {
		// just rotate the vertexes
		c_rotate++;

	}

	ds->numVerts = numVerts;
	ds->verts = FUNC4( numVerts * sizeof( *ds->verts ) );

	for ( j = 0 ; j < ds->numVerts ; j++ ) {
		ds->verts[j] = verts[ ( j + i ) % ds->numVerts ];
	}
}