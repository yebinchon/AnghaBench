
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ current_gamma; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static int
modifier_color_encoding_is_set(const png_modifier *pm)
{
   return pm->current_gamma != 0;
}
