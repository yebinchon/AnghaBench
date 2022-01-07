
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * chrV; int * chrH; int * lumV; int * lumH; } ;
typedef int SwsVector ;
typedef TYPE_1__ SwsFilter ;


 int AV_LOG_DEBUG ;
 int av_freep (TYPE_1__**) ;
 TYPE_1__* av_malloc (int) ;
 scalar_t__ isnan_vec (int *) ;
 int sws_addVec (int *,int *) ;
 int sws_freeVec (int *) ;
 void* sws_getGaussianVec (float,double) ;
 void* sws_getIdentityVec () ;
 int sws_normalizeVec (int *,double) ;
 int sws_printVec2 (int *,int *,int ) ;
 int sws_scaleVec (int *,float) ;
 int sws_shiftVec (int *,int) ;

SwsFilter *sws_getDefaultFilter(float lumaGBlur, float chromaGBlur,
                                float lumaSharpen, float chromaSharpen,
                                float chromaHShift, float chromaVShift,
                                int verbose)
{
    SwsFilter *filter = av_malloc(sizeof(SwsFilter));
    if (!filter)
        return ((void*)0);

    if (lumaGBlur != 0.0) {
        filter->lumH = sws_getGaussianVec(lumaGBlur, 3.0);
        filter->lumV = sws_getGaussianVec(lumaGBlur, 3.0);
    } else {
        filter->lumH = sws_getIdentityVec();
        filter->lumV = sws_getIdentityVec();
    }

    if (chromaGBlur != 0.0) {
        filter->chrH = sws_getGaussianVec(chromaGBlur, 3.0);
        filter->chrV = sws_getGaussianVec(chromaGBlur, 3.0);
    } else {
        filter->chrH = sws_getIdentityVec();
        filter->chrV = sws_getIdentityVec();
    }

    if (!filter->lumH || !filter->lumV || !filter->chrH || !filter->chrV)
        goto fail;

    if (chromaSharpen != 0.0) {
        SwsVector *id = sws_getIdentityVec();
        if (!id)
            goto fail;
        sws_scaleVec(filter->chrH, -chromaSharpen);
        sws_scaleVec(filter->chrV, -chromaSharpen);
        sws_addVec(filter->chrH, id);
        sws_addVec(filter->chrV, id);
        sws_freeVec(id);
    }

    if (lumaSharpen != 0.0) {
        SwsVector *id = sws_getIdentityVec();
        if (!id)
            goto fail;
        sws_scaleVec(filter->lumH, -lumaSharpen);
        sws_scaleVec(filter->lumV, -lumaSharpen);
        sws_addVec(filter->lumH, id);
        sws_addVec(filter->lumV, id);
        sws_freeVec(id);
    }

    if (chromaHShift != 0.0)
        sws_shiftVec(filter->chrH, (int)(chromaHShift + 0.5));

    if (chromaVShift != 0.0)
        sws_shiftVec(filter->chrV, (int)(chromaVShift + 0.5));

    sws_normalizeVec(filter->chrH, 1.0);
    sws_normalizeVec(filter->chrV, 1.0);
    sws_normalizeVec(filter->lumH, 1.0);
    sws_normalizeVec(filter->lumV, 1.0);

    if (isnan_vec(filter->chrH) ||
        isnan_vec(filter->chrV) ||
        isnan_vec(filter->lumH) ||
        isnan_vec(filter->lumV))
        goto fail;

    if (verbose)
        sws_printVec2(filter->chrH, ((void*)0), AV_LOG_DEBUG);
    if (verbose)
        sws_printVec2(filter->lumH, ((void*)0), AV_LOG_DEBUG);

    return filter;

fail:
    sws_freeVec(filter->lumH);
    sws_freeVec(filter->lumV);
    sws_freeVec(filter->chrH);
    sws_freeVec(filter->chrV);
    av_freep(&filter);
    return ((void*)0);
}
