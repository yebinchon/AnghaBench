
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;


 int abs (int) ;

fixed_t
P_AproxDistance
( fixed_t dx,
  fixed_t dy )
{
    dx = abs(dx);
    dy = abs(dy);
    if (dx < dy)
 return dx+dy-(dx>>1);
    return dx+dy-(dy>>1);
}
