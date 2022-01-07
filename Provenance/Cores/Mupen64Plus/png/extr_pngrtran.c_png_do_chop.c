
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* png_row_infop ;
typedef int * png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_3__ {int bit_depth; int rowbytes; int channels; int width; scalar_t__ pixel_depth; } ;


 int png_debug (int,char*) ;

__attribute__((used)) static void



png_do_chop(png_row_infop row_info, png_bytep row)
{
   png_debug(1, "in png_do_chop");

   if (row_info->bit_depth == 16)
   {
      png_bytep sp = row;
      png_bytep dp = row;
      png_bytep ep = sp + row_info->rowbytes;

      while (sp < ep)
      {
         *dp++ = *sp;
         sp += 2;
      }

      row_info->bit_depth = 8;
      row_info->pixel_depth = (png_byte)(8 * row_info->channels);
      row_info->rowbytes = row_info->width * row_info->channels;
   }
}
