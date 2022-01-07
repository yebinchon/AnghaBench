
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_3__* png_structrp ;
typedef unsigned int png_byte ;
struct TYPE_11__ {scalar_t__ gamma; } ;
struct TYPE_10__ {unsigned int red; unsigned int green; unsigned int blue; unsigned int gray; } ;
struct TYPE_12__ {scalar_t__ screen_gamma; int transformations; int color_type; unsigned int gamma_shift; TYPE_2__ colorspace; int * gamma_16_from_1; int * gamma_16_to_1; int * gamma_16_table; TYPE_1__ sig_bit; int * gamma_from_1; int * gamma_to_1; int * gamma_table; } ;


 int PNG_16_TO_8 ;
 int PNG_COLOR_MASK_COLOR ;
 int PNG_COMPOSE ;
 scalar_t__ PNG_FP_1 ;
 unsigned int PNG_MAX_GAMMA_8 ;
 int PNG_RGB_TO_GRAY ;
 int PNG_SCALE_16_TO_8 ;
 int png_build_16bit_table (TYPE_3__*,int **,unsigned int,scalar_t__) ;
 int png_build_16to8_table (TYPE_3__*,int **,unsigned int,scalar_t__) ;
 int png_build_8bit_table (TYPE_3__*,int **,scalar_t__) ;
 int png_debug (int,char*) ;
 int png_destroy_gamma_table (TYPE_3__*) ;
 scalar_t__ png_product2 (scalar_t__,scalar_t__) ;
 scalar_t__ png_reciprocal (scalar_t__) ;
 scalar_t__ png_reciprocal2 (scalar_t__,scalar_t__) ;
 int png_warning (TYPE_3__*,char*) ;

void
png_build_gamma_table(png_structrp png_ptr, int bit_depth)
{
   png_debug(1, "in png_build_gamma_table");







   if (png_ptr->gamma_table != ((void*)0) || png_ptr->gamma_16_table != ((void*)0))
   {
      png_warning(png_ptr, "gamma table being rebuilt");
      png_destroy_gamma_table(png_ptr);
   }

   if (bit_depth <= 8)
   {
      png_build_8bit_table(png_ptr, &png_ptr->gamma_table,
          png_ptr->screen_gamma > 0 ?
          png_reciprocal2(png_ptr->colorspace.gamma,
          png_ptr->screen_gamma) : PNG_FP_1);
   }
}
