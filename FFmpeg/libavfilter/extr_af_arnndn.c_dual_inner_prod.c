
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void dual_inner_prod(const float *x, const float *y01, const float *y02,
                                   int N, float *xy1, float *xy2)
{
    float xy01 = 0, xy02 = 0;

    for (int i = 0; i < N; i++) {
        xy01 += (x[i] * y01[i]);
        xy02 += (x[i] * y02[i]);
    }

    *xy1 = xy01;
    *xy2 = xy02;
}
