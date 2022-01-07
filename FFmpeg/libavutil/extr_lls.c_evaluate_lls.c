
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double const** coeff; } ;
typedef TYPE_1__ LLSModel ;



__attribute__((used)) static double evaluate_lls(LLSModel *m, const double *param, int order)
{
    int i;
    double out = 0;

    for (i = 0; i <= order; i++)
        out += param[i] * m->coeff[order][i];

    return out;
}
