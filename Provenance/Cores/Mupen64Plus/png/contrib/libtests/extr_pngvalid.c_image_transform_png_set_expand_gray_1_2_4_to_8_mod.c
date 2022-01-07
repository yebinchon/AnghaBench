
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int transform_display ;
typedef int png_const_structp ;
struct TYPE_9__ {TYPE_3__* next; } ;
typedef TYPE_1__ image_transform ;
struct TYPE_10__ {scalar_t__ colour_type; int bit_depth; int sample_depth; } ;
typedef TYPE_2__ image_pixel ;
struct TYPE_11__ {int (* mod ) (TYPE_3__*,TYPE_2__*,int ,int const*) ;} ;


 scalar_t__ PNG_COLOR_TYPE_GRAY ;
 int image_transform_png_set_expand_mod (TYPE_1__ const*,TYPE_2__*,int ,int const*) ;
 int stub1 (TYPE_3__*,TYPE_2__*,int ,int const*) ;

__attribute__((used)) static void
image_transform_png_set_expand_gray_1_2_4_to_8_mod(
    const image_transform *this, image_pixel *that, png_const_structp pp,
    const transform_display *display)
{

   image_transform_png_set_expand_mod(this, that, pp, display);
}
