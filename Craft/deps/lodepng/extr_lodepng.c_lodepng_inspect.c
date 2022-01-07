
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {unsigned char bitdepth; scalar_t__ colortype; } ;
struct TYPE_11__ {unsigned char compression_method; unsigned char filter_method; unsigned char interlace_method; TYPE_2__ color; } ;
struct TYPE_8__ {int ignore_crc; } ;
struct TYPE_10__ {int error; TYPE_1__ decoder; TYPE_4__ info_png; } ;
typedef TYPE_3__ LodePNGState ;
typedef TYPE_4__ LodePNGInfo ;
typedef scalar_t__ LodePNGColorType ;


 int CERROR_RETURN_ERROR (int,int) ;
 int checkColorValidity (scalar_t__,unsigned char) ;
 unsigned int lodepng_crc32 (unsigned char const*,int) ;
 int lodepng_info_cleanup (TYPE_4__*) ;
 int lodepng_info_init (TYPE_4__*) ;
 unsigned int lodepng_read32bitInt (unsigned char const*) ;

unsigned lodepng_inspect(unsigned* w, unsigned* h, LodePNGState* state,
                         const unsigned char* in, size_t insize)
{
  LodePNGInfo* info = &state->info_png;
  if(insize == 0 || in == 0)
  {
    CERROR_RETURN_ERROR(state->error, 48);
  }
  if(insize < 29)
  {
    CERROR_RETURN_ERROR(state->error, 27);
  }


  lodepng_info_cleanup(info);
  lodepng_info_init(info);

  if(in[0] != 137 || in[1] != 80 || in[2] != 78 || in[3] != 71
     || in[4] != 13 || in[5] != 10 || in[6] != 26 || in[7] != 10)
  {
    CERROR_RETURN_ERROR(state->error, 28);
  }
  if(in[12] != 'I' || in[13] != 'H' || in[14] != 'D' || in[15] != 'R')
  {
    CERROR_RETURN_ERROR(state->error, 29);
  }


  *w = lodepng_read32bitInt(&in[16]);
  *h = lodepng_read32bitInt(&in[20]);
  info->color.bitdepth = in[24];
  info->color.colortype = (LodePNGColorType)in[25];
  info->compression_method = in[26];
  info->filter_method = in[27];
  info->interlace_method = in[28];

  if(!state->decoder.ignore_crc)
  {
    unsigned CRC = lodepng_read32bitInt(&in[29]);
    unsigned checksum = lodepng_crc32(&in[12], 17);
    if(CRC != checksum)
    {
      CERROR_RETURN_ERROR(state->error, 57);
    }
  }


  if(info->compression_method != 0) CERROR_RETURN_ERROR(state->error, 32);

  if(info->filter_method != 0) CERROR_RETURN_ERROR(state->error, 33);

  if(info->interlace_method > 1) CERROR_RETURN_ERROR(state->error, 34);

  state->error = checkColorValidity(info->color.colortype, info->color.bitdepth);
  return state->error;
}
