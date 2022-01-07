
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* fdsp; } ;
struct TYPE_4__ {float (* scalarproduct_float ) (float const*,float const*,int const) ;} ;
typedef TYPE_2__ NNEDIContext ;


 float stub1 (float const*,float const*,int const) ;

__attribute__((used)) static void dot_prod(NNEDIContext *s, const float *data, const float *weights, float *vals, const int n, const int len, const float *scale)
{
    int i;

    for (i = 0; i < n; i++) {
        float sum;

        sum = s->fdsp->scalarproduct_float(data, &weights[i * len], len);

        vals[i] = sum * scale[0] + weights[n * len + i];
    }
}
