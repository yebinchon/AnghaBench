
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ colortype; int bitdepth; } ;
struct TYPE_11__ {int fix_png; int color_convert; } ;
struct TYPE_10__ {int color; } ;
struct TYPE_12__ {int error; TYPE_2__ decoder; TYPE_1__ info_png; TYPE_4__ info_raw; } ;
typedef TYPE_3__ LodePNGState ;


 scalar_t__ LCT_RGB ;
 scalar_t__ LCT_RGBA ;
 int decodeGeneric (unsigned char**,unsigned int*,unsigned int*,TYPE_3__*,unsigned char const*,size_t) ;
 int lodepng_color_mode_copy (TYPE_4__*,int *) ;
 scalar_t__ lodepng_color_mode_equal (TYPE_4__*,int *) ;
 int lodepng_convert (unsigned char*,unsigned char*,TYPE_4__*,int *,unsigned int,unsigned int,int ) ;
 int lodepng_free (unsigned char*) ;
 size_t lodepng_get_raw_size (unsigned int,unsigned int,TYPE_4__*) ;
 scalar_t__ lodepng_malloc (size_t) ;

unsigned lodepng_decode(unsigned char** out, unsigned* w, unsigned* h,
                        LodePNGState* state,
                        const unsigned char* in, size_t insize)
{
  *out = 0;
  decodeGeneric(out, w, h, state, in, insize);
  if(state->error) return state->error;
  if(!state->decoder.color_convert || lodepng_color_mode_equal(&state->info_raw, &state->info_png.color))
  {



    if(!state->decoder.color_convert)
    {
      state->error = lodepng_color_mode_copy(&state->info_raw, &state->info_png.color);
      if(state->error) return state->error;
    }
  }
  else
  {

    unsigned char* data = *out;
    size_t outsize;



    if(!(state->info_raw.colortype == LCT_RGB || state->info_raw.colortype == LCT_RGBA)
       && !(state->info_raw.bitdepth == 8))
    {
      return 56;
    }

    outsize = lodepng_get_raw_size(*w, *h, &state->info_raw);
    *out = (unsigned char*)lodepng_malloc(outsize);
    if(!(*out))
    {
      state->error = 83;
    }
    else state->error = lodepng_convert(*out, data, &state->info_raw, &state->info_png.color, *w, *h, state->decoder.fix_png);
    lodepng_free(data);
  }
  return state->error;
}
