
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_const_structp ;
struct TYPE_8__ {TYPE_3__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_9__ {scalar_t__ colour_type; } ;
typedef TYPE_2__ image_pixel ;
struct TYPE_10__ {int (* mod ) (TYPE_3__*,TYPE_2__*,int ,int const*) ;} ;


 scalar_t__ PNG_COLOR_TYPE_PALETTE ;
 int image_pixel_convert_PLTE (TYPE_2__*) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int const*) ;

__attribute__((used)) static void
image_transform_png_set_palette_to_rgb_mod(const image_transform *this,
    image_pixel *that, png_const_structp pp,
    const transform_display *display)
{
   if (that->colour_type == PNG_COLOR_TYPE_PALETTE)
      image_pixel_convert_PLTE(that);

   this->next->mod(this->next, that, pp, display);
}
