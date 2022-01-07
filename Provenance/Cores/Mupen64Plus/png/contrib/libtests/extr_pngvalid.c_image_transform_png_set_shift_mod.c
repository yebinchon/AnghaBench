
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
struct TYPE_9__ {int colour_type; int sig_bits; int alpha_sBIT; int blue_sBIT; int green_sBIT; int red_sBIT; } ;
typedef TYPE_2__ image_pixel ;
struct TYPE_11__ {int alpha; int gray; int blue; int green; int red; } ;
struct TYPE_10__ {int (* mod ) (TYPE_3__*,TYPE_2__*,int ,int const*) ;} ;


 int PNG_COLOR_TYPE_PALETTE ;
 TYPE_7__ data ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int const*) ;

__attribute__((used)) static void
image_transform_png_set_shift_mod(const image_transform *this,
    image_pixel *that, png_const_structp pp,
    const transform_display *display)
{



   if (that->colour_type != PNG_COLOR_TYPE_PALETTE)
   {
       that->sig_bits = 1;





       if (that->colour_type & 2)
       {
          that->red_sBIT = data.red;
          that->green_sBIT = data.green;
          that->blue_sBIT = data.blue;
       }

       else
          that->red_sBIT = that->green_sBIT = that->blue_sBIT = data.gray;

       that->alpha_sBIT = data.alpha;
   }

   this->next->mod(this->next, that, pp, display);
}
