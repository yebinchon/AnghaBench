
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_const_structp ;
typedef int png_byte ;


 int bit_size (int ,int ,int ) ;

__attribute__((used)) static png_uint_32
transform_height(png_const_structp pp, png_byte colour_type, png_byte bit_depth)
{
   switch (bit_size(pp, colour_type, bit_depth))
   {
      case 1:
      case 2:
      case 4:
         return 1;

      case 8:
         return 2;

      case 16:
         return 512;

      case 24:
      case 32:
         return 512;

      case 48:
      case 64:
         return 2048;


      default:
         return 0;
   }
}
