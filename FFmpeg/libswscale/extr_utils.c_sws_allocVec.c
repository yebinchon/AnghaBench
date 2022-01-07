
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; void* coeff; } ;
typedef TYPE_1__ SwsVector ;


 int INT_MAX ;
 int av_freep (TYPE_1__**) ;
 void* av_malloc (int) ;

SwsVector *sws_allocVec(int length)
{
    SwsVector *vec;

    if(length <= 0 || length > INT_MAX/ sizeof(double))
        return ((void*)0);

    vec = av_malloc(sizeof(SwsVector));
    if (!vec)
        return ((void*)0);
    vec->length = length;
    vec->coeff = av_malloc(sizeof(double) * length);
    if (!vec->coeff)
        av_freep(&vec);
    return vec;
}
