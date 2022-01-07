
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_3__ {size_t step_index; int predictor; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip (int,int ,int) ;
 int av_clip_int16 (int) ;
 int* ff_adpcm_index_table ;
 int* ff_adpcm_step_table ;

__attribute__((used)) static inline int16_t adpcm_ima_expand_nibble(ADPCMChannelStatus *c, int8_t nibble, int shift)
{
    int step_index;
    int predictor;
    int sign, delta, diff, step;

    step = ff_adpcm_step_table[c->step_index];
    step_index = c->step_index + ff_adpcm_index_table[(unsigned)nibble];
    step_index = av_clip(step_index, 0, 88);

    sign = nibble & 8;
    delta = nibble & 7;



    diff = ((2 * delta + 1) * step) >> shift;
    predictor = c->predictor;
    if (sign) predictor -= diff;
    else predictor += diff;

    c->predictor = av_clip_int16(predictor);
    c->step_index = step_index;

    return (int16_t)c->predictor;
}
