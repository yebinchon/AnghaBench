
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


struct TYPE_14__ {TYPE_1__* csp; } ;
typedef TYPE_3__ YADIFContext ;
struct TYPE_15__ {int parity; int tff; int w; int h; int plane; TYPE_5__* frame; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_17__ {TYPE_2__* internal; TYPE_3__* priv; } ;
struct TYPE_16__ {int width; int height; } ;
struct TYPE_13__ {int (* execute ) (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;} ;
struct TYPE_12__ {int nb_components; int log2_chroma_h; int log2_chroma_w; } ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVFilterContext ;


 int AV_CEIL_RSHIFT (int,int ) ;
 int FFMIN (int,int ) ;
 int emms_c () ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 int filter_slice ;
 int stub1 (TYPE_6__*,int ,TYPE_4__*,int *,int ) ;

__attribute__((used)) static void filter(AVFilterContext *ctx, AVFrame *dstpic,
                   int parity, int tff)
{
    YADIFContext *yadif = ctx->priv;
    ThreadData td = { .frame = dstpic, .parity = parity, .tff = tff };
    int i;

    for (i = 0; i < yadif->csp->nb_components; i++) {
        int w = dstpic->width;
        int h = dstpic->height;

        if (i == 1 || i == 2) {
            w = AV_CEIL_RSHIFT(w, yadif->csp->log2_chroma_w);
            h = AV_CEIL_RSHIFT(h, yadif->csp->log2_chroma_h);
        }


        td.w = w;
        td.h = h;
        td.plane = i;

        ctx->internal->execute(ctx, filter_slice, &td, ((void*)0), FFMIN(h, ff_filter_get_nb_threads(ctx)));
    }

    emms_c();
}
