
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_byte ;


 int LN2 ;
 int exp (int) ;
 int floor (double) ;

__attribute__((used)) static png_byte png_exp8bit(png_uint_32 log)
{
   return (png_byte)floor(.5 + exp(log * -LN2) * 255);
}
