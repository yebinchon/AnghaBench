
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* y; int y_size; } ;
typedef TYPE_1__ DeclickChannel ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_fast_malloc (double**,int *,int) ;
 int factorization (double*,int) ;

__attribute__((used)) static int do_interpolation(DeclickChannel *c, double *matrix,
                            double *vector, int n, double *out)
{
    int i, j, ret;
    double *y;

    ret = factorization(matrix, n);
    if (ret < 0)
        return ret;

    av_fast_malloc(&c->y, &c->y_size, n * sizeof(*c->y));
    y = c->y;
    if (!y)
        return AVERROR(ENOMEM);

    for (i = 0; i < n; i++) {
        const int in = i * n;
        double value;

        value = vector[i];
        for (j = 0; j < i; j++)
            value -= matrix[in + j] * y[j];
        y[i] = value;
    }

    for (i = n - 1; i >= 0; i--) {
        out[i] = y[i] / matrix[i * n + i];
        for (j = i + 1; j < n; j++)
            out[i] -= matrix[j * n + i] * out[j];
    }

    return 0;
}
