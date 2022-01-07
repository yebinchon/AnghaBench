
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_3__ {int step; int predictor; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip (int,int,int) ;
 int av_clip_int16 (int) ;
 int* ff_adpcm_AdaptationTable ;

__attribute__((used)) static inline int16_t adpcm_ct_expand_nibble(ADPCMChannelStatus *c, int8_t nibble)
{
    int sign, delta, diff;
    int new_step;

    sign = nibble & 8;
    delta = nibble & 7;



    diff = ((2 * delta + 1) * c->step) >> 3;

    c->predictor = ((c->predictor * 254) >> 8) + (sign ? -diff : diff);
    c->predictor = av_clip_int16(c->predictor);

    new_step = (ff_adpcm_AdaptationTable[nibble & 7] * c->step) >> 8;
    c->step = av_clip(new_step, 511, 32767);

    return (int16_t)c->predictor;
}
