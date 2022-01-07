
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double* delta; double* weights; } ;
typedef TYPE_1__ LoudNormContext ;



__attribute__((used)) static double gaussian_filter(LoudNormContext *s, int index)
{
    double result = 0.;
    int i;

    index = index - 10 > 0 ? index - 10 : index + 20;
    for (i = 0; i < 21; i++)
        result += s->delta[((index + i) < 30) ? (index + i) : (index + i - 30)] * s->weights[i];

    return result;
}
