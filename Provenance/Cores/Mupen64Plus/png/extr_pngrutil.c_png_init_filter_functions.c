
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
struct TYPE_4__ {int pixel_depth; int * read_filter; } ;


 int PNG_FILTER_OPTIMIZATIONS (TYPE_1__*,unsigned int) ;
 int PNG_FILTER_VALUE_AVG ;
 int PNG_FILTER_VALUE_PAETH ;
 int PNG_FILTER_VALUE_SUB ;
 int PNG_FILTER_VALUE_UP ;
 int png_read_filter_row_avg ;
 int png_read_filter_row_paeth_1byte_pixel ;
 int png_read_filter_row_paeth_multibyte_pixel ;
 int png_read_filter_row_sub ;
 int png_read_filter_row_up ;

__attribute__((used)) static void
png_init_filter_functions(png_structrp pp)
{
   unsigned int bpp = (pp->pixel_depth + 7) >> 3;

   pp->read_filter[PNG_FILTER_VALUE_SUB-1] = png_read_filter_row_sub;
   pp->read_filter[PNG_FILTER_VALUE_UP-1] = png_read_filter_row_up;
   pp->read_filter[PNG_FILTER_VALUE_AVG-1] = png_read_filter_row_avg;
   if (bpp == 1)
      pp->read_filter[PNG_FILTER_VALUE_PAETH-1] =
         png_read_filter_row_paeth_1byte_pixel;
   else
      pp->read_filter[PNG_FILTER_VALUE_PAETH-1] =
         png_read_filter_row_paeth_multibyte_pixel;
}
