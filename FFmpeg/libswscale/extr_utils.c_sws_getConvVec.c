
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int length; int* coeff; } ;
typedef TYPE_1__ SwsVector ;


 TYPE_1__* sws_getConstVec (double,int) ;

__attribute__((used)) static SwsVector *sws_getConvVec(SwsVector *a, SwsVector *b)
{
    int length = a->length + b->length - 1;
    int i, j;
    SwsVector *vec = sws_getConstVec(0.0, length);

    if (!vec)
        return ((void*)0);

    for (i = 0; i < a->length; i++) {
        for (j = 0; j < b->length; j++) {
            vec->coeff[i + j] += a->coeff[i] * b->coeff[j];
        }
    }

    return vec;
}
