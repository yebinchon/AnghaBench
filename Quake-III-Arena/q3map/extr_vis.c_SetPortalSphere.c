
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int numpoints; int * points; } ;
typedef TYPE_1__ winding_t ;
struct TYPE_5__ {int* origin; float radius; TYPE_1__* winding; } ;
typedef TYPE_2__ vportal_t ;
typedef int* vec3_t ;


 int VectorAdd (int*,int ,int*) ;
 int VectorCopy (int*,int*) ;
 float VectorLength (int*) ;
 int VectorSubtract (int ,int*,int*) ;
 int* vec3_origin ;

void SetPortalSphere (vportal_t *p)
{
 int i;
 vec3_t total, dist;
 winding_t *w;
 float r, bestr;

 w = p->winding;
 VectorCopy (vec3_origin, total);
 for (i=0 ; i<w->numpoints ; i++)
 {
  VectorAdd (total, w->points[i], total);
 }

 for (i=0 ; i<3 ; i++)
  total[i] /= w->numpoints;

 bestr = 0;
 for (i=0 ; i<w->numpoints ; i++)
 {
  VectorSubtract (w->points[i], total, dist);
  r = VectorLength (dist);
  if (r > bestr)
   bestr = r;
 }
 VectorCopy (total, p->origin);
 p->radius = bestr;
}
