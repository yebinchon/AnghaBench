
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * inputs; TYPE_1__* priv; } ;
struct TYPE_6__ {TYPE_3__* src; } ;
struct TYPE_5__ {scalar_t__ available; int eof; int q; } ;
typedef TYPE_1__ DeflickerContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int ENOMEM ;
 int * av_frame_clone (int *) ;
 int * ff_bufqueue_peek (int *,scalar_t__) ;
 int ff_request_frame (int ) ;
 int filter_frame (int ,int *) ;

__attribute__((used)) static int request_frame(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    DeflickerContext *s = ctx->priv;
    int ret;

    ret = ff_request_frame(ctx->inputs[0]);
    if (ret == AVERROR_EOF && s->available > 0) {
        AVFrame *buf = ff_bufqueue_peek(&s->q, s->available - 1);
        if (!buf)
            return AVERROR(ENOMEM);
        buf = av_frame_clone(buf);
        if (!buf)
            return AVERROR(ENOMEM);

        s->eof = 1;
        ret = filter_frame(ctx->inputs[0], buf);
        s->available--;
    }

    return ret;
}
