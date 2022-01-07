
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bitdepth; int colortype; } ;
typedef TYPE_1__ LodePNGColorMode ;


 int lodepng_get_bpp_lct (int ,int ) ;

unsigned lodepng_get_bpp(const LodePNGColorMode* info)
{

  return lodepng_get_bpp_lct(info->colortype, info->bitdepth);
}
