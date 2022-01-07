
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int bitdepth; void* colortype; } ;
struct TYPE_9__ {TYPE_1__ color; } ;
struct TYPE_10__ {unsigned int bitdepth; void* colortype; } ;
struct TYPE_11__ {unsigned int error; TYPE_2__ info_png; TYPE_3__ info_raw; } ;
typedef TYPE_4__ LodePNGState ;
typedef void* LodePNGColorType ;


 int lodepng_encode (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,TYPE_4__*) ;
 int lodepng_state_cleanup (TYPE_4__*) ;
 int lodepng_state_init (TYPE_4__*) ;

unsigned lodepng_encode_memory(unsigned char** out, size_t* outsize, const unsigned char* image,
                               unsigned w, unsigned h, LodePNGColorType colortype, unsigned bitdepth)
{
  unsigned error;
  LodePNGState state;
  lodepng_state_init(&state);
  state.info_raw.colortype = colortype;
  state.info_raw.bitdepth = bitdepth;
  state.info_png.color.colortype = colortype;
  state.info_png.color.bitdepth = bitdepth;
  lodepng_encode(out, outsize, image, w, h, &state);
  error = state.error;
  lodepng_state_cleanup(&state);
  return error;
}
