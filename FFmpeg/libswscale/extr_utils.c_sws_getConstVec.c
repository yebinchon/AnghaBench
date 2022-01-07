
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double* coeff; } ;
typedef TYPE_1__ SwsVector ;


 TYPE_1__* sws_allocVec (int) ;

SwsVector *sws_getConstVec(double c, int length)
{
    int i;
    SwsVector *vec = sws_allocVec(length);

    if (!vec)
        return ((void*)0);

    for (i = 0; i < length; i++)
        vec->coeff[i] = c;

    return vec;
}
