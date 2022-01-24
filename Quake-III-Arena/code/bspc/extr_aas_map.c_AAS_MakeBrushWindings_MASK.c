#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int numpoints; int /*<<< orphan*/ * p; } ;
typedef  TYPE_1__ winding_t ;
struct TYPE_12__ {size_t planenum; int flags; TYPE_1__* winding; } ;
typedef  TYPE_2__ side_t ;
typedef  int qboolean ;
struct TYPE_13__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_3__ plane_t ;
struct TYPE_14__ {int numsides; int /*<<< orphan*/ * maxs; int /*<<< orphan*/ * mins; int /*<<< orphan*/  brushnum; int /*<<< orphan*/  entitynum; TYPE_2__* original_sides; } ;
typedef  TYPE_4__ mapbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  MAX_MAP_BOUNDS ; 
 int SFL_BEVEL ; 
 int SFL_VISIBLE ; 
 scalar_t__ FUNC5 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* mapplanes ; 

qboolean FUNC6(mapbrush_t *ob)
{
	int			i, j;
	winding_t	*w;
	side_t		*side;
	plane_t		*plane, *plane1, *plane2;

	FUNC3 (ob->mins, ob->maxs);

	for (i = 0; i < ob->numsides; i++)
	{
		plane = &mapplanes[ob->original_sides[i].planenum];
		w = FUNC1(plane->normal, plane->dist);
		for (j = 0; j <ob->numsides && w; j++)
		{
			if (i == j) continue;
			if (ob->original_sides[j].flags & SFL_BEVEL) continue;
			plane = &mapplanes[ob->original_sides[j].planenum^1];
			FUNC2(&w, plane->normal, plane->dist, 0); //CLIP_EPSILON);
		}

		side = &ob->original_sides[i];
		side->winding = w;
		if (w)
		{
			side->flags |= SFL_VISIBLE;
			for (j = 0; j < w->numpoints; j++)
				FUNC0 (w->p[j], ob->mins, ob->maxs);
		}
	}
	//check if the brush is convex
	for (i = 0; i < ob->numsides; i++)
	{
		for (j = 0; j < ob->numsides; j++)
		{
			if (i == j) continue;
			plane1 = &mapplanes[ob->original_sides[i].planenum];
			plane2 = &mapplanes[ob->original_sides[j].planenum];
			if (FUNC5(ob->original_sides[i].winding,
									ob->original_sides[j].winding,
									plane1->normal, plane2->normal,
									plane1->dist, plane2->dist))
			{
				FUNC4("non convex brush");
			} //end if
		} //end for
	} //end for
	//check for out of bound brushes
	for (i = 0; i < 3; i++)
	{
		//IDBUG: all the indexes into the mins and maxs were zero (not using i)
		if (ob->mins[i] < -MAX_MAP_BOUNDS || ob->maxs[i] > MAX_MAP_BOUNDS)
		{
			FUNC4("entity %i, brush %i: bounds out of range\n", ob->entitynum, ob->brushnum);
			FUNC4("ob->mins[%d] = %f, ob->maxs[%d] = %f\n", i, ob->mins[i], i, ob->maxs[i]);
			ob->numsides = 0; //remove the brush
			break;
		} //end if
		if (ob->mins[i] > MAX_MAP_BOUNDS || ob->maxs[i] < -MAX_MAP_BOUNDS)
		{
			FUNC4("entity %i, brush %i: no visible sides on brush\n", ob->entitynum, ob->brushnum);
			FUNC4("ob->mins[%d] = %f, ob->maxs[%d] = %f\n", i, ob->mins[i], i, ob->maxs[i]);
			ob->numsides = 0; //remove the brush
			break;
		} //end if
	} //end for
	return true;
}