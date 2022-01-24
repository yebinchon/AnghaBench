#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_2__* anEdge; } ;
struct TYPE_20__ {TYPE_11__* Lface; TYPE_9__* Org; } ;
struct TYPE_19__ {int /*<<< orphan*/  faceBucket; int /*<<< orphan*/  vertexBucket; } ;
struct TYPE_18__ {TYPE_2__* anEdge; } ;
typedef  int /*<<< orphan*/  TESSvertex ;
typedef  TYPE_1__ TESSmesh ;
typedef  TYPE_2__ TESShalfEdge ;
typedef  int /*<<< orphan*/  TESSface ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_11__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_9__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int TRUE ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6( TESSmesh* mesh, TESShalfEdge *eOrg, TESShalfEdge *eDst )
{
	int joiningLoops = FALSE;
	int joiningVertices = FALSE;

	if( eOrg == eDst ) return 1;

	if( eDst->Org != eOrg->Org ) {
		/* We are merging two disjoint vertices -- destroy eDst->Org */
		joiningVertices = TRUE;
		FUNC1( mesh, eDst->Org, eOrg->Org );
	}
	if( eDst->Lface != eOrg->Lface ) {
		/* We are connecting two disjoint loops -- destroy eDst->Lface */
		joiningLoops = TRUE;
		FUNC0( mesh, eDst->Lface, eOrg->Lface );
	}

	/* Change the edge structure */
	FUNC4( eDst, eOrg );

	if( ! joiningVertices ) {
		TESSvertex *newVertex = (TESSvertex*)FUNC5( mesh->vertexBucket );
		if (newVertex == NULL) return 0;

		/* We split one vertex into two -- the new vertex is eDst->Org.
		* Make sure the old vertex points to a valid half-edge.
		*/
		FUNC3( newVertex, eDst, eOrg->Org );
		eOrg->Org->anEdge = eOrg;
	}
	if( ! joiningLoops ) {
		TESSface *newFace = (TESSface*)FUNC5( mesh->faceBucket );  
		if (newFace == NULL) return 0;

		/* We split one loop into two -- the new loop is eDst->Lface.
		* Make sure the old face points to a valid half-edge.
		*/
		FUNC2( newFace, eDst, eOrg->Lface );
		eOrg->Lface->anEdge = eOrg;
	}

	return 1;
}