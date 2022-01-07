
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filter_palette_zero; int text_compression; scalar_t__ add_id; scalar_t__ predefined_filters; scalar_t__ force_palette; int auto_convert; int filter_strategy; int zlibsettings; } ;
typedef TYPE_1__ LodePNGEncoderSettings ;


 int LAC_AUTO ;
 int LFS_MINSUM ;
 int lodepng_compress_settings_init (int *) ;

void lodepng_encoder_settings_init(LodePNGEncoderSettings* settings)
{
  lodepng_compress_settings_init(&settings->zlibsettings);
  settings->filter_palette_zero = 1;
  settings->filter_strategy = LFS_MINSUM;
  settings->auto_convert = LAC_AUTO;
  settings->force_palette = 0;
  settings->predefined_filters = 0;




}
