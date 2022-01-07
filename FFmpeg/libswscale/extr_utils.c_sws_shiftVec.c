
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int length; struct TYPE_7__* coeff; } ;
typedef TYPE_1__ SwsVector ;


 int av_free (TYPE_1__*) ;
 int makenan_vec (TYPE_1__*) ;
 TYPE_1__* sws_getShiftedVec (TYPE_1__*,int) ;

void sws_shiftVec(SwsVector *a, int shift)
{
    SwsVector *shifted = sws_getShiftedVec(a, shift);
    if (!shifted) {
        makenan_vec(a);
        return;
    }
    av_free(a->coeff);
    a->coeff = shifted->coeff;
    a->length = shifted->length;
    av_free(shifted);
}
