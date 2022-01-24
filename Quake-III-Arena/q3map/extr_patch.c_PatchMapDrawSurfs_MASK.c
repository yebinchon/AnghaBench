#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int qboolean ;
struct TYPE_12__ {int width; int height; TYPE_4__* verts; } ;
struct TYPE_8__ {int /*<<< orphan*/  shaderInfo; TYPE_7__ mesh; void* grouped; struct TYPE_8__* next; } ;
typedef  TYPE_1__ parseMesh_t ;
struct TYPE_9__ {int /*<<< orphan*/ * lightmapVecs; int /*<<< orphan*/  shaderInfo; } ;
typedef  TYPE_2__ mapDrawSurface_t ;
typedef  int /*<<< orphan*/  grouped ;
struct TYPE_10__ {TYPE_1__* patches; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_11__ {scalar_t__* xyz; } ;
typedef  TYPE_4__ drawVert_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int*,int*) ; 
 int MAX_MAP_DRAW_SURFS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC5 (scalar_t__) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 void* qtrue ; 

void FUNC9( entity_t *e ) {
	parseMesh_t			*pm;
	parseMesh_t			*check, *scan;
	mapDrawSurface_t	*ds;
	int					patchCount, groupCount;
	int					i, j, k, l, c1, c2;
	drawVert_t			*v1, *v2;
	vec3_t				bounds[2];
	byte				*bordering;
	parseMesh_t			*meshes[MAX_MAP_DRAW_SURFS];
	qboolean			grouped[MAX_MAP_DRAW_SURFS];
	byte				group[MAX_MAP_DRAW_SURFS];

	FUNC8( "----- PatchMapDrawSurfs -----\n" );

	patchCount = 0;
	for ( pm = e->patches ; pm ; pm = pm->next  ) {
		meshes[patchCount] = pm;
		patchCount++;
	}

	if ( !patchCount ) {
		return;
	}
	bordering = FUNC6( patchCount * patchCount );
	FUNC7( bordering, 0, patchCount * patchCount );

	// build the bordering matrix
	for ( k = 0 ; k < patchCount ; k++ ) {
		bordering[k*patchCount+k] = 1;

		for ( l = k+1 ; l < patchCount ; l++ ) {
			check = meshes[k];
			scan = meshes[l];
			c1 = scan->mesh.width * scan->mesh.height;
			v1 = scan->mesh.verts;

			for ( i = 0 ; i < c1 ; i++, v1++ ) {
				c2 = check->mesh.width * check->mesh.height;
				v2 = check->mesh.verts;
				for ( j = 0 ; j < c2 ; j++, v2++ ) {
					if ( FUNC5( v1->xyz[0] - v2->xyz[0] ) < 1.0
						&& FUNC5( v1->xyz[1] - v2->xyz[1] ) < 1.0
						&& FUNC5( v1->xyz[2] - v2->xyz[2] ) < 1.0 ) {
						break;
					}
				}
				if ( j != c2 ) {
					break;
				}
			}
			if ( i != c1 ) {
				// we have a connection
				bordering[k*patchCount+l] =
				bordering[l*patchCount+k] = 1;
			} else {
				// no connection
				bordering[k*patchCount+l] =
				bordering[l*patchCount+k] = 0;
			}

		}
	}

	// build groups
	FUNC7( grouped, 0, sizeof(grouped) );
	groupCount = 0;
	for ( i = 0 ; i < patchCount ; i++ ) {
		if ( !grouped[i] ) {
			groupCount++;
		}

		// recursively find all patches that belong in the same group
		FUNC7( group, 0, patchCount );
		FUNC3( i, patchCount, bordering, group );

		// bound them
		FUNC1( bounds[0], bounds[1] );
		for ( j = 0 ; j < patchCount ; j++ ) {
			if ( group[j] ) {
				grouped[j] = qtrue;
				scan = meshes[j];
				c1 = scan->mesh.width * scan->mesh.height;
				v1 = scan->mesh.verts;
				for ( k = 0 ; k < c1 ; k++, v1++ ) {
					FUNC0( v1->xyz, bounds[0], bounds[1] );
				}
			}
		}

		// create drawsurf
		scan = meshes[i];
		scan->grouped = qtrue;
		ds = FUNC2( &scan->mesh );
		ds->shaderInfo = scan->shaderInfo;
		FUNC4( bounds[0], ds->lightmapVecs[0] );
		FUNC4( bounds[1], ds->lightmapVecs[1] );
	}

	FUNC8( "%5i patches\n", patchCount );
	FUNC8( "%5i patch LOD groups\n", groupCount );
}