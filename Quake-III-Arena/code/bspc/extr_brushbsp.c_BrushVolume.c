
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * p; } ;
typedef TYPE_2__ winding_t ;
typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_10__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;
struct TYPE_11__ {int numsides; TYPE_1__* sides; } ;
typedef TYPE_4__ bspbrush_t ;
struct TYPE_8__ {size_t planenum; TYPE_2__* winding; } ;


 int DotProduct (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int WindingArea (TYPE_2__*) ;
 TYPE_3__* mapplanes ;

vec_t BrushVolume (bspbrush_t *brush)
{
 int i;
 winding_t *w;
 vec3_t corner;
 vec_t d, area, volume;
 plane_t *plane;

 if (!brush) return 0;


 w = ((void*)0);
 for (i = 0; i < brush->numsides; i++)
 {
  w = brush->sides[i].winding;
  if (w) break;
 }
 if (!w) return 0;
 VectorCopy (w->p[0], corner);


 volume = 0;
 for ( ; i < brush->numsides; i++)
 {
  w = brush->sides[i].winding;
  if (!w) continue;
  plane = &mapplanes[brush->sides[i].planenum];
  d = -(DotProduct (corner, plane->normal) - plane->dist);
  area = WindingArea(w);
  volume += d * area;
 }

 volume /= 3;
 return volume;
}
