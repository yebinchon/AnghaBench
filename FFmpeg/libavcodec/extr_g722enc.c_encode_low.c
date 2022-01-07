
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct G722Band {int scale_factor; scalar_t__ s_predictor; } ;
typedef int diff ;


 int av_clip_int16 (scalar_t__) ;
 int* low_quant ;

__attribute__((used)) static inline int encode_low(const struct G722Band* state, int xlow)
{
    int diff = av_clip_int16(xlow - state->s_predictor);

    int limit = diff ^ (diff >> (sizeof(diff)*8-1));
    int i = 0;
    limit = limit + 1 << 10;
    if (limit > low_quant[8] * state->scale_factor)
        i = 9;
    while (i < 29 && limit > low_quant[i] * state->scale_factor)
        i++;
    return (diff < 0 ? (i < 2 ? 63 : 33) : 61) - i;
}
