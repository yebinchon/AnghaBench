#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {TYPE_10__* Lface; int /*<<< orphan*/  Org; int /*<<< orphan*/  Dst; struct TYPE_19__* Lnext; struct TYPE_19__* Sym; } ;
struct TYPE_18__ {int /*<<< orphan*/  faceBucket; } ;
struct TYPE_17__ {TYPE_2__* anEdge; } ;
typedef  TYPE_1__ TESSmesh ;
typedef  TYPE_2__ TESShalfEdge ;
typedef  int /*<<< orphan*/  TESSface ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_10__*,TYPE_10__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*) ; 
 int TRUE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

TESShalfEdge *FUNC5( TESSmesh *mesh, TESShalfEdge *eOrg, TESShalfEdge *eDst )
{
	TESShalfEdge *eNewSym;
	int joiningLoops = FALSE;  
	TESShalfEdge *eNew = FUNC1( mesh, eOrg );
	if (eNew == NULL) return NULL;

	eNewSym = eNew->Sym;

	if( eDst->Lface != eOrg->Lface ) {
		/* We are connecting two disjoint loops -- destroy eDst->Lface */
		joiningLoops = TRUE;
		FUNC0( mesh, eDst->Lface, eOrg->Lface );
	}

	/* Connect the new edge appropriately */
	FUNC3( eNew, eOrg->Lnext );
	FUNC3( eNewSym, eDst );

	/* Set the vertex and face information */
	eNew->Org = eOrg->Dst;
	eNewSym->Org = eDst->Org;
	eNew->Lface = eNewSym->Lface = eOrg->Lface;

	/* Make sure the old face points to a valid half-edge */
	eOrg->Lface->anEdge = eNewSym;

	if( ! joiningLoops ) {
		TESSface *newFace= (TESSface*)FUNC4( mesh->faceBucket );
		if (newFace == NULL) return NULL;

		/* We split one loop into two -- the new loop is eNew->Lface */
		FUNC2( newFace, eNew, eOrg->Lface );
	}
	return eNew;
}