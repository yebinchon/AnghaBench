#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  side_t ;
struct TYPE_10__ {int numsides; float* mins; float* maxs; TYPE_4__* original_sides; } ;
typedef  TYPE_1__ mapbrush_t ;
struct TYPE_11__ {int numsides; struct TYPE_11__* next; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; TYPE_3__* sides; TYPE_1__* original; } ;
typedef  TYPE_2__ bspbrush_t ;
struct TYPE_13__ {int flags; scalar_t__ winding; } ;
struct TYPE_12__ {int surf; int flags; scalar_t__ winding; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 TYPE_2__* FUNC1 (TYPE_2__*,float*,float*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 void* FUNC3 (float*,float) ; 
 int SFL_VISIBLE ; 
 int SURF_HINT ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int /*<<< orphan*/ ) ; 
 TYPE_1__* mapbrushes ; 
 void** maxplanenums ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*,int) ; 
 void** minplanenums ; 

bspbrush_t *FUNC7(int startbrush, int endbrush,
											vec3_t clipmins, vec3_t clipmaxs)
{
	mapbrush_t	*mb;
	bspbrush_t	*brushlist, *newbrush;
	int			i, j;
	int			c_faces;
	int			c_brushes;
	int			numsides;
	int			vis;
	vec3_t		normal;
	float		dist;

	for (i=0 ; i<2 ; i++)
	{
		FUNC4 (normal);
		normal[i] = 1;
		dist = clipmaxs[i];
		maxplanenums[i] = FUNC3(normal, dist);
		dist = clipmins[i];
		minplanenums[i] = FUNC3(normal, dist);
	}

	brushlist = NULL;
	c_faces = 0;
	c_brushes = 0;

	for (i=startbrush ; i<endbrush ; i++)
	{
		mb = &mapbrushes[i];

		numsides = mb->numsides;
		if (!numsides)
			continue;

		// make sure the brush has at least one face showing
		vis = 0;
		for (j=0 ; j<numsides ; j++)
			if ((mb->original_sides[j].flags & SFL_VISIBLE) && mb->original_sides[j].winding)
				vis++;
#if 0
		if (!vis)
			continue;	// no faces at all
#endif
		// if the brush is outside the clip area, skip it
		for (j=0 ; j<3 ; j++)
			if (mb->mins[j] >= clipmaxs[j]
			|| mb->maxs[j] <= clipmins[j])
			break;
		if (j != 3)
			continue;

		//
		// make a copy of the brush
		//
		newbrush = FUNC0 (mb->numsides);
		newbrush->original = mb;
		newbrush->numsides = mb->numsides;
		FUNC6 (newbrush->sides, mb->original_sides, numsides*sizeof(side_t));
		for (j=0 ; j<numsides ; j++)
		{
			if (newbrush->sides[j].winding)
				newbrush->sides[j].winding = FUNC2 (newbrush->sides[j].winding);
			if (newbrush->sides[j].surf & SURF_HINT)
				newbrush->sides[j].flags |= SFL_VISIBLE;	// hints are always visible
		}
		FUNC5 (mb->mins, newbrush->mins);
		FUNC5 (mb->maxs, newbrush->maxs);

		//
		// carve off anything outside the clip box
		//
		newbrush = FUNC1 (newbrush, clipmins, clipmaxs);
		if (!newbrush)
			continue;

		c_faces += vis;
		c_brushes++;

		newbrush->next = brushlist;
		brushlist = newbrush;
	}

	return brushlist;
}