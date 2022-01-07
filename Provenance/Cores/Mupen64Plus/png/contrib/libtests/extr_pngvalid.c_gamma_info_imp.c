
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int png_structp ;
typedef int png_infop ;
typedef int const png_fixed_point ;
struct TYPE_6__ {int use_update_info; } ;
struct TYPE_5__ {int do_background; double screen_gamma; double const file_gamma; double background_gamma; TYPE_2__ this; int background_color; scalar_t__ expand16; scalar_t__ scale16; } ;
typedef TYPE_1__ gamma_display ;


 int ALPHA_MODE_OFFSET ;
 int PNG_ALPHA_STANDARD ;
 int const fix (double const) ;
 int png_error (int ,char*) ;
 int png_read_update_info (int ,int ) ;
 int png_set_alpha_mode (int ,int,double const) ;
 int png_set_alpha_mode_fixed (int ,int,int const) ;
 int png_set_background (int ,int *,int,int ,double const) ;
 int png_set_background_fixed (int ,int *,int,int ,int const) ;
 int png_set_expand_16 (int ) ;
 int png_set_gamma (int ,double const,double const) ;
 int png_set_gamma_fixed (int ,int const,int const) ;
 int png_set_scale_16 (int ) ;
 int png_set_strip_16 (int ) ;
 int standard_info_part1 (TYPE_2__*,int ,int ) ;
 int standard_info_part2 (TYPE_2__*,int ,int ,int) ;

__attribute__((used)) static void
gamma_info_imp(gamma_display *dp, png_structp pp, png_infop pi)
{

   standard_info_part1(&dp->this, pp, pi);






   if (dp->scale16)







            png_error(pp, "scale16 (16 to 8 bit conversion) not supported");



   if (dp->expand16)



         png_error(pp, "expand16 (8 to 16 bit conversion) not supported");


   if (dp->do_background >= ALPHA_MODE_OFFSET)
   {
         png_error(pp, "alpha mode handling not supported");

   }

   else
   {




      {
         png_fixed_point s = fix(dp->screen_gamma);
         png_fixed_point f = fix(dp->file_gamma);
         png_set_gamma_fixed(pp, s, f);
      }


      if (dp->do_background)
      {
         png_error(pp, "png_set_background not supported");

      }
   }

   {
      int i = dp->this.use_update_info;

      do
         png_read_update_info(pp, pi);
      while (--i > 0);
   }


   standard_info_part2(&dp->this, pp, pi, 1 );
}
