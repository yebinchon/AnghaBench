
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void predict(float *samples, const float *coeff, int nsamples)
{
    int i, j;

    for (i = 0; i < nsamples; i++) {
        float res = 0;
        for (j = 0; j < 8; j++)
            res += coeff[j] * samples[i - j - 1];
        samples[i] -= res;
    }
}
