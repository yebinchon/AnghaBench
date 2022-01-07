
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int coeff; } ;
typedef TYPE_1__ SwsVector ;


 int av_free (TYPE_1__*) ;
 int av_freep (int *) ;

void sws_freeVec(SwsVector *a)
{
    if (!a)
        return;
    av_freep(&a->coeff);
    a->length = 0;
    av_free(a);
}
