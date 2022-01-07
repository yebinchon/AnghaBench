
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
typedef int int16_t ;
struct TYPE_3__ {int step; int predictor; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip (int ,int,int) ;

__attribute__((used)) static inline int16_t adpcm_sbpro_expand_nibble(ADPCMChannelStatus *c, int8_t nibble, int size, int shift)
{
    int sign, delta, diff;

    sign = nibble & (1<<(size-1));
    delta = nibble & ((1<<(size-1))-1);
    diff = delta << (7 + c->step + shift);


    c->predictor = av_clip(c->predictor + (sign ? -diff : diff), -16384,16256);


    if (delta >= (2*size - 3) && c->step < 3)
        c->step++;
    else if (delta == 0 && c->step > 0)
        c->step--;

    return (int16_t) c->predictor;
}
