
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int length; struct TYPE_9__* coeff; } ;
typedef TYPE_1__ SwsVector ;


 int av_free (TYPE_1__*) ;
 int makenan_vec (TYPE_1__*) ;
 TYPE_1__* sws_diffVec (TYPE_1__*,TYPE_1__*) ;

void sws_subVec(SwsVector *a, SwsVector *b)
{
    SwsVector *diff = sws_diffVec(a, b);
    if (!diff) {
        makenan_vec(a);
        return;
    }
    av_free(a->coeff);
    a->coeff = diff->coeff;
    a->length = diff->length;
    av_free(diff);
}
