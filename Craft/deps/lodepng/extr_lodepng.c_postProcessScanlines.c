
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ interlace_method; int color; } ;
typedef TYPE_1__ LodePNGInfo ;


 int Adam7_deinterlace (unsigned char*,unsigned char*,unsigned int,unsigned int,unsigned int) ;
 int Adam7_getpassvalues (unsigned int*,unsigned int*,size_t*,size_t*,size_t*,unsigned int,unsigned int,unsigned int) ;
 int CERROR_TRY_RETURN (int ) ;
 unsigned int lodepng_get_bpp (int *) ;
 int removePaddingBits (unsigned char*,unsigned char*,unsigned int,unsigned int,unsigned int) ;
 int unfilter (unsigned char*,unsigned char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned postProcessScanlines(unsigned char* out, unsigned char* in,
                                     unsigned w, unsigned h, const LodePNGInfo* info_png)
{







  unsigned bpp = lodepng_get_bpp(&info_png->color);
  if(bpp == 0) return 31;

  if(info_png->interlace_method == 0)
  {
    if(bpp < 8 && w * bpp != ((w * bpp + 7) / 8) * 8)
    {
      CERROR_TRY_RETURN(unfilter(in, in, w, h, bpp));
      removePaddingBits(out, in, w * bpp, ((w * bpp + 7) / 8) * 8, h);
    }

    else CERROR_TRY_RETURN(unfilter(out, in, w, h, bpp));
  }
  else
  {
    unsigned passw[7], passh[7]; size_t filter_passstart[8], padded_passstart[8], passstart[8];
    unsigned i;

    Adam7_getpassvalues(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);

    for(i = 0; i < 7; i++)
    {
      CERROR_TRY_RETURN(unfilter(&in[padded_passstart[i]], &in[filter_passstart[i]], passw[i], passh[i], bpp));


      if(bpp < 8)
      {


        removePaddingBits(&in[passstart[i]], &in[padded_passstart[i]], passw[i] * bpp,
                          ((passw[i] * bpp + 7) / 8) * 8, passh[i]);
      }
    }

    Adam7_deinterlace(out, in, w, h, bpp);
  }

  return 0;
}
