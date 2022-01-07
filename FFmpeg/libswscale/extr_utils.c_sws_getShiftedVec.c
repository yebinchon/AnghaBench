
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int length; int * coeff; } ;
typedef TYPE_1__ SwsVector ;


 int FFABS (int) ;
 TYPE_1__* sws_getConstVec (double,int) ;

__attribute__((used)) static SwsVector *sws_getShiftedVec(SwsVector *a, int shift)
{
    int length = a->length + FFABS(shift) * 2;
    int i;
    SwsVector *vec = sws_getConstVec(0.0, length);

    if (!vec)
        return ((void*)0);

    for (i = 0; i < a->length; i++) {
        vec->coeff[i + (length - 1) / 2 -
                       (a->length - 1) / 2 - shift] = a->coeff[i];
    }

    return vec;
}
