
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_3__ {int step; int predictor; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int FFMIN (int,int) ;
 int abs (int) ;
 int av_clip (int,int,int) ;
 int av_clip_int16 (int) ;
 int* ff_adpcm_yamaha_difflookup ;
 int* ff_adpcm_yamaha_indexscale ;

__attribute__((used)) static inline uint8_t adpcm_yamaha_compress_sample(ADPCMChannelStatus *c,
                                                   int16_t sample)
{
    int nibble, delta;

    if (!c->step) {
        c->predictor = 0;
        c->step = 127;
    }

    delta = sample - c->predictor;

    nibble = FFMIN(7, abs(delta) * 4 / c->step) + (delta < 0) * 8;

    c->predictor += ((c->step * ff_adpcm_yamaha_difflookup[nibble]) / 8);
    c->predictor = av_clip_int16(c->predictor);
    c->step = (c->step * ff_adpcm_yamaha_indexscale[nibble]) >> 8;
    c->step = av_clip(c->step, 127, 24576);

    return nibble;
}
