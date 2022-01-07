
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pixel_size; int bit_width; int cbRow; int h; int ps; scalar_t__ filler; } ;
typedef TYPE_1__ standard_display ;
typedef int png_const_structp ;
typedef int png_const_infop ;
typedef int png_byte ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_RGB ;
 int bit_size (int ,int,int) ;
 int png_error (int ,char*) ;
 int png_get_bit_depth (int ,int ) ;
 int png_get_color_type (int ,int ) ;
 int png_get_image_width (int ,int ) ;
 int png_get_rowbytes (int ,int ) ;
 int store_ensure_image (int ,int ,int,int,int ) ;

__attribute__((used)) static void
standard_info_part2(standard_display *dp, png_const_structp pp,
    png_const_infop pi, int nImages)
{

   {
      png_byte ct = png_get_color_type(pp, pi);
      png_byte bd = png_get_bit_depth(pp, pi);

      if (bd >= 8 && (ct == PNG_COLOR_TYPE_RGB || ct == PNG_COLOR_TYPE_GRAY) &&
          dp->filler)
          ct |= 4;

      dp->pixel_size = bit_size(pp, ct, bd);
   }
   dp->bit_width = png_get_image_width(pp, pi) * dp->pixel_size;
   dp->cbRow = png_get_rowbytes(pp, pi);


   if (dp->cbRow != (dp->bit_width+7)/8)
      png_error(pp, "bad png_get_rowbytes calculation");


   store_ensure_image(dp->ps, pp, nImages, dp->cbRow, dp->h);
}
