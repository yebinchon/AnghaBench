
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ phys_defined; scalar_t__ time_defined; scalar_t__ background_b; scalar_t__ background_g; scalar_t__ background_r; scalar_t__ background_defined; scalar_t__ filter_method; scalar_t__ compression_method; scalar_t__ interlace_method; int color; } ;
typedef TYPE_1__ LodePNGInfo ;


 int LodePNGIText_init (TYPE_1__*) ;
 int LodePNGText_init (TYPE_1__*) ;
 int LodePNGUnknownChunks_init (TYPE_1__*) ;
 int lodepng_color_mode_init (int *) ;

void lodepng_info_init(LodePNGInfo* info)
{
  lodepng_color_mode_init(&info->color);
  info->interlace_method = 0;
  info->compression_method = 0;
  info->filter_method = 0;
}
