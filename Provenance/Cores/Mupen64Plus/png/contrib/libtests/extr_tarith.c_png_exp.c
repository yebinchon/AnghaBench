
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;


 int LN2 ;
 int exp (int) ;
 int floor (double) ;

__attribute__((used)) static png_uint_32 png_exp(png_uint_32 x)
{
   return (png_uint_32)floor(.5 + exp(x * -LN2) * 0xffffffffU);
}
