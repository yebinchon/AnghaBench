
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int winding_t ;
typedef int vec_t ;
typedef int vec3_t ;


 int ClipWindingEpsilon (int *,int ,int ,int ,int **,int **) ;
 int FreeWinding (int *) ;
 int ON_EPSILON ;

winding_t *ChopWinding (winding_t *in, vec3_t normal, vec_t dist)
{
 winding_t *f, *b;

 ClipWindingEpsilon (in, normal, dist, ON_EPSILON, &f, &b);
 FreeWinding (in);
 if (b)
  FreeWinding (b);
 return f;
}
