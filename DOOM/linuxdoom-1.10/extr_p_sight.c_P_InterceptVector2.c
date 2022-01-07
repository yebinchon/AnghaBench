
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ fixed_t ;
struct TYPE_4__ {int dy; int dx; int x; int y; } ;
typedef TYPE_1__ divline_t ;


 scalar_t__ FixedDiv (scalar_t__,scalar_t__) ;
 scalar_t__ FixedMul (int,int) ;

fixed_t
P_InterceptVector2
( divline_t* v2,
  divline_t* v1 )
{
    fixed_t frac;
    fixed_t num;
    fixed_t den;

    den = FixedMul (v1->dy>>8,v2->dx) - FixedMul(v1->dx>>8,v2->dy);

    if (den == 0)
 return 0;


    num = FixedMul ( (v1->x - v2->x)>>8 ,v1->dy) +
 FixedMul ( (v2->y - v1->y)>>8 , v1->dx);
    frac = FixedDiv (num , den);

    return frac;
}
