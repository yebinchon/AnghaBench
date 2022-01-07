
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {size_t frame_len_bits; size_t block_len_bits; float** exponents; int block_len; float* max_exponent; int ** exponent_bands; } ;
typedef TYPE_1__ WMACodecContext ;


 float FFMAX (float,float) ;
 float ff_exp10 (double) ;

__attribute__((used)) static void init_exp(WMACodecContext *s, int ch, const int *exp_param)
{
    int n;
    const uint16_t *ptr;
    float v, *q, max_scale, *q_end;

    ptr = s->exponent_bands[s->frame_len_bits - s->block_len_bits];
    q = s->exponents[ch];
    q_end = q + s->block_len;
    max_scale = 0;
    while (q < q_end) {

        v = ff_exp10(*exp_param++ *(1.0 / 16.0));
        max_scale = FFMAX(max_scale, v);
        n = *ptr++;
        do {
            *q++ = v;
        } while (--n);
    }
    s->max_exponent[ch] = max_scale;
}
