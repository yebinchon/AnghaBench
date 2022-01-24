#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int* normal; int* sUnit; int* tUnit; scalar_t__* bmin; scalar_t__* bmax; TYPE_1__* mesh; } ;
struct TYPE_8__ {scalar_t__ s; int* coords; scalar_t__ t; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__ vHead; } ;
typedef  TYPE_2__ TESSvertex ;
typedef  TYPE_3__ TESStesselator ;
typedef  int TESSreal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int*) ; 
 void* FUNC2 (int*,int*) ; 
 int FALSE ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int S_UNIT_X ; 
 int S_UNIT_Y ; 
 int TRUE ; 
 int w ; 

void FUNC5( TESStesselator *tess )
{
	TESSvertex *v, *vHead = &tess->mesh->vHead;
	TESSreal norm[3];
	TESSreal *sUnit, *tUnit;
	int i, first, computedNormal = FALSE;

	norm[0] = tess->normal[0];
	norm[1] = tess->normal[1];
	norm[2] = tess->normal[2];
	if( norm[0] == 0 && norm[1] == 0 && norm[2] == 0 ) {
		FUNC1( tess, norm );
		computedNormal = TRUE;
	}
	sUnit = tess->sUnit;
	tUnit = tess->tUnit;
	i = FUNC3( norm );

#if defined(FOR_TRITE_TEST_PROGRAM) || defined(TRUE_PROJECT)
	/* Choose the initial sUnit vector to be approximately perpendicular
	* to the normal.
	*/
	Normalize( norm );

	sUnit[i] = 0;
	sUnit[(i+1)%3] = S_UNIT_X;
	sUnit[(i+2)%3] = S_UNIT_Y;

	/* Now make it exactly perpendicular */
	w = Dot( sUnit, norm );
	sUnit[0] -= w * norm[0];
	sUnit[1] -= w * norm[1];
	sUnit[2] -= w * norm[2];
	Normalize( sUnit );

	/* Choose tUnit so that (sUnit,tUnit,norm) form a right-handed frame */
	tUnit[0] = norm[1]*sUnit[2] - norm[2]*sUnit[1];
	tUnit[1] = norm[2]*sUnit[0] - norm[0]*sUnit[2];
	tUnit[2] = norm[0]*sUnit[1] - norm[1]*sUnit[0];
	Normalize( tUnit );
#else
	/* Project perpendicular to a coordinate axis -- better numerically */
	sUnit[i] = 0;
	sUnit[(i+1)%3] = S_UNIT_X;
	sUnit[(i+2)%3] = S_UNIT_Y;

	tUnit[i] = 0;
	tUnit[(i+1)%3] = (norm[i] > 0) ? -S_UNIT_Y : S_UNIT_Y;
	tUnit[(i+2)%3] = (norm[i] > 0) ? S_UNIT_X : -S_UNIT_X;
#endif

	/* Project the vertices onto the sweep plane */
	for( v = vHead->next; v != vHead; v = v->next )
	{
		v->s = FUNC2( v->coords, sUnit );
		v->t = FUNC2( v->coords, tUnit );
	}
	if( computedNormal ) {
		FUNC0( tess );
	}

	/* Compute ST bounds. */
	first = 1;
	for( v = vHead->next; v != vHead; v = v->next )
	{
		if (first)
		{
			tess->bmin[0] = tess->bmax[0] = v->s;
			tess->bmin[1] = tess->bmax[1] = v->t;
			first = 0;
		}
		else
		{
			if (v->s < tess->bmin[0]) tess->bmin[0] = v->s;
			if (v->s > tess->bmax[0]) tess->bmax[0] = v->s;
			if (v->t < tess->bmin[1]) tess->bmin[1] = v->t;
			if (v->t > tess->bmax[1]) tess->bmax[1] = v->t;
		}
	}
}