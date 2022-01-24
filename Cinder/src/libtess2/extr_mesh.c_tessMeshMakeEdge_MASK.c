#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {struct TYPE_10__* Sym; } ;
struct TYPE_9__ {int /*<<< orphan*/  fHead; int /*<<< orphan*/  vHead; int /*<<< orphan*/  eHead; int /*<<< orphan*/  faceBucket; int /*<<< orphan*/  vertexBucket; } ;
typedef  int /*<<< orphan*/  TESSvertex ;
typedef  TYPE_1__ TESSmesh ;
typedef  TYPE_2__ TESShalfEdge ;
typedef  int /*<<< orphan*/  TESSface ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

TESShalfEdge *FUNC5( TESSmesh *mesh )
{
	TESSvertex *newVertex1 = (TESSvertex*)FUNC3(mesh->vertexBucket);
	TESSvertex *newVertex2 = (TESSvertex*)FUNC3(mesh->vertexBucket);
	TESSface *newFace = (TESSface*)FUNC3(mesh->faceBucket);
	TESShalfEdge *e;

	/* if any one is null then all get freed */
	if (newVertex1 == NULL || newVertex2 == NULL || newFace == NULL) {
		if (newVertex1 != NULL) FUNC4( mesh->vertexBucket, newVertex1 );
		if (newVertex2 != NULL) FUNC4( mesh->vertexBucket, newVertex2 );
		if (newFace != NULL) FUNC4( mesh->faceBucket, newFace );     
		return NULL;
	} 

	e = FUNC0( mesh, &mesh->eHead );
	if (e == NULL) return NULL;

	FUNC2( newVertex1, e, &mesh->vHead );
	FUNC2( newVertex2, e->Sym, &mesh->vHead );
	FUNC1( newFace, e, &mesh->fHead );
	return e;
}