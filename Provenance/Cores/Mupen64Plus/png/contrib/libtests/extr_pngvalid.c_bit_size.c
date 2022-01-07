
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_const_structp ;
typedef int png_byte ;


 int png_error (int ,char*) ;

__attribute__((used)) static unsigned int
bit_size(png_const_structp pp, png_byte colour_type, png_byte bit_depth)
{
   switch (colour_type)
   {
      default: png_error(pp, "invalid color type");

      case 0: return bit_depth;

      case 2: return 3*bit_depth;

      case 3: return bit_depth;

      case 4: return 2*bit_depth;

      case 6: return 4*bit_depth;
   }
}
