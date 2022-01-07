
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_4__ {TYPE_1__* planes; } ;
struct TYPE_3__ {float dist; float* normal; } ;


 float DIST_EPSILON ;
 float NORMAL_EPSILON ;
 TYPE_2__ aasworld ;

int AAS_PlaneEqual(vec3_t normal, float dist, int planenum)
{
 float diff;

 diff = dist - aasworld.planes[planenum].dist;
 if (diff > -DIST_EPSILON && diff < DIST_EPSILON)
 {
  diff = normal[0] - aasworld.planes[planenum].normal[0];
  if (diff > -NORMAL_EPSILON && diff < NORMAL_EPSILON)
  {
   diff = normal[1] - aasworld.planes[planenum].normal[1];
   if (diff > -NORMAL_EPSILON && diff < NORMAL_EPSILON)
   {
    diff = normal[2] - aasworld.planes[planenum].normal[2];
    if (diff > -NORMAL_EPSILON && diff < NORMAL_EPSILON)
    {
     return 1;
    }
   }
  }
 }
 return 0;
}
