
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AACEncContext {int dummy; } ;


 float quantize_and_encode_band_cost (struct AACEncContext*,int *,float const*,int *,float const*,int,int,int,float const,float const,int*,float*,int) ;

__attribute__((used)) static inline float quantize_band_cost(struct AACEncContext *s, const float *in,
                                const float *scaled, int size, int scale_idx,
                                int cb, const float lambda, const float uplim,
                                int *bits, float *energy, int rtz)
{
    return quantize_and_encode_band_cost(s, ((void*)0), in, ((void*)0), scaled, size, scale_idx,
                                         cb, lambda, uplim, bits, energy, rtz);
}
