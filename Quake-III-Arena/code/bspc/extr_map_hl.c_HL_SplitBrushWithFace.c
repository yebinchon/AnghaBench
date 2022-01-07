
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_15__ {int normal; int dist; } ;
typedef TYPE_1__ hl_dplane_t ;
struct TYPE_16__ {size_t planenum; int numedges; int firstedge; scalar_t__ side; } ;
typedef TYPE_2__ hl_dface_t ;
struct TYPE_17__ {struct TYPE_17__* next; int side; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_19__ {size_t* v; } ;
struct TYPE_18__ {int * point; } ;


 int CrossProduct (int ,int ,int ) ;
 float DotProduct (int ,int *) ;
 int FindFloatPlane (int ,float) ;
 int FreeBrush (TYPE_3__*) ;
 int FreeBrushList (TYPE_3__*) ;
 int Log_Print (char*) ;
 int SplitBrush (TYPE_3__*,int,TYPE_3__**,TYPE_3__**) ;
 int VectorNegate (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 size_t abs (int) ;
 TYPE_6__* hl_dedges ;
 int * hl_dplanes ;
 int* hl_dsurfedges ;
 TYPE_5__* hl_dvertexes ;
 int memcpy (TYPE_1__*,int *,int) ;

bspbrush_t *HL_SplitBrushWithFace(bspbrush_t *brush, hl_dface_t *face)
{
 int i, edgenum, side, planenum, splits;
 float dist;
 hl_dplane_t plane;
 vec_t *v1, *v2;
 vec3_t normal, edgevec;
 bspbrush_t *front, *back, *brushlist;

 memcpy(&plane, &hl_dplanes[face->planenum], sizeof(hl_dplane_t));

 if (face->side)
 {
  VectorNegate(plane.normal, plane.normal);
  plane.dist = -plane.dist;
 }
 splits = 0;
 brushlist = ((void*)0);
 for (i = 0; i < face->numedges; i++)
 {

  edgenum = hl_dsurfedges[face->firstedge + i];
  side = edgenum > 0;

  v1 = hl_dvertexes[hl_dedges[abs(edgenum)].v[side]].point;
  v2 = hl_dvertexes[hl_dedges[abs(edgenum)].v[!side]].point;


  VectorSubtract(v1, v2, edgevec);
  CrossProduct(edgevec, plane.normal, normal);
  VectorNormalize(normal);
  dist = DotProduct(normal, v1);

  planenum = FindFloatPlane(normal, dist);

  SplitBrush(brush, planenum, &front, &back);

  if (back)
  {

   back->side = brush->side;

   back->next = brushlist;
   brushlist = back;
   splits++;
  }
  if (!front)
  {
   Log_Print("HL_SplitBrushWithFace: no new brush\n");
   FreeBrushList(brushlist);
   return ((void*)0);
  }

  front->side = brush->side;

  brush = front;
 }
 if (!splits)
 {
  FreeBrush(front);
  return ((void*)0);
 }
 front->next = brushlist;
 brushlist = front;
 return brushlist;
}
