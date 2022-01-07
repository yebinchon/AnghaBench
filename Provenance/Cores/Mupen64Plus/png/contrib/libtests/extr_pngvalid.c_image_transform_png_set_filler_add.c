
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_byte ;
struct TYPE_4__ {struct TYPE_4__ const* next; } ;
typedef TYPE_1__ image_transform ;


 int PNG_COLOR_TYPE_GRAY ;
 int PNG_COLOR_TYPE_RGB ;

__attribute__((used)) static int
image_transform_png_set_filler_add(image_transform *this,
    const image_transform **that, png_byte colour_type, png_byte bit_depth)
{
   this->next = *that;
   *that = this;

   return bit_depth >= 8 && (colour_type == PNG_COLOR_TYPE_RGB ||
           colour_type == PNG_COLOR_TYPE_GRAY);
}
