
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* custom_zlib ) (unsigned char**,size_t*,unsigned char const*,size_t,TYPE_1__ const*) ;} ;
typedef TYPE_1__ LodePNGCompressSettings ;


 int lodepng_zlib_compress (unsigned char**,size_t*,unsigned char const*,size_t,TYPE_1__ const*) ;
 int stub1 (unsigned char**,size_t*,unsigned char const*,size_t,TYPE_1__ const*) ;

__attribute__((used)) static unsigned zlib_compress(unsigned char** out, size_t* outsize, const unsigned char* in,
                              size_t insize, const LodePNGCompressSettings* settings)
{
  if(settings->custom_zlib)
  {
    return settings->custom_zlib(out, outsize, in, insize, settings);
  }
  else
  {
    return lodepng_zlib_compress(out, outsize, in, insize, settings);
  }
}
