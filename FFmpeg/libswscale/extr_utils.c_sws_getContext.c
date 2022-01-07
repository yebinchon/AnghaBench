
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef int SwsFilter ;
typedef int SwsContext ;


 int * sws_alloc_set_opts (int,int,int,int,int,int,int,double const*) ;
 int sws_freeContext (int *) ;
 scalar_t__ sws_init_context (int *,int *,int *) ;

SwsContext *sws_getContext(int srcW, int srcH, enum AVPixelFormat srcFormat,
                           int dstW, int dstH, enum AVPixelFormat dstFormat,
                           int flags, SwsFilter *srcFilter,
                           SwsFilter *dstFilter, const double *param)
{
    SwsContext *c;

    c = sws_alloc_set_opts(srcW, srcH, srcFormat,
                           dstW, dstH, dstFormat,
                           flags, param);
    if (!c)
        return ((void*)0);

    if (sws_init_context(c, srcFilter, dstFilter) < 0) {
        sws_freeContext(c);
        return ((void*)0);
    }

    return c;
}
