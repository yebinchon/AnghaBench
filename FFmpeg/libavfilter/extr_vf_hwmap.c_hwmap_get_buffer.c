
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* priv; TYPE_2__** outputs; } ;
struct TYPE_9__ {int hw_frames_ctx; TYPE_3__* dst; } ;
struct TYPE_8__ {int mode; scalar_t__ reverse; } ;
typedef TYPE_1__ HWMapContext ;
typedef int AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AV_LOG_ERROR ;
 int * av_frame_alloc () ;
 int av_frame_free (int **) ;
 int av_hwframe_map (int *,int *,int ) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int * ff_default_get_video_buffer (TYPE_2__*,int,int) ;
 int * ff_get_video_buffer (TYPE_2__*,int,int) ;

__attribute__((used)) static AVFrame *hwmap_get_buffer(AVFilterLink *inlink, int w, int h)
{
    AVFilterContext *avctx = inlink->dst;
    AVFilterLink *outlink = avctx->outputs[0];
    HWMapContext *ctx = avctx->priv;

    if (ctx->reverse && !inlink->hw_frames_ctx) {
        AVFrame *src, *dst;
        int err;

        src = ff_get_video_buffer(outlink, w, h);
        if (!src) {
            av_log(avctx, AV_LOG_ERROR, "Failed to allocate source "
                   "frame for software mapping.\n");
            return ((void*)0);
        }

        dst = av_frame_alloc();
        if (!dst) {
            av_frame_free(&src);
            return ((void*)0);
        }

        err = av_hwframe_map(dst, src, ctx->mode);
        if (err) {
            av_log(avctx, AV_LOG_ERROR, "Failed to map frame to "
                   "software: %d.\n", err);
            av_frame_free(&src);
            av_frame_free(&dst);
            return ((void*)0);
        }

        av_frame_free(&src);
        return dst;
    } else {
        return ff_default_get_video_buffer(inlink, w, h);
    }
}
