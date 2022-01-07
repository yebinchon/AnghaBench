
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int z; int y; int x; } ;
typedef TYPE_1__ guVector ;


 int guVecAdd (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 float guVecDotProduct (TYPE_1__*,TYPE_1__*) ;
 int guVecNormalize (TYPE_1__*) ;

void guVecHalfAngle(guVector *a,guVector *b,guVector *half)
{
 guVector tmp1,tmp2,tmp3;

 tmp1.x = -a->x;
 tmp1.y = -a->y;
 tmp1.z = -a->z;

 tmp2.x = -b->x;
 tmp2.y = -b->y;
 tmp2.z = -b->z;

 guVecNormalize(&tmp1);
 guVecNormalize(&tmp2);

 guVecAdd(&tmp1,&tmp2,&tmp3);
 if(guVecDotProduct(&tmp3,&tmp3)>0.0f) guVecNormalize(&tmp3);

 *half = tmp3;
}
