
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_byte ;


 int sRGB_from_linear (double) ;
 int u8d (int) ;

__attribute__((used)) static png_byte
sRGB(double linear )
{
   return u8d(255 * sRGB_from_linear(linear));
}
