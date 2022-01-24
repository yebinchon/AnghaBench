#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_2__ winding_t ;
struct TYPE_17__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_3__ tree_t ;
struct TYPE_18__ {int width; int height; TYPE_1__* verts; } ;
typedef  TYPE_4__ mesh_t ;
struct TYPE_19__ {int patchWidth; int patchHeight; TYPE_1__* verts; } ;
typedef  TYPE_5__ mapDrawSurface_t ;
struct TYPE_15__ {int /*<<< orphan*/  xyz; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUBDIVISION_LIMIT ; 
 TYPE_4__* FUNC3 (TYPE_4__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

int FUNC6( mapDrawSurface_t *ds, tree_t *tree ) {
	int					i, j;
	int					l;
	mesh_t				baseMesh, *subdividedMesh;
	winding_t			*w;

	baseMesh.width = ds->patchWidth;
	baseMesh.height = ds->patchHeight;
	baseMesh.verts = ds->verts;
	subdividedMesh = FUNC3( baseMesh, SUBDIVISION_LIMIT, 32 );

	l = 0;
	for (i = 0; i < subdividedMesh->width-1; i++) {
		for (j = 0; j < subdividedMesh->height-1; j++) {
			w = FUNC0(3);
			FUNC4(subdividedMesh->verts[j * subdividedMesh->width + i].xyz, w->p[0]);
			FUNC4(subdividedMesh->verts[j * subdividedMesh->width + i + 1].xyz, w->p[1]);
			FUNC4(subdividedMesh->verts[(j+1) * subdividedMesh->width + i].xyz, w->p[2]);
			w->numpoints = 3;
			l += FUNC2( w, ds, tree->headnode );
			w = FUNC0(3);
			FUNC4(subdividedMesh->verts[j * subdividedMesh->width + i + 1].xyz, w->p[0]);
			FUNC4(subdividedMesh->verts[(j+1) * subdividedMesh->width + i + 1].xyz, w->p[1]);
			FUNC4(subdividedMesh->verts[(j+1) * subdividedMesh->width + i].xyz, w->p[2]);
			w->numpoints = 3;
			l += FUNC2( w, ds, tree->headnode );
		}
	}

	// also use the old point filtering into the tree
	for ( i = 0 ; i < subdividedMesh->width * subdividedMesh->height ; i++ ) {
		l += FUNC1( subdividedMesh->verts[i].xyz, ds, tree->headnode );
	}

	FUNC5(subdividedMesh);

	return l;
}