
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_byte ;


 int sRGB (int) ;

__attribute__((used)) static png_byte
isRGB(int fixed_linear)
{
   return sRGB(fixed_linear / 65535.);
}
