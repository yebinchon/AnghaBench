
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;


 scalar_t__ MAX_MAP_BOUNDS ;

void WindingBounds (winding_t *w, vec3_t mins, vec3_t maxs)
{
 vec_t v;
 int i,j;

 mins[0] = mins[1] = mins[2] = MAX_MAP_BOUNDS;
 maxs[0] = maxs[1] = maxs[2] = -MAX_MAP_BOUNDS;

 for (i=0 ; i<w->numpoints ; i++)
 {
  for (j=0 ; j<3 ; j++)
  {
   v = w->p[i][j];
   if (v < mins[j])
    mins[j] = v;
   if (v > maxs[j])
    maxs[j] = v;
  }
 }
}
