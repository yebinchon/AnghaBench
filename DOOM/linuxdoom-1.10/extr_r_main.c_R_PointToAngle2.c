
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* fixed_t ;
typedef int angle_t ;


 int R_PointToAngle (void*,void*) ;
 void* viewx ;
 void* viewy ;

angle_t
R_PointToAngle2
( fixed_t x1,
  fixed_t y1,
  fixed_t x2,
  fixed_t y2 )
{
    viewx = x1;
    viewy = y1;

    return R_PointToAngle (x2, y2);
}
