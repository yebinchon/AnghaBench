
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int order; float leakage; float mu; float eps; int output_mode; int kernel_size; TYPE_1__* fdsp; } ;
struct TYPE_5__ {float (* scalarproduct_float ) (float*,float*,int ) ;int (* vector_fmac_scalar ) (float*,float*,float,int ) ;int (* vector_fmul_scalar ) (float*,float*,float const,int ) ;} ;
typedef TYPE_2__ AudioNLMSContext ;






 float fir_sample (TYPE_2__*,float,float*,float*,float*,int*) ;
 int memcpy (float*,float*,int const) ;
 float stub1 (float*,float*,int ) ;
 int stub2 (float*,float*,float const,int ) ;
 int stub3 (float*,float*,float,int ) ;

__attribute__((used)) static float process_sample(AudioNLMSContext *s, float input, float desired,
                            float *delay, float *coeffs, float *tmp, int *offsetp)
{
    const int order = s->order;
    const float leakage = s->leakage;
    const float mu = s->mu;
    const float a = 1.f - leakage * mu;
    float sum, output, e, norm, b;
    int offset = *offsetp;

    delay[offset + order] = input;

    output = fir_sample(s, input, delay, coeffs, tmp, offsetp);
    e = desired - output;

    sum = s->fdsp->scalarproduct_float(delay, delay, s->kernel_size);

    norm = s->eps + sum;
    b = mu * e / norm;

    memcpy(tmp, delay + offset, order * sizeof(float));

    s->fdsp->vector_fmul_scalar(coeffs, coeffs, a, s->kernel_size);

    s->fdsp->vector_fmac_scalar(coeffs, tmp, b, s->kernel_size);

    memcpy(coeffs + order, coeffs, order * sizeof(float));

    switch (s->output_mode) {
    case 130: output = input; break;
    case 131: output = desired; break;
    case 128: break;
    case 129: output = desired - output; break;
    }
    return output;
}
