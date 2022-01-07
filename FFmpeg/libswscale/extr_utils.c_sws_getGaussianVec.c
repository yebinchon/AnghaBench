
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* coeff; } ;
typedef TYPE_1__ SwsVector ;


 int M_PI ;
 int exp (double) ;
 int sqrt (int) ;
 TYPE_1__* sws_allocVec (int const) ;
 int sws_normalizeVec (TYPE_1__*,double) ;

SwsVector *sws_getGaussianVec(double variance, double quality)
{
    const int length = (int)(variance * quality + 0.5) | 1;
    int i;
    double middle = (length - 1) * 0.5;
    SwsVector *vec;

    if(variance < 0 || quality < 0)
        return ((void*)0);

    vec = sws_allocVec(length);

    if (!vec)
        return ((void*)0);

    for (i = 0; i < length; i++) {
        double dist = i - middle;
        vec->coeff[i] = exp(-dist * dist / (2 * variance * variance)) /
                        sqrt(2 * variance * M_PI);
    }

    sws_normalizeVec(vec, 1.0);

    return vec;
}
