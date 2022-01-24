#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int numpoints; int /*<<< orphan*/  points; } ;
typedef  TYPE_1__ winding_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_13__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_2__ plane_t ;
struct TYPE_14__ {int firstSide; int numSides; } ;
typedef  TYPE_3__ dbrush_t ;
struct TYPE_16__ {size_t planeNum; } ;
struct TYPE_15__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SIDE_BACK ; 
 int FUNC1 (TYPE_1__*,TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_5__* dbrushsides ; 
 TYPE_4__* dplanes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

winding_t *FUNC5(dbrush_t *brush, int side, winding_t *w)
{
	int i, res;
	winding_t *tmpw;
	plane_t plane;

	FUNC2(dplanes[ dbrushsides[ brush->firstSide + side ].planeNum ].normal, plane.normal);
	FUNC3(plane.normal);
	plane.dist = -dplanes[ dbrushsides[ brush->firstSide + side ].planeNum ].dist;
	tmpw = FUNC0( plane.normal, plane.dist );
	FUNC4(w->points, tmpw->points, sizeof(vec3_t) * tmpw->numpoints);
	w->numpoints = tmpw->numpoints;

	for (i = 0; i < brush->numSides; i++)
	{
		if (i == side)
			continue;
		FUNC2(dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].normal, plane.normal);
		FUNC3(plane.normal);
		plane.dist = -dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].dist;
		res = FUNC1(w, &plane, 0.1);
		if (res == SIDE_BACK)
			return NULL;
	}
	return w;
}