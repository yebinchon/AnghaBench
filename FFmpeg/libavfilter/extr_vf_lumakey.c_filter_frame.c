
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {int * outputs; TYPE_1__* internal; TYPE_2__* priv; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {int height; } ;
struct TYPE_14__ {int do_lumakey_slice; } ;
struct TYPE_13__ {int (* execute ) (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_2__ LumakeyContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int FFMIN (int ,int ) ;
 int av_frame_make_writable (TYPE_3__*) ;
 int ff_filter_frame (int ,TYPE_3__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 int stub1 (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *frame)
{
    AVFilterContext *ctx = link->dst;
    LumakeyContext *s = ctx->priv;
    int ret;

    if (ret = av_frame_make_writable(frame))
        return ret;

    if (ret = ctx->internal->execute(ctx, s->do_lumakey_slice, frame, ((void*)0), FFMIN(frame->height, ff_filter_get_nb_threads(ctx))))
        return ret;

    return ff_filter_frame(ctx->outputs[0], frame);
}
