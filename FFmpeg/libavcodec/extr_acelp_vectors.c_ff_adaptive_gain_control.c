
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float avpriv_scalarproduct_float_c (float const*,float const*,int) ;
 float sqrt (float) ;

void ff_adaptive_gain_control(float *out, const float *in, float speech_energ,
                              int size, float alpha, float *gain_mem)
{
    int i;
    float postfilter_energ = avpriv_scalarproduct_float_c(in, in, size);
    float gain_scale_factor = 1.0;
    float mem = *gain_mem;

    if (postfilter_energ)
        gain_scale_factor = sqrt(speech_energ / postfilter_energ);

    gain_scale_factor *= 1.0 - alpha;

    for (i = 0; i < size; i++) {
        mem = alpha * mem + gain_scale_factor;
        out[i] = in[i] * mem;
    }

    *gain_mem = mem;
}
