#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_8__ {int planenum; int /*<<< orphan*/  num; int /*<<< orphan*/  winding; TYPE_1__* backarea; TYPE_3__* frontarea; struct TYPE_8__** next; } ;
typedef  TYPE_2__ tmp_face_t ;
struct TYPE_9__ {int /*<<< orphan*/  areanum; TYPE_2__* tmpfaces; } ;
typedef  TYPE_3__ tmp_area_t ;
struct TYPE_10__ {scalar_t__* normal; scalar_t__ dist; } ;
typedef  TYPE_4__ plane_t ;
struct TYPE_7__ {int /*<<< orphan*/  areanum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,float,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,float*) ; 
 double FUNC8 (scalar_t__) ; 
 TYPE_4__* mapplanes ; 

void FUNC9(tmp_area_t *tmparea)
{
	int side;
	tmp_face_t *face;
	plane_t *plane;
	vec3_t wcenter, acenter = {0, 0, 0};
	//winding_t *w;
	float n;

	for (n = 0, face = tmparea->tmpfaces; face; face = face->next[side])
	{
		if (!face->frontarea) FUNC1("face %d has no front area\n", face->num);
		//side of the face the area is on
		side = face->frontarea != tmparea;
		FUNC6(face->winding, wcenter);
		FUNC4(acenter, wcenter, acenter);
		n++;
	} //end for
	n = 1 / n;
	FUNC5(acenter, n, acenter);
	for (face = tmparea->tmpfaces; face; face = face->next[side])
	{
		//side of the face the area is on
		side = face->frontarea != tmparea;

		plane = &mapplanes[face->planenum ^ side];

		if (FUNC0(plane->normal, acenter) - plane->dist < 0)
		{
			FUNC2("area %d face %d flipped: front area %d, back area %d\n", tmparea->areanum, face->num,
					face->frontarea ? face->frontarea->areanum : 0,
					face->backarea ? face->backarea->areanum : 0);
			/*
			face->planenum = face->planenum ^ 1;
			w = face->winding;
			face->winding = ReverseWinding(w);
			FreeWinding(w);
			*/
		} //end if
#ifdef L_DEBUG
		{
			float dist;
			vec3_t normal;

			//check if the winding plane is the same as the face plane
			WindingPlane(face->winding, normal, &dist);
			plane = &mapplanes[face->planenum];
			if (fabs(dist - plane->dist) > 0.4 ||
					fabs(normal[0] - plane->normal[0]) > 0.0001 ||
					fabs(normal[1] - plane->normal[1]) > 0.0001 ||
					fabs(normal[2] - plane->normal[2]) > 0.0001)
			{
				Log_Write("area %d face %d winding plane unequal to face plane\r\n",
											tmparea->areanum, face->num);
			} //end if
		}
#endif
	} //end for
}