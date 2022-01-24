#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int* edges; size_t planenum; } ;
typedef  TYPE_3__ th_triangle_t ;
struct TYPE_12__ {int* triangles; } ;
typedef  TYPE_4__ th_tetrahedron_t ;
struct TYPE_13__ {float dist; int /*<<< orphan*/  normal; } ;
typedef  TYPE_5__ th_plane_t ;
struct TYPE_14__ {TYPE_2__* vertexes; TYPE_5__* planes; TYPE_1__* edges; TYPE_3__* triangles; } ;
struct TYPE_10__ {int /*<<< orphan*/  v; } ;
struct TYPE_9__ {int* v; } ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (TYPE_3__*) ; 
 size_t FUNC2 (int) ; 
 TYPE_6__ thworld ; 

float FUNC3(th_tetrahedron_t *tetrahedron)
{
	int edgenum, verts[3], i, j, v2;
	float volume, d;
	th_triangle_t *tri, *tri2;
	th_plane_t *plane;

	tri = &thworld.triangles[FUNC2(tetrahedron->triangles[0])];
	for (i = 0; i < 3; i++)
	{
		edgenum = tri->edges[i];
		if (edgenum < 0) verts[i] = thworld.edges[FUNC2(edgenum)].v[1];
		else verts[i] = thworld.edges[edgenum].v[0];
	} //end for
	//
	tri2 = &thworld.triangles[FUNC2(tetrahedron->triangles[1])];
	for (j = 0; j < 3; j++)
	{
		edgenum = tri2->edges[i];
		if (edgenum < 0) v2 = thworld.edges[FUNC2(edgenum)].v[1];
		else v2 = thworld.edges[edgenum].v[0];
		if (v2 != verts[0] &&
			v2 != verts[1] &&
			v2 != verts[2]) break;
	} //end for

	plane = &thworld.planes[tri->planenum];
	d = -(FUNC0 (thworld.vertexes[v2].v, plane->normal) - plane->dist);
	volume = FUNC1(tri) * d / 3;
	return volume;
}