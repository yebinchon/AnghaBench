
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {TYPE_4__** inputs; TYPE_2__* priv; } ;
struct TYPE_13__ {scalar_t__ format; int frame_rate; int time_base; int h; int w; TYPE_1__* hw_frames_ctx; TYPE_5__* src; } ;
struct TYPE_12__ {scalar_t__ device_ctx; } ;
struct TYPE_11__ {int qsv_param; int qsv; int * var_values; } ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_2__ QSVOverlayContext ;
typedef TYPE_3__ AVHWFramesContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_QSV ;
 int EINVAL ;
 size_t VAR_MH ;
 size_t VAR_MW ;
 int av_get_pix_fmt_name (scalar_t__) ;
 int av_inv_q (int ) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int ff_qsvvpp_create (TYPE_5__*,int *,int *) ;
 int init_framesync (TYPE_5__*) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    QSVOverlayContext *vpp = ctx->priv;
    AVFilterLink *in0 = ctx->inputs[0];
    AVFilterLink *in1 = ctx->inputs[1];
    int ret;

    av_log(ctx, AV_LOG_DEBUG, "Output is of %s.\n", av_get_pix_fmt_name(outlink->format));
    if ((in0->format == AV_PIX_FMT_QSV && in1->format != AV_PIX_FMT_QSV) ||
        (in0->format != AV_PIX_FMT_QSV && in1->format == AV_PIX_FMT_QSV)) {
        av_log(ctx, AV_LOG_ERROR, "Mixing hardware and software pixel formats is not supported.\n");
        return AVERROR(EINVAL);
    } else if (in0->format == AV_PIX_FMT_QSV) {
        AVHWFramesContext *hw_frame0 = (AVHWFramesContext *)in0->hw_frames_ctx->data;
        AVHWFramesContext *hw_frame1 = (AVHWFramesContext *)in1->hw_frames_ctx->data;

        if (hw_frame0->device_ctx != hw_frame1->device_ctx) {
            av_log(ctx, AV_LOG_ERROR, "Inputs with different underlying QSV devices are forbidden.\n");
            return AVERROR(EINVAL);
        }
    }

    outlink->w = vpp->var_values[VAR_MW];
    outlink->h = vpp->var_values[VAR_MH];
    outlink->frame_rate = in0->frame_rate;
    outlink->time_base = av_inv_q(outlink->frame_rate);

    ret = init_framesync(ctx);
    if (ret < 0)
        return ret;

    return ff_qsvvpp_create(ctx, &vpp->qsv, &vpp->qsv_param);
}
