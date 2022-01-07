
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_uint_32 ;
typedef int png_store ;
typedef int png_byte ;


 int DEPTH (int) ;
 int PNG_INTERLACE_ADAM7 ;
 int PNG_INTERLACE_NONE ;
 int make_size_image (int * const,int const,int ,int ,int,int,int) ;

__attribute__((used)) static void
make_size(png_store* const ps, png_byte const colour_type, int bdlo,
    int const bdhi)
{
   for (; bdlo <= bdhi; ++bdlo)
   {
      png_uint_32 width;

      for (width = 1; width <= 16; ++width)
      {
         png_uint_32 height;

         for (height = 1; height <= 16; ++height)
         {




            make_size_image(ps, colour_type, DEPTH(bdlo), PNG_INTERLACE_NONE,
               width, height, 0);
            make_size_image(ps, colour_type, DEPTH(bdlo), PNG_INTERLACE_NONE,
               width, height, 1);
         }
      }
   }
}
