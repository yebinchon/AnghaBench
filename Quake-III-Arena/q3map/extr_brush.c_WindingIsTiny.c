
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef int qboolean ;


 scalar_t__ EDGE_LENGTH ;
 scalar_t__ VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean WindingIsTiny (winding_t *w)
{





 int i, j;
 vec_t len;
 vec3_t delta;
 int edges;

 edges = 0;
 for (i=0 ; i<w->numpoints ; i++)
 {
  j = i == w->numpoints - 1 ? 0 : i+1;
  VectorSubtract (w->p[j], w->p[i], delta);
  len = VectorLength (delta);
  if (len > EDGE_LENGTH)
  {
   if (++edges == 3)
    return qfalse;
  }
 }
 return qtrue;
}
