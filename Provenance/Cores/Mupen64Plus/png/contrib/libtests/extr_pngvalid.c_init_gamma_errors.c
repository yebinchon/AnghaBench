
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int error_gray_2; int error_gray_4; int error_gray_8; int error_color_8; int error_indexed; int error_gray_16; int error_color_16; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static void
init_gamma_errors(png_modifier *pm)
{

   pm->error_gray_2 = pm->error_gray_4 = pm->error_gray_8 = -1.;
   pm->error_color_8 = -1.;
   pm->error_indexed = -1.;
   pm->error_gray_16 = pm->error_color_16 = -1.;
}
