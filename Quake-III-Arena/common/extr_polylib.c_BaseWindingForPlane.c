
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int** p; int numpoints; } ;
typedef TYPE_1__ winding_t ;
typedef int vec_t ;
typedef int* vec3_t ;


 TYPE_1__* AllocWinding (int) ;
 int BOGUS_RANGE ;
 int CrossProduct (int*,int*,int*) ;
 int DotProduct (int*,int*) ;
 int Error (char*) ;
 int MAX_WORLD_COORD ;
 int VectorAdd (int*,int*,int*) ;
 int VectorCopy (int ,int*) ;
 int VectorMA (int*,int ,int*,int*) ;
 int VectorNormalize (int*,int*) ;
 int VectorScale (int*,int ,int*) ;
 int VectorSubtract (int*,int*,int*) ;
 int fabs (int) ;
 int vec3_origin ;

winding_t *BaseWindingForPlane (vec3_t normal, vec_t dist)
{
 int i, x;
 vec_t max, v;
 vec3_t org, vright, vup;
 winding_t *w;



 max = -BOGUS_RANGE;
 x = -1;
 for (i=0 ; i<3; i++)
 {
  v = fabs(normal[i]);
  if (v > max)
  {
   x = i;
   max = v;
  }
 }
 if (x==-1)
  Error ("BaseWindingForPlane: no axis found");

 VectorCopy (vec3_origin, vup);
 switch (x)
 {
 case 0:
 case 1:
  vup[2] = 1;
  break;
 case 2:
  vup[0] = 1;
  break;
 }

 v = DotProduct (vup, normal);
 VectorMA (vup, -v, normal, vup);
 VectorNormalize (vup, vup);

 VectorScale (normal, dist, org);

 CrossProduct (vup, normal, vright);

 VectorScale (vup, MAX_WORLD_COORD, vup);
 VectorScale (vright, MAX_WORLD_COORD, vright);


 w = AllocWinding (4);

 VectorSubtract (org, vright, w->p[0]);
 VectorAdd (w->p[0], vup, w->p[0]);

 VectorAdd (org, vright, w->p[1]);
 VectorAdd (w->p[1], vup, w->p[1]);

 VectorAdd (org, vright, w->p[2]);
 VectorSubtract (w->p[2], vup, w->p[2]);

 VectorSubtract (org, vright, w->p[3]);
 VectorSubtract (w->p[3], vup, w->p[3]);

 w->numpoints = 4;

 return w;
}
