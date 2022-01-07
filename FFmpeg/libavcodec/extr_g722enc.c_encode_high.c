
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct G722Band {int scale_factor; scalar_t__ s_predictor; } ;
typedef int diff ;


 int av_clip_int16 (scalar_t__) ;

__attribute__((used)) static inline int encode_high(const struct G722Band *state, int xhigh)
{
    int diff = av_clip_int16(xhigh - state->s_predictor);
    int pred = 141 * state->scale_factor >> 8;

    return ((diff ^ (diff >> (sizeof(diff)*8-1))) < pred) + 2*(diff >= 0);
}
