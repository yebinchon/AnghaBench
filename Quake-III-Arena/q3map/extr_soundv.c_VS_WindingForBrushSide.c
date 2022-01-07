
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int numpoints; int points; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;
struct TYPE_13__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_14__ {int firstSide; int numSides; } ;
typedef TYPE_3__ dbrush_t ;
struct TYPE_16__ {size_t planeNum; } ;
struct TYPE_15__ {int dist; int normal; } ;


 TYPE_1__* BaseWindingForPlane (int ,int ) ;
 int SIDE_BACK ;
 int VS_ChopWinding (TYPE_1__*,TYPE_2__*,double) ;
 int VectorCopy (int ,int ) ;
 int VectorInverse (int ) ;
 TYPE_5__* dbrushsides ;
 TYPE_4__* dplanes ;
 int memcpy (int ,int ,int) ;

winding_t *VS_WindingForBrushSide(dbrush_t *brush, int side, winding_t *w)
{
 int i, res;
 winding_t *tmpw;
 plane_t plane;

 VectorCopy(dplanes[ dbrushsides[ brush->firstSide + side ].planeNum ].normal, plane.normal);
 VectorInverse(plane.normal);
 plane.dist = -dplanes[ dbrushsides[ brush->firstSide + side ].planeNum ].dist;
 tmpw = BaseWindingForPlane( plane.normal, plane.dist );
 memcpy(w->points, tmpw->points, sizeof(vec3_t) * tmpw->numpoints);
 w->numpoints = tmpw->numpoints;

 for (i = 0; i < brush->numSides; i++)
 {
  if (i == side)
   continue;
  VectorCopy(dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].normal, plane.normal);
  VectorInverse(plane.normal);
  plane.dist = -dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].dist;
  res = VS_ChopWinding(w, &plane, 0.1);
  if (res == SIDE_BACK)
   return ((void*)0);
 }
 return w;
}
