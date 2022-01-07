
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 scalar_t__ SQR (float const) ;

__attribute__((used)) static float compute_distance_ssd_c(const float *f1, const float *f2, ptrdiff_t K)
{
    float distance = 0.;

    for (int k = -K; k <= K; k++)
        distance += SQR(f1[k] - f2[k]);

    return distance;
}
