
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int filter_context; int strength; int quality; int radius; } ;
struct TYPE_10__ {int * chrV; int chrH; TYPE_1__* lumV; TYPE_1__* lumH; } ;
struct TYPE_9__ {int length; int * coeff; } ;
typedef TYPE_1__ SwsVector ;
typedef TYPE_2__ SwsFilter ;
typedef TYPE_3__ FilterParam ;


 int AVERROR (int ) ;
 int AV_PIX_FMT_GRAY8 ;
 int EINVAL ;
 int sws_freeVec (TYPE_1__*) ;
 int sws_getCachedContext (int *,int,int,int ,int,int,int ,unsigned int,TYPE_2__*,int *,int *) ;
 TYPE_1__* sws_getGaussianVec (int ,int ) ;
 int sws_scaleVec (TYPE_1__*,int ) ;

__attribute__((used)) static int alloc_sws_context(FilterParam *f, int width, int height, unsigned int flags)
{
    SwsVector *vec;
    SwsFilter sws_filter;

    vec = sws_getGaussianVec(f->radius, f->quality);

    if (!vec)
        return AVERROR(EINVAL);

    sws_scaleVec(vec, f->strength);
    vec->coeff[vec->length / 2] += 1.0 - f->strength;
    sws_filter.lumH = sws_filter.lumV = vec;
    sws_filter.chrH = sws_filter.chrV = ((void*)0);
    f->filter_context = sws_getCachedContext(((void*)0),
                                             width, height, AV_PIX_FMT_GRAY8,
                                             width, height, AV_PIX_FMT_GRAY8,
                                             flags, &sws_filter, ((void*)0), ((void*)0));

    sws_freeVec(vec);

    if (!f->filter_context)
        return AVERROR(EINVAL);

    return 0;
}
