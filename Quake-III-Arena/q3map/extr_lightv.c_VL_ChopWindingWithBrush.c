
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
struct TYPE_14__ {int numSides; int firstSide; } ;
typedef TYPE_3__ dbrush_t ;
struct TYPE_16__ {size_t planeNum; } ;
struct TYPE_15__ {int dist; int normal; } ;


 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VL_SplitWinding (TYPE_1__*,TYPE_1__*,TYPE_2__*,double) ;
 int VectorCopy (int ,int ) ;
 int VectorInverse (int ) ;
 int _printf (char*,int) ;
 TYPE_5__* dbrushsides ;
 TYPE_4__* dplanes ;
 int memcpy (int ,int ,int) ;

int VL_ChopWindingWithBrush(winding_t *w, dbrush_t *brush, winding_t *outwindings, int maxout)
{
 int i, res, numout;
 winding_t front, back;
 plane_t plane;

 numout = 0;
 memcpy(front.points, w->points, w->numpoints * sizeof(vec3_t));
 front.numpoints = w->numpoints;
 for (i = 0; i < brush->numSides; i++)
 {
  VectorCopy(dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].normal, plane.normal);
  VectorInverse(plane.normal);
  plane.dist = -dplanes[ dbrushsides[ brush->firstSide + i ].planeNum ].dist;
  res = VL_SplitWinding(&front, &back, &plane, 0.1);
  if (res == SIDE_BACK || res == SIDE_ON)
  {
   memcpy(outwindings[0].points, w->points, w->numpoints * sizeof(vec3_t));
   outwindings[0].numpoints = w->numpoints;
   return 1;
  }
  if (res != SIDE_FRONT)
  {
   if (numout >= maxout)
   {
    _printf("WARNING: VL_ChopWindingWithBrush: more than %d windings\n", maxout);
    return 0;
   }
   memcpy(outwindings[numout].points, back.points, back.numpoints * sizeof(vec3_t));
   outwindings[numout].numpoints = back.numpoints;
   numout++;
  }
 }
 return numout;
}
