
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int length; struct TYPE_9__* coeff; } ;
typedef TYPE_1__ SwsVector ;


 int av_free (TYPE_1__*) ;
 int makenan_vec (TYPE_1__*) ;
 TYPE_1__* sws_getConvVec (TYPE_1__*,TYPE_1__*) ;

void sws_convVec(SwsVector *a, SwsVector *b)
{
    SwsVector *conv = sws_getConvVec(a, b);
    if (!conv) {
        makenan_vec(a);
        return;
    }
    av_free(a->coeff);
    a->coeff = conv->coeff;
    a->length = conv->length;
    av_free(conv);
}
