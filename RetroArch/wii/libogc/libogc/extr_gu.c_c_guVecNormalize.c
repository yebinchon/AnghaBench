
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int y; int z; } ;
typedef TYPE_1__ guVector ;
typedef int f32 ;


 int sqrtf (int) ;

void c_guVecNormalize(guVector *v)
{
 f32 m;

 m = ((v->x)*(v->x)) + ((v->y)*(v->y)) + ((v->z)*(v->z));
 m = 1/sqrtf(m);
 v->x *= m;
 v->y *= m;
 v->z *= m;
}
