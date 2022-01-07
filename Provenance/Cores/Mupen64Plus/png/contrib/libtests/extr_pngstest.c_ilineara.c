
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_16 ;


 int* sRGB_to_d ;
 int u16d (int) ;

__attribute__((used)) static png_uint_16
ilineara(int fixed_srgb, int alpha)
{
   return u16d((257 * alpha) * sRGB_to_d[fixed_srgb]);
}
