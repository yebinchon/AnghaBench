
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fixed_t ;
typedef size_t angle_t ;


 size_t ANGLETOFINESHIFT ;
 scalar_t__ FixedMul (scalar_t__,int ) ;
 int * finecosine ;
 int * finesine ;

void
AM_rotate
( fixed_t* x,
  fixed_t* y,
  angle_t a )
{
    fixed_t tmpx;

    tmpx =
 FixedMul(*x,finecosine[a>>ANGLETOFINESHIFT])
 - FixedMul(*y,finesine[a>>ANGLETOFINESHIFT]);

    *y =
 FixedMul(*x,finesine[a>>ANGLETOFINESHIFT])
 + FixedMul(*y,finecosine[a>>ANGLETOFINESHIFT]);

    *x = tmpx;
}
