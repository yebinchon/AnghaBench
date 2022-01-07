
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ passthrough; int dir; scalar_t__ output_width; scalar_t__ output_height; } ;
typedef TYPE_1__ VAAPIVPPContext ;
typedef TYPE_1__ TransposeVAAPIContext ;
struct TYPE_10__ {TYPE_3__** inputs; TYPE_1__* priv; } ;
struct TYPE_9__ {scalar_t__ w; scalar_t__ h; int hw_frames_ctx; TYPE_4__* src; } ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_VERBOSE ;
 int ENOMEM ;




 scalar_t__ TRANSPOSE_PT_TYPE_LANDSCAPE ;
 scalar_t__ TRANSPOSE_PT_TYPE_NONE ;
 scalar_t__ TRANSPOSE_PT_TYPE_PORTRAIT ;
 int av_buffer_ref (int ) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int ff_vaapi_vpp_config_output (TYPE_3__*) ;

__attribute__((used)) static int transpose_vaapi_vpp_config_output(AVFilterLink *outlink)
{
    AVFilterContext *avctx = outlink->src;
    VAAPIVPPContext *vpp_ctx = avctx->priv;
    TransposeVAAPIContext *ctx = avctx->priv;
    AVFilterLink *inlink = avctx->inputs[0];

    if ((inlink->w >= inlink->h && ctx->passthrough == TRANSPOSE_PT_TYPE_LANDSCAPE) ||
        (inlink->w <= inlink->h && ctx->passthrough == TRANSPOSE_PT_TYPE_PORTRAIT)) {
        outlink->hw_frames_ctx = av_buffer_ref(inlink->hw_frames_ctx);
        if (!outlink->hw_frames_ctx)
            return AVERROR(ENOMEM);
        av_log(avctx, AV_LOG_VERBOSE,
               "w:%d h:%d -> w:%d h:%d (passthrough mode)\n",
               inlink->w, inlink->h, inlink->w, inlink->h);
        return 0;
    }

    ctx->passthrough = TRANSPOSE_PT_TYPE_NONE;

    switch (ctx->dir) {
    case 130:
    case 131:
    case 129:
    case 128:
        vpp_ctx->output_width = avctx->inputs[0]->h;
        vpp_ctx->output_height = avctx->inputs[0]->w;
        av_log(avctx, AV_LOG_DEBUG, "swap width and height for clock/cclock rotation\n");
        break;
    default:
        break;
    }

    return ff_vaapi_vpp_config_output(outlink);
}
