
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef TYPE_1__* png_structrp ;
struct TYPE_3__ {int color_type; scalar_t__ num_trans; int bit_depth; } ;


 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_MASK_COLOR ;
 int PNG_COLOR_MASK_PALETTE ;
 int PNG_FORMAT_FLAG_ALPHA ;
 int PNG_FORMAT_FLAG_COLOR ;
 int PNG_FORMAT_FLAG_COLORMAP ;
 int PNG_FORMAT_FLAG_LINEAR ;

__attribute__((used)) static png_uint_32
png_image_format(png_structrp png_ptr)
{
   png_uint_32 format = 0;

   if ((png_ptr->color_type & PNG_COLOR_MASK_COLOR) != 0)
      format |= PNG_FORMAT_FLAG_COLOR;

   if ((png_ptr->color_type & PNG_COLOR_MASK_ALPHA) != 0)
      format |= PNG_FORMAT_FLAG_ALPHA;






   else if (png_ptr->num_trans > 0)
      format |= PNG_FORMAT_FLAG_ALPHA;

   if (png_ptr->bit_depth == 16)
      format |= PNG_FORMAT_FLAG_LINEAR;

   if ((png_ptr->color_type & PNG_COLOR_MASK_PALETTE) != 0)
      format |= PNG_FORMAT_FLAG_COLORMAP;

   return format;
}
