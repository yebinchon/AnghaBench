#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  winding_t ;
struct TYPE_8__ {scalar_t__ dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_1__ sin_dplane_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef  TYPE_2__ sin_dbrushside_t ;
struct TYPE_10__ {int numsides; int firstside; } ;
typedef  TYPE_3__ sin_dbrush_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC3 (scalar_t__) ; 
 TYPE_2__* sin_dbrushsides ; 
 TYPE_1__* sin_dplanes ; 

winding_t *FUNC4(sin_dbrush_t *brush, sin_dbrushside_t *baseside)
{
	int i;
	sin_dplane_t *baseplane, *plane;
	sin_dbrushside_t *side;
	winding_t *w;
	
	//create a winding for the brush side with the given planenumber
	baseplane = &sin_dplanes[baseside->planenum];
	w = FUNC0(baseplane->normal, baseplane->dist);
	for (i = 0; i < brush->numsides && w; i++)
	{
		side = &sin_dbrushsides[brush->firstside + i];
		//don't chop with the base plane
		if (side->planenum == baseside->planenum) continue;
		//also don't use planes that are almost equal
		plane = &sin_dplanes[side->planenum];
		if (FUNC2(baseplane->normal, plane->normal) > 0.999
				&& FUNC3(baseplane->dist - plane->dist) < 0.01) continue;
		//
		plane = &sin_dplanes[side->planenum^1];
		FUNC1(&w, plane->normal, plane->dist, 0); //CLIP_EPSILON);
	} //end for
	return w;
}