
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LodePNGColorType ;


 unsigned int getNumColorChannels (int ) ;

__attribute__((used)) static unsigned lodepng_get_bpp_lct(LodePNGColorType colortype, unsigned bitdepth)
{

  return getNumColorChannels(colortype) * bitdepth;
}
