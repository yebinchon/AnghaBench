
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_5__ {int s1; int s2; } ;
struct TYPE_4__ {int* coeff; TYPE_2__* prev; } ;
typedef int GetBitContext ;
typedef TYPE_1__ ADXContext ;
typedef TYPE_2__ ADXChannelState ;


 int AV_RB16 (int const*) ;
 int BLOCK_SAMPLES ;
 int BLOCK_SIZE ;
 int COEFF_BITS ;
 int av_clip_int16 (int) ;
 int get_sbits (int *,int) ;
 int init_get_bits (int *,int const*,int) ;

__attribute__((used)) static int adx_decode(ADXContext *c, int16_t *out, int offset,
                      const uint8_t *in, int ch)
{
    ADXChannelState *prev = &c->prev[ch];
    GetBitContext gb;
    int scale = AV_RB16(in);
    int i;
    int s0, s1, s2, d;


    if (scale & 0x8000)
        return -1;

    init_get_bits(&gb, in + 2, (BLOCK_SIZE - 2) * 8);
    out += offset;
    s1 = prev->s1;
    s2 = prev->s2;
    for (i = 0; i < BLOCK_SAMPLES; i++) {
        d = get_sbits(&gb, 4);
        s0 = ((d * (1 << COEFF_BITS)) * scale + c->coeff[0] * s1 + c->coeff[1] * s2) >> COEFF_BITS;
        s2 = s1;
        s1 = av_clip_int16(s0);
        *out++ = s1;
    }
    prev->s1 = s1;
    prev->s2 = s2;

    return 0;
}
