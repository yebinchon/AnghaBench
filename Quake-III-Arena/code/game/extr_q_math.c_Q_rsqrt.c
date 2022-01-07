
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int isnan (float) ;

float Q_rsqrt( float number )
{
 long i;
 float x2, y;
 const float threehalfs = 1.5F;

 x2 = number * 0.5F;
 y = number;
 i = * ( long * ) &y;
 i = 0x5f3759df - ( i >> 1 );
 y = * ( float * ) &i;
 y = y * ( threehalfs - ( x2 * y * y ) );




 assert( !isnan(y) );


 return y;
}
