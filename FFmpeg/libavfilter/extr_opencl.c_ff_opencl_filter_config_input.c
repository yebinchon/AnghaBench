
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_12__ {scalar_t__ h; scalar_t__ w; TYPE_1__* hw_frames_ctx; TYPE_5__* dst; } ;
struct TYPE_11__ {scalar_t__ format; scalar_t__ sw_format; int device_ref; } ;
struct TYPE_10__ {scalar_t__ output_format; scalar_t__ output_height; scalar_t__ output_width; } ;
struct TYPE_9__ {scalar_t__ data; } ;
typedef TYPE_2__ OpenCLFilterContext ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_NONE ;
 scalar_t__ AV_PIX_FMT_OPENCL ;
 int EINVAL ;
 int av_log (TYPE_5__*,int ,char*) ;
 int opencl_filter_set_device (TYPE_5__*,int ) ;

int ff_opencl_filter_config_input(AVFilterLink *inlink)
{
    AVFilterContext *avctx = inlink->dst;
    OpenCLFilterContext *ctx = avctx->priv;
    AVHWFramesContext *input_frames;
    int err;

    if (!inlink->hw_frames_ctx) {
        av_log(avctx, AV_LOG_ERROR, "OpenCL filtering requires a "
               "hardware frames context on the input.\n");
        return AVERROR(EINVAL);
    }


    if (avctx->inputs[0] != inlink)
        return 0;

    input_frames = (AVHWFramesContext*)inlink->hw_frames_ctx->data;
    if (input_frames->format != AV_PIX_FMT_OPENCL)
        return AVERROR(EINVAL);

    err = opencl_filter_set_device(avctx, input_frames->device_ref);
    if (err < 0)
        return err;


    if (ctx->output_format == AV_PIX_FMT_NONE)
        ctx->output_format = input_frames->sw_format;
    if (!ctx->output_width)
        ctx->output_width = inlink->w;
    if (!ctx->output_height)
        ctx->output_height = inlink->h;

    return 0;
}
