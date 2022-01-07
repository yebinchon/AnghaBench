
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AACEncContext {int dummy; } ;


 int quantize_and_encode_band_cost (struct AACEncContext*,int *,float const*,int *,float const*,int,int,int,float,float const,int*,float*,int) ;

__attribute__((used)) static inline int quantize_band_cost_bits(struct AACEncContext *s, const float *in,
                                const float *scaled, int size, int scale_idx,
                                int cb, const float lambda, const float uplim,
                                int *bits, float *energy, int rtz)
{
    int auxbits;
    quantize_and_encode_band_cost(s, ((void*)0), in, ((void*)0), scaled, size, scale_idx,
                                         cb, 0.0f, uplim, &auxbits, energy, rtz);
    if (bits) {
        *bits = auxbits;
    }
    return auxbits;
}
