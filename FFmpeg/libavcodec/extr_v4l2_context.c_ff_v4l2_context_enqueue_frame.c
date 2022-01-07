
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int draining; } ;
typedef TYPE_1__ V4L2m2mContext ;
struct TYPE_10__ {int name; } ;
typedef TYPE_2__ V4L2Context ;
typedef int V4L2Buffer ;
typedef int AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_log (int ,int ,char*,int ) ;
 TYPE_1__* ctx_to_m2mctx (TYPE_2__*) ;
 int ff_v4l2_buffer_avframe_to_buf (int const*,int *) ;
 int ff_v4l2_buffer_enqueue (int *) ;
 int logger (TYPE_2__*) ;
 int * v4l2_getfree_v4l2buf (TYPE_2__*) ;
 int v4l2_stop_encode (TYPE_2__*) ;

int ff_v4l2_context_enqueue_frame(V4L2Context* ctx, const AVFrame* frame)
{
    V4L2m2mContext *s = ctx_to_m2mctx(ctx);
    V4L2Buffer* avbuf;
    int ret;

    if (!frame) {
        ret = v4l2_stop_encode(ctx);
        if (ret)
            av_log(logger(ctx), AV_LOG_ERROR, "%s stop_encode\n", ctx->name);
        s->draining= 1;
        return 0;
    }

    avbuf = v4l2_getfree_v4l2buf(ctx);
    if (!avbuf)
        return AVERROR(ENOMEM);

    ret = ff_v4l2_buffer_avframe_to_buf(frame, avbuf);
    if (ret)
        return ret;

    return ff_v4l2_buffer_enqueue(avbuf);
}
