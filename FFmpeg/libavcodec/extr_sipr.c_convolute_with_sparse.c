
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int* x; float const* y; } ;
typedef TYPE_1__ AMRFixed ;


 int memset (float*,int ,int) ;

__attribute__((used)) static void convolute_with_sparse(float *out, const AMRFixed *pulses,
                                  const float *shape, int length)
{
    int i, j;

    memset(out, 0, length*sizeof(float));
    for (i = 0; i < pulses->n; i++)
        for (j = pulses->x[i]; j < length; j++)
            out[j] += pulses->y[i] * shape[j - pulses->x[i]];
}
