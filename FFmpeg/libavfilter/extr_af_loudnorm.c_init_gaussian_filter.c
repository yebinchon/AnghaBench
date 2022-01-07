
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* weights; } ;
typedef TYPE_1__ LoudNormContext ;


 double M_PI ;
 double const exp (double const) ;
 double const pow (int const,double) ;
 double const sqrt (double) ;

__attribute__((used)) static void init_gaussian_filter(LoudNormContext *s)
{
    double total_weight = 0.0;
    const double sigma = 3.5;
    double adjust;
    int i;

    const int offset = 21 / 2;
    const double c1 = 1.0 / (sigma * sqrt(2.0 * M_PI));
    const double c2 = 2.0 * pow(sigma, 2.0);

    for (i = 0; i < 21; i++) {
        const int x = i - offset;
        s->weights[i] = c1 * exp(-(pow(x, 2.0) / c2));
        total_weight += s->weights[i];
    }

    adjust = 1.0 / total_weight;
    for (i = 0; i < 21; i++)
        s->weights[i] *= adjust;
}
