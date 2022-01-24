#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  userData; int /*<<< orphan*/  (* memfree ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_8__ {int windingRule; scalar_t__ outOfMemory; int /*<<< orphan*/ * mesh; TYPE_4__ alloc; int /*<<< orphan*/  env; int /*<<< orphan*/ * normal; int /*<<< orphan*/ * elements; int /*<<< orphan*/ * vertices; } ;
typedef  TYPE_1__ TESStesselator ;
typedef  int /*<<< orphan*/  TESSreal ;
typedef  int /*<<< orphan*/  TESSmesh ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int) ; 
 int TESS_BOUNDARY_CONTOURS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

int FUNC12( TESStesselator *tess, int windingRule, int elementType,
				  int polySize, int vertexSize, const TESSreal* normal )
{
	TESSmesh *mesh;
	int rc = 1;

	if (tess->vertices != NULL) {
		tess->alloc.memfree( tess->alloc.userData, tess->vertices );
		tess->vertices = 0;
	}
	if (tess->elements != NULL) {
		tess->alloc.memfree( tess->alloc.userData, tess->elements );
		tess->elements = 0;
	}

	if (normal)
	{
		tess->normal[0] = normal[0];
		tess->normal[1] = normal[1];
		tess->normal[2] = normal[2];
	}

	tess->windingRule = windingRule;

	if (vertexSize < 2)
		vertexSize = 2;
	if (vertexSize > 3)
		vertexSize = 3;

	if (FUNC3(tess->env) != 0) { 
		/* come back here if out of memory */
		return 0;
	}

	if (!tess->mesh)
	{
		return 0;
	}

	/* Determine the polygon normal and project vertices onto the plane
	* of the polygon.
	*/
	FUNC11( tess );

	/* tessComputeInterior( tess ) computes the planar arrangement specified
	* by the given contours, and further subdivides this arrangement
	* into regions.  Each region is marked "inside" if it belongs
	* to the polygon, according to the rule given by tess->windingRule.
	* Each interior region is guaranteed be monotone.
	*/
	if ( !FUNC6( tess ) ) {
		FUNC2(tess->env,1);  /* could've used a label */
	}

	mesh = tess->mesh;

	/* If the user wants only the boundary contours, we throw away all edges
	* except those which separate the interior from the exterior.
	* Otherwise we tessellate all the regions marked "inside".
	*/
	if (elementType == TESS_BOUNDARY_CONTOURS) {
		rc = FUNC9( mesh, 1, TRUE );
	} else {
		rc = FUNC10( mesh ); 
	}
	if (rc == 0) FUNC2(tess->env,1);  /* could've used a label */

	FUNC7( mesh );

	if (elementType == TESS_BOUNDARY_CONTOURS) {
		FUNC0( tess, mesh, vertexSize );     /* output contours */
	}
	else
	{
		FUNC1( tess, mesh, elementType, polySize, vertexSize );     /* output polygons */
	}

	FUNC8( &tess->alloc, mesh );
	tess->mesh = NULL;

	if (tess->outOfMemory)
		return 0;
	return 1;
}