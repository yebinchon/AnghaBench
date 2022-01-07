
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_const_structp ;
struct TYPE_8__ {TYPE_3__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_9__ {int bit_depth; int colour_type; unsigned int alpha; double alphaf; int alpha_first; scalar_t__ alphae; } ;
typedef TYPE_2__ image_pixel ;
struct TYPE_11__ {unsigned int const filler; scalar_t__ flags; } ;
struct TYPE_10__ {int (* mod ) (TYPE_3__*,TYPE_2__*,int ,int const*) ;} ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_RGB ;
 scalar_t__ PNG_FILLER_BEFORE ;
 TYPE_7__ data ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int const*) ;

__attribute__((used)) static void
image_transform_png_set_filler_mod(const image_transform *this,
    image_pixel *that, png_const_structp pp,
    const transform_display *display)
{
   if (that->bit_depth >= 8 &&
       (that->colour_type == PNG_COLOR_TYPE_RGB ||
        that->colour_type == PNG_COLOR_TYPE_GRAY))
   {
      const unsigned int max = (1U << that->bit_depth)-1;
      that->alpha = data.filler & max;
      that->alphaf = ((double)that->alpha) / max;
      that->alphae = 0;







      that->colour_type |= 4;
      that->alpha_first = data.flags == PNG_FILLER_BEFORE;
   }

   this->next->mod(this->next, that, pp, display);
}
