#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  surfaceType_t ;
struct TYPE_14__ {void** normal; int /*<<< orphan*/  type; int /*<<< orphan*/  dist; } ;
struct TYPE_15__ {int numPoints; int numIndices; int ofsIndices; TYPE_10__ plane; void*** points; int /*<<< orphan*/  surfaceType; } ;
typedef  TYPE_1__ srfSurfaceFace_t ;
struct TYPE_16__ {int fogIndex; int /*<<< orphan*/ * data; TYPE_9__* shader; } ;
typedef  TYPE_2__ msurface_t ;
struct TYPE_17__ {int lightmapNum; int fogNum; int numVerts; int numIndexes; int firstVert; int firstIndex; int /*<<< orphan*/ ** lightmapVecs; int /*<<< orphan*/  shaderNum; } ;
typedef  TYPE_3__ dsurface_t ;
struct TYPE_18__ {int /*<<< orphan*/  color; int /*<<< orphan*/ * lightmap; int /*<<< orphan*/ * st; int /*<<< orphan*/ * xyz; } ;
typedef  TYPE_4__ drawVert_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_22__ {int /*<<< orphan*/  isSky; } ;
struct TYPE_21__ {scalar_t__ integer; } ;
struct TYPE_20__ {TYPE_1__* (* Hunk_Alloc ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_19__ {TYPE_9__* defaultShader; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void**) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int MAX_FACE_POINTS ; 
 int /*<<< orphan*/  PRINT_WARNING ; 
 int /*<<< orphan*/  FUNC3 (void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SF_FACE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*) ; 
 TYPE_9__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  h_low ; 
 TYPE_8__* r_singleShader ; 
 TYPE_7__ ri ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC8 (int,int /*<<< orphan*/ ) ; 
 TYPE_5__ tr ; 

__attribute__((used)) static void FUNC9( dsurface_t *ds, drawVert_t *verts, msurface_t *surf, int *indexes  ) {
	int			i, j;
	srfSurfaceFace_t	*cv;
	int			numPoints, numIndexes;
	int			lightmapNum;
	int			sfaceSize, ofsIndexes;

	lightmapNum = FUNC2( ds->lightmapNum );

	// get fog volume
	surf->fogIndex = FUNC2( ds->fogNum ) + 1;

	// get shader value
	surf->shader = FUNC6( ds->shaderNum, lightmapNum );
	if ( r_singleShader->integer && !surf->shader->isSky ) {
		surf->shader = tr.defaultShader;
	}

	numPoints = FUNC2( ds->numVerts );
	if (numPoints > MAX_FACE_POINTS) {
		ri.Printf( PRINT_WARNING, "WARNING: MAX_FACE_POINTS exceeded: %i\n", numPoints);
    numPoints = MAX_FACE_POINTS;
    surf->shader = tr.defaultShader;
	}

	numIndexes = FUNC2( ds->numIndexes );

	// create the srfSurfaceFace_t
	sfaceSize = ( int ) &((srfSurfaceFace_t *)0)->points[numPoints];
	ofsIndexes = sfaceSize;
	sfaceSize += sizeof( int ) * numIndexes;

	cv = ri.Hunk_Alloc( sfaceSize, h_low );
	cv->surfaceType = SF_FACE;
	cv->numPoints = numPoints;
	cv->numIndices = numIndexes;
	cv->ofsIndices = ofsIndexes;

	verts += FUNC2( ds->firstVert );
	for ( i = 0 ; i < numPoints ; i++ ) {
		for ( j = 0 ; j < 3 ; j++ ) {
			cv->points[i][j] = FUNC1( verts[i].xyz[j] );
		}
		for ( j = 0 ; j < 2 ; j++ ) {
			cv->points[i][3+j] = FUNC1( verts[i].st[j] );
			cv->points[i][5+j] = FUNC1( verts[i].lightmap[j] );
		}
		FUNC4( verts[i].color, (byte *)&cv->points[i][7] );
	}

	indexes += FUNC2( ds->firstIndex );
	for ( i = 0 ; i < numIndexes ; i++ ) {
		((int *)((byte *)cv + cv->ofsIndices ))[i] = FUNC2( indexes[ i ] );
	}

	// take the plane information from the lightmap vector
	for ( i = 0 ; i < 3 ; i++ ) {
		cv->plane.normal[i] = FUNC1( ds->lightmapVecs[2][i] );
	}
	cv->plane.dist = FUNC0( cv->points[0], cv->plane.normal );
	FUNC5( &cv->plane );
	cv->plane.type = FUNC3( cv->plane.normal );

	surf->data = (surfaceType_t *)cv;
}