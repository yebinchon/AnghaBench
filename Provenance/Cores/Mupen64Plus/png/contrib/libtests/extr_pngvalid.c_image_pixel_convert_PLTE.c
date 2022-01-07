
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ colour_type; int bit_depth; scalar_t__ have_tRNS; } ;
typedef TYPE_1__ image_pixel ;


 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 scalar_t__ PNG_COLOR_TYPE_RGB ;
 scalar_t__ PNG_COLOR_TYPE_RGB_ALPHA ;

__attribute__((used)) static void
image_pixel_convert_PLTE(image_pixel *this)
{
   if (this->colour_type == PNG_COLOR_TYPE_PALETTE)
   {
      if (this->have_tRNS)
      {
         this->colour_type = PNG_COLOR_TYPE_RGB_ALPHA;
         this->have_tRNS = 0;
      }
      else
         this->colour_type = PNG_COLOR_TYPE_RGB;




      this->bit_depth = 8;
   }
}
