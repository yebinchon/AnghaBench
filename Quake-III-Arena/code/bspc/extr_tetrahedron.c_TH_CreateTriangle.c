
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t planenum; int maxs; int mins; int planes; int * hashnext; int * next; int * prev; scalar_t__ back; scalar_t__ front; int * edges; } ;
typedef TYPE_2__ th_triangle_t ;
struct TYPE_7__ {int numtriangles; TYPE_1__* vertexes; int * planes; TYPE_2__* triangles; } ;
struct TYPE_5__ {int v; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int Error (char*) ;
 int MAX_TH_TRIANGLES ;
 int TH_AddEdgeUser (int ) ;
 int TH_AddTriangleToHash (TYPE_2__*) ;
 int TH_CreateTrianglePlanes (int*,int *,int ) ;
 int TH_FindOrCreateEdge (int,int) ;
 size_t TH_PlaneFromPoints (int,int,int) ;
 int abs (int ) ;
 TYPE_3__ thworld ;

int TH_CreateTriangle(int verts[3])
{
 th_triangle_t *tri;
 int i;

 if (thworld.numtriangles == 0) thworld.numtriangles = 1;
 if (thworld.numtriangles >= MAX_TH_TRIANGLES)
  Error("MAX_TH_TRIANGLES");
 tri = &thworld.triangles[thworld.numtriangles++];
 for (i = 0; i < 3; i++)
 {
  tri->edges[i] = TH_FindOrCreateEdge(verts[i], verts[(i+1)%3]);
  TH_AddEdgeUser(abs(tri->edges[i]));
 }
 tri->front = 0;
 tri->back = 0;
 tri->planenum = TH_PlaneFromPoints(verts[0], verts[1], verts[2]);
 tri->prev = ((void*)0);
 tri->next = ((void*)0);
 tri->hashnext = ((void*)0);
 TH_CreateTrianglePlanes(verts, &thworld.planes[tri->planenum], tri->planes);
 TH_AddTriangleToHash(tri);
 ClearBounds(tri->mins, tri->maxs);
 for (i = 0; i < 3; i++)
 {
  AddPointToBounds(thworld.vertexes[verts[i]].v, tri->mins, tri->maxs);
 }
 return thworld.numtriangles-1;
}
