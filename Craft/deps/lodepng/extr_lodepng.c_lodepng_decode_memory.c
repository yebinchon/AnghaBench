
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int bitdepth; int colortype; } ;
struct TYPE_7__ {TYPE_1__ info_raw; } ;
typedef TYPE_2__ LodePNGState ;
typedef int LodePNGColorType ;


 unsigned int lodepng_decode (unsigned char**,unsigned int*,unsigned int*,TYPE_2__*,unsigned char const*,size_t) ;
 int lodepng_state_cleanup (TYPE_2__*) ;
 int lodepng_state_init (TYPE_2__*) ;

unsigned lodepng_decode_memory(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in,
                               size_t insize, LodePNGColorType colortype, unsigned bitdepth)
{
  unsigned error;
  LodePNGState state;
  lodepng_state_init(&state);
  state.info_raw.colortype = colortype;
  state.info_raw.bitdepth = bitdepth;
  error = lodepng_decode(out, w, h, &state, in, insize);
  lodepng_state_cleanup(&state);
  return error;
}
