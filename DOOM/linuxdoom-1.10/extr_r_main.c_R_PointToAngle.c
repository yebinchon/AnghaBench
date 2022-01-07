
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixed_t ;
typedef int angle_t ;


 int ANG180 ;
 int ANG270 ;
 int ANG90 ;
 size_t SlopeDiv (int ,int ) ;
 int* tantoangle ;
 scalar_t__ viewx ;
 scalar_t__ viewy ;

angle_t
R_PointToAngle
( fixed_t x,
  fixed_t y )
{
    x -= viewx;
    y -= viewy;

    if ( (!x) && (!y) )
 return 0;

    if (x>= 0)
    {

 if (y>= 0)
 {


     if (x>y)
     {

  return tantoangle[ SlopeDiv(y,x)];
     }
     else
     {

  return ANG90-1-tantoangle[ SlopeDiv(x,y)];
     }
 }
 else
 {

     y = -y;

     if (x>y)
     {

  return -tantoangle[SlopeDiv(y,x)];
     }
     else
     {

  return ANG270+tantoangle[ SlopeDiv(x,y)];
     }
 }
    }
    else
    {

 x = -x;

 if (y>= 0)
 {

     if (x>y)
     {

  return ANG180-1-tantoangle[ SlopeDiv(y,x)];
     }
     else
     {

  return ANG90+ tantoangle[ SlopeDiv(x,y)];
     }
 }
 else
 {

     y = -y;

     if (x>y)
     {

  return ANG180+tantoangle[ SlopeDiv(y,x)];
     }
     else
     {

  return ANG270-1-tantoangle[ SlopeDiv(x,y)];
     }
 }
    }
    return 0;
}
