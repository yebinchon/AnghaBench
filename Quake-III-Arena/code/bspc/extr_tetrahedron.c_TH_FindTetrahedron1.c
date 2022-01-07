
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int planenum; int* edges; struct TYPE_6__* next; } ;
typedef TYPE_2__ th_triangle_t ;
struct TYPE_7__ {TYPE_2__* triangles; TYPE_1__* edges; } ;
struct TYPE_5__ {int* v; } ;


 int TH_CreateTriangle (int*) ;
 int TH_FindTriangle (int*) ;
 scalar_t__ TH_TryEdge (int,int) ;
 scalar_t__ TH_TryTriangle (int*) ;
 size_t abs (int) ;
 TYPE_3__ thworld ;

int TH_FindTetrahedron1(th_triangle_t *tri, int *triangles)
{
 int i, j, edgenum, side, v1, v2, v3, v4;
 int verts1[3], verts2[3];
 th_triangle_t *tri2;


 for (tri2 = tri->next; tri2; tri2 = tri2->next)
 {

  if ((tri->planenum & ~1) == (tri2->planenum & ~1)) continue;

  for (i = 0; i < 3; i++)
  {
   edgenum = abs(tri->edges[i]);
   for (j = 0; j < 3; j++)
   {
    if (edgenum == abs(tri2->edges[j])) break;
   }
   if (j < 3) break;
  }

  if (i < 3)
  {
   edgenum = tri->edges[(i+1)%3];
   if (edgenum < 0) v1 = thworld.edges[abs(edgenum)].v[0];
   else v1 = thworld.edges[edgenum].v[1];
   edgenum = tri2->edges[(j+1)%3];
   if (edgenum < 0) v2 = thworld.edges[abs(edgenum)].v[0];
   else v2 = thworld.edges[edgenum].v[1];

   if (TH_TryEdge(v1, v2))
   {
    edgenum = tri->edges[i];
    side = edgenum < 0;

    v3 = thworld.edges[abs(edgenum)].v[side];
    v4 = thworld.edges[abs(edgenum)].v[!side];

    verts1[0] = v1;
    verts1[1] = v2;
    verts1[2] = v3;
    triangles[2] = TH_FindTriangle(verts1);
    if (triangles[2] || TH_TryTriangle(verts1))
    {
     verts2[0] = v2;
     verts2[1] = v1;
     verts2[2] = v4;
     triangles[3] = TH_FindTriangle(verts2);
     if (triangles[3] || TH_TryTriangle(verts2))
     {
      triangles[0] = tri - thworld.triangles;
      triangles[1] = tri2 - thworld.triangles;
      if (!triangles[2]) triangles[2] = TH_CreateTriangle(verts1);
      if (!triangles[3]) triangles[3] = TH_CreateTriangle(verts2);
      return 1;
     }
    }
   }
  }
 }
 return 0;
}
