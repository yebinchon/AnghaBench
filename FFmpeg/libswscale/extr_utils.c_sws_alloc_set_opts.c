
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_4__ {int flags; int srcW; int srcH; int dstW; int dstH; int srcFormat; int dstFormat; double* param; } ;
typedef TYPE_1__ SwsContext ;


 TYPE_1__* sws_alloc_context () ;

SwsContext *sws_alloc_set_opts(int srcW, int srcH, enum AVPixelFormat srcFormat,
                               int dstW, int dstH, enum AVPixelFormat dstFormat,
                               int flags, const double *param)
{
    SwsContext *c;

    if (!(c = sws_alloc_context()))
        return ((void*)0);

    c->flags = flags;
    c->srcW = srcW;
    c->srcH = srcH;
    c->dstW = dstW;
    c->dstH = dstH;
    c->srcFormat = srcFormat;
    c->dstFormat = dstFormat;

    if (param) {
        c->param[0] = param[0];
        c->param[1] = param[1];
    }

    return c;
}
