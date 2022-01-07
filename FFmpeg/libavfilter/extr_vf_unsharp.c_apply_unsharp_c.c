
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UnsharpFilterParam ;
struct TYPE_13__ {int nb_threads; int chroma; int luma; int vsub; int hsub; } ;
typedef TYPE_2__ UnsharpContext ;
struct TYPE_14__ {int width; int height; int src_stride; int dst_stride; int src; int dst; int * fp; } ;
typedef TYPE_3__ ThreadData ;
struct TYPE_17__ {TYPE_1__* internal; TYPE_2__* priv; TYPE_5__** inputs; } ;
struct TYPE_16__ {int w; int h; } ;
struct TYPE_15__ {int * linesize; int * data; } ;
struct TYPE_12__ {int (* execute ) (TYPE_6__*,int ,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;


 int AV_CEIL_RSHIFT (int,int ) ;
 int FFMIN (int,int ) ;
 int stub1 (TYPE_6__*,int ,TYPE_3__*,int *,int ) ;
 int unsharp_slice ;

__attribute__((used)) static int apply_unsharp_c(AVFilterContext *ctx, AVFrame *in, AVFrame *out)
{
    AVFilterLink *inlink = ctx->inputs[0];
    UnsharpContext *s = ctx->priv;
    int i, plane_w[3], plane_h[3];
    UnsharpFilterParam *fp[3];
    ThreadData td;

    plane_w[0] = inlink->w;
    plane_w[1] = plane_w[2] = AV_CEIL_RSHIFT(inlink->w, s->hsub);
    plane_h[0] = inlink->h;
    plane_h[1] = plane_h[2] = AV_CEIL_RSHIFT(inlink->h, s->vsub);
    fp[0] = &s->luma;
    fp[1] = fp[2] = &s->chroma;
    for (i = 0; i < 3; i++) {
        td.fp = fp[i];
        td.dst = out->data[i];
        td.src = in->data[i];
        td.width = plane_w[i];
        td.height = plane_h[i];
        td.dst_stride = out->linesize[i];
        td.src_stride = in->linesize[i];
        ctx->internal->execute(ctx, unsharp_slice, &td, ((void*)0), FFMIN(plane_h[i], s->nb_threads));
    }
    return 0;
}
