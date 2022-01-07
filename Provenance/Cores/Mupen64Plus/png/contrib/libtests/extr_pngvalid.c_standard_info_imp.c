
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int use_update_info; } ;
typedef TYPE_1__ standard_display ;
typedef int png_structp ;
typedef int png_infop ;


 int png_read_update_info (int ,int ) ;
 int png_start_read_image (int ) ;
 int standard_info_part1 (TYPE_1__*,int ,int ) ;
 int standard_info_part2 (TYPE_1__*,int ,int ,int) ;

__attribute__((used)) static void
standard_info_imp(standard_display *dp, png_structp pp, png_infop pi,
    int nImages)
{



   standard_info_part1(dp, pp, pi);




   if (dp->use_update_info)
   {

      int i = dp->use_update_info;
      while (i-- > 0)
         png_read_update_info(pp, pi);
   }

   else
      png_start_read_image(pp);




   standard_info_part2(dp, pp, pi, nImages);
}
