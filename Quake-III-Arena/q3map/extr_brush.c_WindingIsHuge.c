
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
typedef int qboolean ;


 scalar_t__ MAX_WORLD_COORD ;
 scalar_t__ MIN_WORLD_COORD ;
 int qfalse ;
 int qtrue ;

qboolean WindingIsHuge (winding_t *w)
{
 int i, j;

 for (i=0 ; i<w->numpoints ; i++)
 {
  for (j=0 ; j<3 ; j++)
   if (w->p[i][j] <= MIN_WORLD_COORD || w->p[i][j] >= MAX_WORLD_COORD)
    return qtrue;
 }
 return qfalse;
}
