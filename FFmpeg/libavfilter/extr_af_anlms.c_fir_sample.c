
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int order; int kernel_size; TYPE_1__* fdsp; } ;
struct TYPE_4__ {float (* scalarproduct_float ) (float*,float*,int ) ;} ;
typedef TYPE_2__ AudioNLMSContext ;


 int memcpy (float*,float*,int const) ;
 float stub1 (float*,float*,int ) ;

__attribute__((used)) static float fir_sample(AudioNLMSContext *s, float sample, float *delay,
                        float *coeffs, float *tmp, int *offset)
{
    const int order = s->order;
    float output;

    delay[*offset] = sample;

    memcpy(tmp, coeffs + order - *offset, order * sizeof(float));

    output = s->fdsp->scalarproduct_float(delay, tmp, s->kernel_size);

    if (--(*offset) < 0)
        *offset = order - 1;

    return output;
}
