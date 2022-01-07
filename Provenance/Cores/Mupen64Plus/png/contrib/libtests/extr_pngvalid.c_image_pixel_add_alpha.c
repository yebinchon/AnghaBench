
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ red; scalar_t__ green; scalar_t__ blue; } ;
struct TYPE_8__ {int alpha_sBIT; TYPE_1__ transparent; } ;
typedef TYPE_2__ standard_display ;
struct TYPE_9__ {scalar_t__ colour_type; int bit_depth; int sample_depth; scalar_t__ red; int alphaf; scalar_t__ green; scalar_t__ blue; int alpha_sBIT; scalar_t__ alphae; scalar_t__ have_tRNS; } ;
typedef TYPE_3__ image_pixel ;


 int PNG_COLOR_MASK_ALPHA ;
 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_GRAY_ALPHA ;
 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 int PNG_COLOR_TYPE_RGB ;
 int PNG_COLOR_TYPE_RGB_ALPHA ;
 int image_pixel_convert_PLTE (TYPE_3__*) ;

__attribute__((used)) static void
image_pixel_add_alpha(image_pixel *this, const standard_display *display,
   int for_background)
{
   if (this->colour_type == PNG_COLOR_TYPE_PALETTE)
      image_pixel_convert_PLTE(this);

   if ((this->colour_type & PNG_COLOR_MASK_ALPHA) == 0)
   {
      if (this->colour_type == PNG_COLOR_TYPE_GRAY)
      {

            if (!for_background && this->bit_depth < 8)
               this->bit_depth = this->sample_depth = 8;


         if (this->have_tRNS)
         {
            this->have_tRNS = 0;




            if (this->red == display->transparent.red)
               this->alphaf = 0;
            else
               this->alphaf = 1;
         }
         else
            this->alphaf = 1;

         this->colour_type = PNG_COLOR_TYPE_GRAY_ALPHA;
      }

      else if (this->colour_type == PNG_COLOR_TYPE_RGB)
      {
         if (this->have_tRNS)
         {
            this->have_tRNS = 0;




            if (this->red == display->transparent.red &&
               this->green == display->transparent.green &&
               this->blue == display->transparent.blue)
               this->alphaf = 0;
            else
               this->alphaf = 1;
         }
         else
            this->alphaf = 1;

         this->colour_type = PNG_COLOR_TYPE_RGB_ALPHA;
      }




      this->alphae = 0;
      this->alpha_sBIT = display->alpha_sBIT;
   }
}
