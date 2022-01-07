
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_row_infop ;
typedef int* png_bytep ;
typedef int png_byte ;
struct TYPE_3__ {int color_type; scalar_t__ width; int bit_depth; } ;


 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int png_debug (int,char*) ;

__attribute__((used)) static void
png_do_write_intrapixel(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_write_intrapixel");

   if ((row_info->color_type & PNG_COLOR_MASK_COLOR) != 0)
   {
      int bytes_per_pixel;
      png_uint_32 row_width = row_info->width;
      if (row_info->bit_depth == 8)
      {
         png_bytep rp;
         png_uint_32 i;

         if (row_info->color_type == PNG_COLOR_TYPE_RGB)
            bytes_per_pixel = 3;

         else if (row_info->color_type == PNG_COLOR_TYPE_RGB_ALPHA)
            bytes_per_pixel = 4;

         else
            return;

         for (i = 0, rp = row; i < row_width; i++, rp += bytes_per_pixel)
         {
            *(rp) = (png_byte)(*rp - *(rp + 1));
            *(rp + 2) = (png_byte)(*(rp + 2) - *(rp + 1));
         }
      }
   }
}
