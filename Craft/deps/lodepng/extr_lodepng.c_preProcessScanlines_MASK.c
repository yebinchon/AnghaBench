#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ interlace_method; int /*<<< orphan*/  color; } ;
typedef  TYPE_1__ LodePNGInfo ;
typedef  int /*<<< orphan*/  LodePNGEncoderSettings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int*,size_t*,size_t*,size_t*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char const*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC4 (unsigned char*,unsigned char const*,unsigned int,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (size_t) ; 

__attribute__((used)) static unsigned FUNC8(unsigned char** out, size_t* outsize, const unsigned char* in,
                                    unsigned w, unsigned h,
                                    const LodePNGInfo* info_png, const LodePNGEncoderSettings* settings)
{
  /*
  This function converts the pure 2D image with the PNG's colortype, into filtered-padded-interlaced data. Steps:
  *) if no Adam7: 1) add padding bits (= posible extra bits per scanline if bpp < 8) 2) filter
  *) if adam7: 1) Adam7_interlace 2) 7x add padding bits 3) 7x filter
  */
  unsigned bpp = FUNC6(&info_png->color);
  unsigned error = 0;

  if(info_png->interlace_method == 0)
  {
    *outsize = h + (h * ((w * bpp + 7) / 8)); /*image size plus an extra byte per scanline + possible padding bits*/
    *out = (unsigned char*)FUNC7(*outsize);
    if(!(*out) && (*outsize)) error = 83; /*alloc fail*/

    if(!error)
    {
      /*non multiple of 8 bits per scanline, padding bits needed per scanline*/
      if(bpp < 8 && w * bpp != ((w * bpp + 7) / 8) * 8)
      {
        unsigned char* padded = (unsigned char*)FUNC7(h * ((w * bpp + 7) / 8));
        if(!padded) error = 83; /*alloc fail*/
        if(!error)
        {
          FUNC3(padded, in, ((w * bpp + 7) / 8) * 8, w * bpp, h);
          error = FUNC4(*out, padded, w, h, &info_png->color, settings);
        }
        FUNC5(padded);
      }
      else
      {
        /*we can immediatly filter into the out buffer, no other steps needed*/
        error = FUNC4(*out, in, w, h, &info_png->color, settings);
      }
    }
  }
  else /*interlace_method is 1 (Adam7)*/
  {
    unsigned passw[7], passh[7];
    size_t filter_passstart[8], padded_passstart[8], passstart[8];
    unsigned char* adam7;

    FUNC0(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);

    *outsize = filter_passstart[7]; /*image size plus an extra byte per scanline + possible padding bits*/
    *out = (unsigned char*)FUNC7(*outsize);
    if(!(*out)) error = 83; /*alloc fail*/

    adam7 = (unsigned char*)FUNC7(passstart[7]);
    if(!adam7 && passstart[7]) error = 83; /*alloc fail*/

    if(!error)
    {
      unsigned i;

      FUNC1(adam7, in, w, h, bpp);
      for(i = 0; i < 7; i++)
      {
        if(bpp < 8)
        {
          unsigned char* padded = (unsigned char*)FUNC7(padded_passstart[i + 1] - padded_passstart[i]);
          if(!padded) FUNC2(83); /*alloc fail*/
          FUNC3(padded, &adam7[passstart[i]],
                         ((passw[i] * bpp + 7) / 8) * 8, passw[i] * bpp, passh[i]);
          error = FUNC4(&(*out)[filter_passstart[i]], padded,
                         passw[i], passh[i], &info_png->color, settings);
          FUNC5(padded);
        }
        else
        {
          error = FUNC4(&(*out)[filter_passstart[i]], &adam7[padded_passstart[i]],
                         passw[i], passh[i], &info_png->color, settings);
        }

        if(error) break;
      }
    }

    FUNC5(adam7);
  }

  return error;
}