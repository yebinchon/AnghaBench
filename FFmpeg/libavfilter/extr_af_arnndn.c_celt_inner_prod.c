
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float celt_inner_prod(const float *x,
                                    const float *y, int N)
{
    float xy = 0.f;

    for (int i = 0; i < N; i++)
        xy += x[i] * y[i];

    return xy;
}
