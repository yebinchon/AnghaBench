
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_const_structp ;
struct TYPE_7__ {TYPE_3__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_8__ {int bit_depth; int sample_depth; int red_sBIT; int green_sBIT; int blue_sBIT; int alpha_sBIT; double const rede; double const greene; double const bluee; double const alphae; } ;
typedef TYPE_2__ image_pixel ;
struct TYPE_9__ {int (* mod ) (TYPE_3__*,TYPE_2__*,int ,int const*) ;} ;


 int stub1 (TYPE_3__*,TYPE_2__*,int ,int const*) ;

__attribute__((used)) static void
image_transform_png_set_strip_16_mod(const image_transform *this,
    image_pixel *that, png_const_structp pp,
    const transform_display *display)
{
   if (that->bit_depth == 16)
   {
      that->sample_depth = that->bit_depth = 8;
      if (that->red_sBIT > 8) that->red_sBIT = 8;
      if (that->green_sBIT > 8) that->green_sBIT = 8;
      if (that->blue_sBIT > 8) that->blue_sBIT = 8;
      if (that->alpha_sBIT > 8) that->alpha_sBIT = 8;
   }

   this->next->mod(this->next, that, pp, display);
}
