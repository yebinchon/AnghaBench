
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fixed_t ;


 int ANG90 ;
 int ANGLETOFINESHIFT ;
 size_t DBITS ;
 size_t FixedDiv (scalar_t__,scalar_t__) ;
 scalar_t__ abs (scalar_t__) ;
 scalar_t__* finesine ;
 int* tantoangle ;
 scalar_t__ viewx ;
 scalar_t__ viewy ;

fixed_t
R_PointToDist
( fixed_t x,
  fixed_t y )
{
    int angle;
    fixed_t dx;
    fixed_t dy;
    fixed_t temp;
    fixed_t dist;

    dx = abs(x - viewx);
    dy = abs(y - viewy);

    if (dy>dx)
    {
 temp = dx;
 dx = dy;
 dy = temp;
    }

    angle = (tantoangle[ FixedDiv(dy,dx)>>DBITS ]+ANG90) >> ANGLETOFINESHIFT;


    dist = FixedDiv (dx, finesine[angle] );

    return dist;
}
