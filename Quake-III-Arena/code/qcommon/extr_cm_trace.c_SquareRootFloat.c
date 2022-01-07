
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float SquareRootFloat(float number) {
 long i;
 float x, y;
 const float f = 1.5F;

 x = number * 0.5F;
 y = number;
 i = * ( long * ) &y;
 i = 0x5f3759df - ( i >> 1 );
 y = * ( float * ) &i;
 y = y * ( f - ( x * y * y ) );
 y = y * ( f - ( x * y * y ) );
 return number * y;
}
