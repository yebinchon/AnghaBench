
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int color; } ;
typedef TYPE_1__ LodePNGInfo ;


 int LodePNGIText_cleanup (TYPE_1__*) ;
 int LodePNGText_cleanup (TYPE_1__*) ;
 int LodePNGUnknownChunks_cleanup (TYPE_1__*) ;
 int lodepng_color_mode_cleanup (int *) ;

void lodepng_info_cleanup(LodePNGInfo* info)
{
  lodepng_color_mode_cleanup(&info->color);






}
