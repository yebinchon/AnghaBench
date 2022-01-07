
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double coeff; double count; } ;
typedef TYPE_1__ Predictor ;



__attribute__((used)) static double predict_size(Predictor *p, double q, double var)
{
    return p->coeff * var / (q * p->count);
}
