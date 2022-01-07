
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* edges; size_t planenum; int planes; int maxs; int mins; scalar_t__ back; scalar_t__ front; } ;
typedef TYPE_2__ th_triangle_t ;
typedef int th_plane_t ;
struct TYPE_6__ {int numtriangles; int * planes; TYPE_1__* edges; TYPE_2__* triangles; } ;
struct TYPE_4__ {int* v; } ;


 scalar_t__ TH_FindEdge (int,int) ;
 scalar_t__ TH_IntersectTrianglePlanes (int,int,int *,int ) ;
 scalar_t__ TH_OutsideBoundingBox (int,int,int ,int ) ;
 size_t abs (scalar_t__) ;
 TYPE_3__ thworld ;

int TH_TryEdge(int v1, int v2)
{
 int i, j, v;
 th_plane_t *plane;
 th_triangle_t *tri;


 if (TH_FindEdge(v1, v2)) return 1;

 for (i = 1; i < thworld.numtriangles; i++)
 {
  tri = &thworld.triangles[i];



  if (tri->front && tri->back) continue;

  if (TH_OutsideBoundingBox(v1, v2, tri->mins, tri->maxs)) continue;

  for (j = 0; j < 3; j++)
  {
   v = thworld.edges[abs(tri->edges[j])].v[tri->edges[j] < 0];
   if (v == v1 || v == v2) break;
  }
  if (j < 3) continue;

  plane = &thworld.planes[tri->planenum];

  if (TH_IntersectTrianglePlanes(v1, v2, plane, tri->planes)) return 0;
 }
 return 1;
}
