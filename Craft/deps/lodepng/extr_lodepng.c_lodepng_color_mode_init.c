
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitdepth; scalar_t__ palettesize; scalar_t__ palette; int colortype; scalar_t__ key_b; scalar_t__ key_g; scalar_t__ key_r; scalar_t__ key_defined; } ;
typedef TYPE_1__ LodePNGColorMode ;


 int LCT_RGBA ;

void lodepng_color_mode_init(LodePNGColorMode* info)
{
  info->key_defined = 0;
  info->key_r = info->key_g = info->key_b = 0;
  info->colortype = LCT_RGBA;
  info->bitdepth = 8;
  info->palette = 0;
  info->palettesize = 0;
}
