
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_21__ {TYPE_1__* internal; TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_20__ {TYPE_5__* dst; } ;
struct TYPE_19__ {int pts; } ;
struct TYPE_18__ {int * height; int maskfun; int empty; scalar_t__ (* getsum ) (TYPE_5__*,TYPE_3__*) ;} ;
struct TYPE_17__ {int (* execute ) (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;} ;
typedef TYPE_2__ MaskFunContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int FFMIN (int ,int ) ;
 TYPE_3__* av_frame_clone (int ) ;
 int av_frame_free (TYPE_3__**) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 int ff_filter_get_nb_threads (TYPE_5__*) ;
 scalar_t__ stub1 (TYPE_5__*,TYPE_3__*) ;
 int stub2 (TYPE_5__*,int ,TYPE_3__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *frame)
{
    AVFilterContext *ctx = inlink->dst;
    MaskFunContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    if (s->getsum(ctx, frame)) {
        AVFrame *out = av_frame_clone(s->empty);

        if (!out) {
            av_frame_free(&frame);
            return AVERROR(ENOMEM);
        }
        out->pts = frame->pts;
        av_frame_free(&frame);

        return ff_filter_frame(outlink, out);
    }

    ctx->internal->execute(ctx, s->maskfun, frame, ((void*)0),
                           FFMIN(s->height[1], ff_filter_get_nb_threads(ctx)));

    return ff_filter_frame(outlink, frame);
}
