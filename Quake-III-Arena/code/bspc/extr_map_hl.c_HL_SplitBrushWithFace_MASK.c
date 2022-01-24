#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_15__ {int /*<<< orphan*/  normal; int /*<<< orphan*/  dist; } ;
typedef  TYPE_1__ hl_dplane_t ;
struct TYPE_16__ {size_t planenum; int numedges; int firstedge; scalar_t__ side; } ;
typedef  TYPE_2__ hl_dface_t ;
struct TYPE_17__ {struct TYPE_17__* next; int /*<<< orphan*/  side; } ;
typedef  TYPE_3__ bspbrush_t ;
struct TYPE_19__ {size_t* v; } ;
struct TYPE_18__ {int /*<<< orphan*/ * point; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,TYPE_3__**,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (int) ; 
 TYPE_6__* hl_dedges ; 
 int /*<<< orphan*/ * hl_dplanes ; 
 int* hl_dsurfedges ; 
 TYPE_5__* hl_dvertexes ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

bspbrush_t *FUNC12(bspbrush_t *brush, hl_dface_t *face)
{
	int i, edgenum, side, planenum, splits;
	float dist;
	hl_dplane_t plane;
	vec_t *v1, *v2;
	vec3_t normal, edgevec;
	bspbrush_t *front, *back, *brushlist;

	FUNC11(&plane, &hl_dplanes[face->planenum], sizeof(hl_dplane_t));
	//check on which side of the plane the face is
	if (face->side)
	{
		FUNC7(plane.normal, plane.normal);
		plane.dist = -plane.dist;
	} //end if
	splits = 0;
	brushlist = NULL;
	for (i = 0; i < face->numedges; i++)
	{
		//get the first and second vertex of the edge
		edgenum = hl_dsurfedges[face->firstedge + i];
		side = edgenum > 0;
		//if the face plane is flipped
		v1 = hl_dvertexes[hl_dedges[FUNC10(edgenum)].v[side]].point;
		v2 = hl_dvertexes[hl_dedges[FUNC10(edgenum)].v[!side]].point;
		//create a plane through the edge vector, orthogonal to the face plane
		//and with the normal vector pointing out of the face
		FUNC9(v1, v2, edgevec);
		FUNC0(edgevec, plane.normal, normal);
		FUNC8(normal);
		dist = FUNC1(normal, v1);
		//
		planenum = FUNC2(normal, dist);
		//split the current brush
		FUNC6(brush, planenum, &front, &back);
		//if there is a back brush just put it in the list
		if (back)
		{
			//copy the brush contents
			back->side = brush->side;
			//
			back->next = brushlist;
			brushlist = back;
			splits++;
		} //end if
		if (!front)
		{
			FUNC5("HL_SplitBrushWithFace: no new brush\n");
			FUNC4(brushlist);
			return NULL;
		} //end if
		//copy the brush contents
		front->side = brush->side;
		//continue splitting the front brush
		brush = front;
	} //end for
	if (!splits)
	{
		FUNC3(front);
		return NULL;
	} //end if
	front->next = brushlist;
	brushlist = front;
	return brushlist;
}