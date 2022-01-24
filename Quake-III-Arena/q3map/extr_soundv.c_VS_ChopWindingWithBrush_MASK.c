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
struct TYPE_14__ {int numSides; int firstSide; } ;
typedef  TYPE_3__ dbrush_t ;
struct TYPE_16__ {size_t planeNum; } ;
struct TYPE_15__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;

/* Variables and functions */
 int SIDE_BACK ; 
 int SIDE_FRONT ; 
 int SIDE_ON ; 
 int FUNC0 (TYPE_1__*,TYPE_1__*,TYPE_2__*,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_5__* dbrushsides ; 
 TYPE_4__* dplanes ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(winding_t *w, dbrush_t *brush, winding_t *outwindings, int maxout)
{
	int i, res, numout;
	winding_t front, back;
	plane_t plane;

	numout = 0;
	FUNC4(front.points, w->points, w->numpoints * sizeof(vec3_t));
	front.numpoints = w->numpoints;
	for (i = 0; i < brush->numSides; i++)
	{
		FUNC1(dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].normal, plane.normal);
		FUNC2(plane.normal);
		plane.dist = -dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].dist;
		res = FUNC0(&front, &back, &plane, 0.1);
		if (res == SIDE_BACK || res == SIDE_ON)
		{
			FUNC4(outwindings[0].points, w->points, w->numpoints * sizeof(vec3_t));
			outwindings[0].numpoints = w->numpoints;
			return 1;	//did not intersect
		}
		if (res != SIDE_FRONT)
		{
			if (numout >= maxout)
			{
				FUNC3("WARNING: VS_ChopWindingWithBrush: more than %d windings\n", maxout);
				return 0;
			}
			FUNC4(outwindings[numout].points, back.points, back.numpoints * sizeof(vec3_t));
			outwindings[numout].numpoints = back.numpoints;
			numout++;
		}
	}
	return numout;
}