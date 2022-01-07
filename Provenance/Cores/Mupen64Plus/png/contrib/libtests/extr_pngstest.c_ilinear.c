
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;


 int* sRGB_to_d ;
 int u16d (int) ;

__attribute__((used)) static png_uint_16
ilinear(int fixed_srgb)
{
   return u16d(65535 * sRGB_to_d[fixed_srgb]);
}
