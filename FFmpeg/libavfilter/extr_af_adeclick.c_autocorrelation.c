
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void autocorrelation(const double *input, int order, int size,
                            double *output, double scale)
{
    int i, j;

    for (i = 0; i <= order; i++) {
        double value = 0.;

        for (j = i; j < size; j++)
            value += input[j] * input[j - i];

        output[i] = value * scale;
    }
}
