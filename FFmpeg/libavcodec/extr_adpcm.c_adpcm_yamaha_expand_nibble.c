
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ int16_t ;
struct TYPE_3__ {int step; scalar_t__ predictor; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip (int,int,int) ;
 scalar_t__ av_clip_int16 (scalar_t__) ;
 int* ff_adpcm_yamaha_difflookup ;
 int* ff_adpcm_yamaha_indexscale ;

__attribute__((used)) static inline int16_t adpcm_yamaha_expand_nibble(ADPCMChannelStatus *c, uint8_t nibble)
{
    if(!c->step) {
        c->predictor = 0;
        c->step = 127;
    }

    c->predictor += (c->step * ff_adpcm_yamaha_difflookup[nibble]) / 8;
    c->predictor = av_clip_int16(c->predictor);
    c->step = (c->step * ff_adpcm_yamaha_indexscale[nibble]) >> 8;
    c->step = av_clip(c->step, 127, 24576);
    return c->predictor;
}
