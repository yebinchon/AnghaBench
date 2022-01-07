
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ VASurfaceID ;
typedef scalar_t__ VAStatus ;
typedef int VAProcPipelineParameterBuffer ;
typedef int VABufferID ;
struct TYPE_9__ {int va_context; TYPE_1__* hwctx; } ;
typedef TYPE_2__ VAAPIVPPContext ;
struct TYPE_11__ {TYPE_2__* priv; } ;
struct TYPE_10__ {scalar_t__* data; } ;
struct TYPE_8__ {int driver_quirks; int display; } ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS ;
 scalar_t__ CONFIG_VAAPI_1 ;
 int EIO ;
 int VAProcPipelineParameterBufferType ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_4__*,int ,char*,scalar_t__,...) ;
 scalar_t__ vaBeginPicture (int ,int ,scalar_t__) ;
 scalar_t__ vaCreateBuffer (int ,int ,int ,int,int,int *,int *) ;
 scalar_t__ vaDestroyBuffer (int ,int ) ;
 scalar_t__ vaEndPicture (int ,int ) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaRenderPicture (int ,int ,int *,int) ;

int ff_vaapi_vpp_render_picture(AVFilterContext *avctx,
                                VAProcPipelineParameterBuffer *params,
                                AVFrame *output_frame)
{
    VAAPIVPPContext *ctx = avctx->priv;
    VASurfaceID output_surface;
    VABufferID params_id;
    VAStatus vas;
    int err;

    output_surface = (VASurfaceID)(uintptr_t)output_frame->data[3];

    vas = vaBeginPicture(ctx->hwctx->display,
                         ctx->va_context, output_surface);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to attach new picture: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail;
    }

    vas = vaCreateBuffer(ctx->hwctx->display, ctx->va_context,
                         VAProcPipelineParameterBufferType,
                         sizeof(*params), 1, params, &params_id);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create parameter buffer: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_after_begin;
    }
    av_log(avctx, AV_LOG_DEBUG, "Pipeline parameter buffer is %#x.\n",
           params_id);

    vas = vaRenderPicture(ctx->hwctx->display, ctx->va_context,
                          &params_id, 1);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to render parameter buffer: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_after_begin;
    }

    vas = vaEndPicture(ctx->hwctx->display, ctx->va_context);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to start picture processing: "
               "%d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail_after_render;
    }

    if (CONFIG_VAAPI_1 || ctx->hwctx->driver_quirks &
        AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS) {
        vas = vaDestroyBuffer(ctx->hwctx->display, params_id);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(avctx, AV_LOG_ERROR, "Failed to free parameter buffer: "
                   "%d (%s).\n", vas, vaErrorStr(vas));

        }
    }

    return 0;





fail_after_begin:
    vaRenderPicture(ctx->hwctx->display, ctx->va_context, &params_id, 1);
fail_after_render:
    vaEndPicture(ctx->hwctx->display, ctx->va_context);
fail:
    return err;
}
