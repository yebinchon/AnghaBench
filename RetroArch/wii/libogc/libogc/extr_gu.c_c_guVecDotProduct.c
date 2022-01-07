
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; int z; } ;
typedef TYPE_1__ guVector ;
typedef int f32 ;



f32 c_guVecDotProduct(guVector *a,guVector *b)
{
    f32 dot;

 dot = (a->x * b->x) + (a->y * b->y) + (a->z * b->z);

    return dot;
}
