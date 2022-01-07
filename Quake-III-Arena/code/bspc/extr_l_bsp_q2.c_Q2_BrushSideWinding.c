
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_8__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ dplane_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef TYPE_2__ dbrushside_t ;
struct TYPE_10__ {int numsides; int firstside; } ;
typedef TYPE_3__ dbrush_t ;


 int * BaseWindingForPlane (int ,scalar_t__) ;
 int ChopWindingInPlace (int **,int ,scalar_t__,double) ;
 double DotProduct (int ,int ) ;
 TYPE_2__* dbrushsides ;
 TYPE_1__* dplanes ;
 double fabs (scalar_t__) ;

winding_t *Q2_BrushSideWinding(dbrush_t *brush, dbrushside_t *baseside)
{
 int i;
 dplane_t *baseplane, *plane;
 winding_t *w;
 dbrushside_t *side;


 baseplane = &dplanes[baseside->planenum];
 w = BaseWindingForPlane(baseplane->normal, baseplane->dist);
 for (i = 0; i < brush->numsides && w; i++)
 {
  side = &dbrushsides[brush->firstside + i];

  if (side->planenum == baseside->planenum) continue;

  plane = &dplanes[side->planenum];
  if (DotProduct(baseplane->normal, plane->normal) > 0.999
    && fabs(baseplane->dist - plane->dist) < 0.01) continue;

  plane = &dplanes[side->planenum^1];
  ChopWindingInPlace(&w, plane->normal, plane->dist, -0.1);
 }
 return w;
}
