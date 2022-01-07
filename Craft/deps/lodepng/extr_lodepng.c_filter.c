
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {unsigned char* data; unsigned int size; } ;
typedef TYPE_1__ ucvector ;
struct TYPE_15__ {scalar_t__ colortype; int bitdepth; } ;
struct TYPE_14__ {int btype; scalar_t__ custom_deflate; scalar_t__ custom_zlib; } ;
struct TYPE_13__ {scalar_t__ filter_strategy; unsigned int* predefined_filters; TYPE_3__ zlibsettings; scalar_t__ filter_palette_zero; } ;
typedef scalar_t__ LodePNGFilterStrategy ;
typedef TYPE_2__ LodePNGEncoderSettings ;
typedef TYPE_3__ LodePNGCompressSettings ;
typedef TYPE_4__ LodePNGColorMode ;


 scalar_t__ LCT_PALETTE ;
 scalar_t__ LFS_BRUTE_FORCE ;
 scalar_t__ LFS_ENTROPY ;
 scalar_t__ LFS_MINSUM ;
 scalar_t__ LFS_PREDEFINED ;
 scalar_t__ LFS_ZERO ;
 int filterScanline (unsigned char*,unsigned char const*,unsigned char const*,size_t,size_t,unsigned int) ;
 float flog2 (int) ;
 int lodepng_free (unsigned char*) ;
 unsigned int lodepng_get_bpp (TYPE_4__ const*) ;
 int ucvector_cleanup (TYPE_1__*) ;
 int ucvector_init (TYPE_1__*) ;
 int ucvector_resize (TYPE_1__*,size_t) ;
 int zlib_compress (unsigned char**,size_t*,unsigned char*,unsigned int,TYPE_3__*) ;

__attribute__((used)) static unsigned filter(unsigned char* out, const unsigned char* in, unsigned w, unsigned h,
                       const LodePNGColorMode* info, const LodePNGEncoderSettings* settings)
{






  unsigned bpp = lodepng_get_bpp(info);

  size_t linebytes = (w * bpp + 7) / 8;

  size_t bytewidth = (bpp + 7) / 8;
  const unsigned char* prevline = 0;
  unsigned x, y;
  unsigned error = 0;
  LodePNGFilterStrategy strategy = settings->filter_strategy;
  if(settings->filter_palette_zero &&
     (info->colortype == LCT_PALETTE || info->bitdepth < 8)) strategy = LFS_ZERO;

  if(bpp == 0) return 31;

  if(strategy == LFS_ZERO)
  {
    for(y = 0; y < h; y++)
    {
      size_t outindex = (1 + linebytes) * y;
      size_t inindex = linebytes * y;
      out[outindex] = 0;
      filterScanline(&out[outindex + 1], &in[inindex], prevline, linebytes, bytewidth, 0);
      prevline = &in[inindex];
    }
  }
  else if(strategy == LFS_MINSUM)
  {

    size_t sum[5];
    ucvector attempt[5];
    size_t smallest = 0;
    unsigned type, bestType = 0;

    for(type = 0; type < 5; type++)
    {
      ucvector_init(&attempt[type]);
      if(!ucvector_resize(&attempt[type], linebytes)) return 83;
    }

    if(!error)
    {
      for(y = 0; y < h; y++)
      {

        for(type = 0; type < 5; type++)
        {
          filterScanline(attempt[type].data, &in[y * linebytes], prevline, linebytes, bytewidth, type);


          sum[type] = 0;
          if(type == 0)
          {
            for(x = 0; x < linebytes; x++) sum[type] += (unsigned char)(attempt[type].data[x]);
          }
          else
          {
            for(x = 0; x < linebytes; x++)
            {



              signed char s = (signed char)(attempt[type].data[x]);
              sum[type] += s < 0 ? -s : s;
            }
          }


          if(type == 0 || sum[type] < smallest)
          {
            bestType = type;
            smallest = sum[type];
          }
        }

        prevline = &in[y * linebytes];


        out[y * (linebytes + 1)] = bestType;
        for(x = 0; x < linebytes; x++) out[y * (linebytes + 1) + 1 + x] = attempt[bestType].data[x];
      }
    }

    for(type = 0; type < 5; type++) ucvector_cleanup(&attempt[type]);
  }
  else if(strategy == LFS_ENTROPY)
  {
    float sum[5];
    ucvector attempt[5];
    float smallest = 0;
    unsigned type, bestType = 0;
    unsigned count[256];

    for(type = 0; type < 5; type++)
    {
      ucvector_init(&attempt[type]);
      if(!ucvector_resize(&attempt[type], linebytes)) return 83;
    }

    for(y = 0; y < h; y++)
    {

      for(type = 0; type < 5; type++)
      {
        filterScanline(attempt[type].data, &in[y * linebytes], prevline, linebytes, bytewidth, type);
        for(x = 0; x < 256; x++) count[x] = 0;
        for(x = 0; x < linebytes; x++) count[attempt[type].data[x]]++;
        count[type]++;
        sum[type] = 0;
        for(x = 0; x < 256; x++)
        {
          float p = count[x] / (float)(linebytes + 1);
          sum[type] += count[x] == 0 ? 0 : flog2(1 / p) * p;
        }

        if(type == 0 || sum[type] < smallest)
        {
          bestType = type;
          smallest = sum[type];
        }
      }

      prevline = &in[y * linebytes];


      out[y * (linebytes + 1)] = bestType;
      for(x = 0; x < linebytes; x++) out[y * (linebytes + 1) + 1 + x] = attempt[bestType].data[x];
    }

    for(type = 0; type < 5; type++) ucvector_cleanup(&attempt[type]);
  }
  else if(strategy == LFS_PREDEFINED)
  {
    for(y = 0; y < h; y++)
    {
      size_t outindex = (1 + linebytes) * y;
      size_t inindex = linebytes * y;
      unsigned type = settings->predefined_filters[y];
      out[outindex] = type;
      filterScanline(&out[outindex + 1], &in[inindex], prevline, linebytes, bytewidth, type);
      prevline = &in[inindex];
    }
  }
  else if(strategy == LFS_BRUTE_FORCE)
  {



    size_t size[5];
    ucvector attempt[5];
    size_t smallest = 0;
    unsigned type = 0, bestType = 0;
    unsigned char* dummy;
    LodePNGCompressSettings zlibsettings = settings->zlibsettings;




    zlibsettings.btype = 1;


    zlibsettings.custom_zlib = 0;
    zlibsettings.custom_deflate = 0;
    for(type = 0; type < 5; type++)
    {
      ucvector_init(&attempt[type]);
      ucvector_resize(&attempt[type], linebytes);
    }
    for(y = 0; y < h; y++)
    {
      for(type = 0; type < 5; type++)
      {
        unsigned testsize = attempt[type].size;


        filterScanline(attempt[type].data, &in[y * linebytes], prevline, linebytes, bytewidth, type);
        size[type] = 0;
        dummy = 0;
        zlib_compress(&dummy, &size[type], attempt[type].data, testsize, &zlibsettings);
        lodepng_free(dummy);

        if(type == 0 || size[type] < smallest)
        {
          bestType = type;
          smallest = size[type];
        }
      }
      prevline = &in[y * linebytes];
      out[y * (linebytes + 1)] = bestType;
      for(x = 0; x < linebytes; x++) out[y * (linebytes + 1) + 1 + x] = attempt[bestType].data[x];
    }
    for(type = 0; type < 5; type++) ucvector_cleanup(&attempt[type]);
  }
  else return 88;

  return error;
}
