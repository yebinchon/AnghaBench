
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_8__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_6__ {size_t planenum; int * winding; } ;


 int * BaseWindingForPlane (int ,int ) ;
 int ChopWindingInPlace (int **,int ,int ,int ) ;
 TYPE_2__* mapplanes ;

void BSPBrushWindings(bspbrush_t *brush)
{
 int i, j;
 winding_t *w;
 plane_t *plane;

 for (i = 0; i < brush->numsides; i++)
 {
  plane = &mapplanes[brush->sides[i].planenum];
  w = BaseWindingForPlane(plane->normal, plane->dist);
  for (j = 0; j < brush->numsides && w; j++)
  {
   if (i == j) continue;
   plane = &mapplanes[brush->sides[j].planenum^1];
   ChopWindingInPlace(&w, plane->normal, plane->dist, 0);
  }
  brush->sides[i].winding = w;
 }
}
