
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btype; int use_lz77; int minmatch; int nicematch; int lazymatching; scalar_t__ custom_context; scalar_t__ custom_deflate; scalar_t__ custom_zlib; int windowsize; } ;
typedef TYPE_1__ LodePNGCompressSettings ;


 int DEFAULT_WINDOWSIZE ;

void lodepng_compress_settings_init(LodePNGCompressSettings* settings)
{

  settings->btype = 2;
  settings->use_lz77 = 1;
  settings->windowsize = DEFAULT_WINDOWSIZE;
  settings->minmatch = 3;
  settings->nicematch = 128;
  settings->lazymatching = 1;

  settings->custom_zlib = 0;
  settings->custom_deflate = 0;
  settings->custom_context = 0;
}
