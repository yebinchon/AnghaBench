
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {size_t step_index; int predictor; } ;
typedef int GetBitContext ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip (int,int ,int) ;
 int av_clip_int16 (int) ;
 int av_mod_uintp2 (int,int) ;
 int** ff_adpcm_index_tables ;
 int* ff_adpcm_step_table ;
 int get_bits_le (int *,int) ;

__attribute__((used)) static inline int16_t adpcm_ima_wav_expand_nibble(ADPCMChannelStatus *c, GetBitContext *gb, int bps)
{
    int nibble, step_index, predictor, sign, delta, diff, step, shift;

    shift = bps - 1;
    nibble = get_bits_le(gb, bps),
    step = ff_adpcm_step_table[c->step_index];
    step_index = c->step_index + ff_adpcm_index_tables[bps - 2][nibble];
    step_index = av_clip(step_index, 0, 88);

    sign = nibble & (1 << shift);
    delta = av_mod_uintp2(nibble, shift);
    diff = ((2 * delta + 1) * step) >> shift;
    predictor = c->predictor;
    if (sign) predictor -= diff;
    else predictor += diff;

    c->predictor = av_clip_int16(predictor);
    c->step_index = step_index;

    return (int16_t)c->predictor;
}
