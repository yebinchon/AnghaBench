
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_7__* input_frames_ref; int * input_frames; int (* pipeline_uninit ) (TYPE_3__*) ;} ;
typedef TYPE_1__ VAAPIVPPContext ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_10__ {TYPE_1__* priv; } ;
struct TYPE_9__ {int hw_frames_ctx; TYPE_3__* dst; } ;
typedef int AVHWFramesContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 TYPE_7__* av_buffer_ref (int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int stub1 (TYPE_3__*) ;

int ff_vaapi_vpp_config_input(AVFilterLink *inlink)
{
    AVFilterContext *avctx = inlink->dst;
    VAAPIVPPContext *ctx = avctx->priv;

    if (ctx->pipeline_uninit)
        ctx->pipeline_uninit(avctx);

    if (!inlink->hw_frames_ctx) {
        av_log(avctx, AV_LOG_ERROR, "A hardware frames reference is "
               "required to associate the processing device.\n");
        return AVERROR(EINVAL);
    }

    ctx->input_frames_ref = av_buffer_ref(inlink->hw_frames_ctx);
    if (!ctx->input_frames_ref) {
        av_log(avctx, AV_LOG_ERROR, "A input frames reference create "
               "failed.\n");
        return AVERROR(ENOMEM);
    }
    ctx->input_frames = (AVHWFramesContext*)ctx->input_frames_ref->data;

    return 0;
}
