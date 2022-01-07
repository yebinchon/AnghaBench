
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef scalar_t__ VAStatus ;
struct TYPE_22__ {scalar_t__ va_config; int have_old_context; void* va_context; TYPE_4__* hwfc; TYPE_3__* hwctx; TYPE_6__* frames; TYPE_7__* device; TYPE_2__* old_context; TYPE_15__* device_ref; } ;
typedef TYPE_5__ VAAPIDecodeContext ;
struct TYPE_25__ {int coded_height; int coded_width; TYPE_10__* hw_frames_ctx; TYPE_2__* hwaccel_context; TYPE_1__* internal; } ;
struct TYPE_24__ {TYPE_3__* hwctx; } ;
struct TYPE_23__ {int device_ref; TYPE_7__* device_ctx; TYPE_4__* hwctx; } ;
struct TYPE_21__ {int nb_surfaces; int surface_ids; } ;
struct TYPE_20__ {int display; int driver_quirks; } ;
struct TYPE_19__ {scalar_t__ config_id; void* context_id; int display; } ;
struct TYPE_18__ {TYPE_5__* hwaccel_priv_data; } ;
struct TYPE_17__ {scalar_t__ data; } ;
struct TYPE_16__ {scalar_t__ data; } ;
typedef TYPE_6__ AVHWFramesContext ;
typedef TYPE_7__ AVHWDeviceContext ;
typedef TYPE_8__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_VAAPI ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_VAAPI_DRIVER_QUIRK_RENDER_PARAM_BUFFERS ;
 int EIO ;
 int ENOMEM ;
 void* VA_INVALID_ID ;
 int VA_PROGRESSIVE ;
 scalar_t__ VA_STATUS_SUCCESS ;
 TYPE_15__* av_hwdevice_ctx_alloc (int ) ;
 int av_log (TYPE_8__*,int ,char*,...) ;
 int ff_decode_get_hw_frames_ctx (TYPE_8__*,int ) ;
 int ff_vaapi_decode_uninit (TYPE_8__*) ;
 scalar_t__ vaCreateContext (int ,scalar_t__,int ,int ,int ,int ,int ,void**) ;
 void* vaErrorStr (scalar_t__) ;
 int vaapi_decode_make_config (TYPE_8__*,int ,scalar_t__*,TYPE_10__*) ;

int ff_vaapi_decode_init(AVCodecContext *avctx)
{
    VAAPIDecodeContext *ctx = avctx->internal->hwaccel_priv_data;
    VAStatus vas;
    int err;

    ctx->va_config = VA_INVALID_ID;
    ctx->va_context = VA_INVALID_ID;
    err = ff_decode_get_hw_frames_ctx(avctx, AV_HWDEVICE_TYPE_VAAPI);
    if (err < 0)
        goto fail;

    ctx->frames = (AVHWFramesContext*)avctx->hw_frames_ctx->data;
    ctx->hwfc = ctx->frames->hwctx;
    ctx->device = ctx->frames->device_ctx;
    ctx->hwctx = ctx->device->hwctx;

    err = vaapi_decode_make_config(avctx, ctx->frames->device_ref,
                                   &ctx->va_config, avctx->hw_frames_ctx);
    if (err)
        goto fail;

    vas = vaCreateContext(ctx->hwctx->display, ctx->va_config,
                          avctx->coded_width, avctx->coded_height,
                          VA_PROGRESSIVE,
                          ctx->hwfc->surface_ids,
                          ctx->hwfc->nb_surfaces,
                          &ctx->va_context);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create decode "
               "context: %d (%s).\n", vas, vaErrorStr(vas));
        err = AVERROR(EIO);
        goto fail;
    }

    av_log(avctx, AV_LOG_DEBUG, "Decode context initialised: "
           "%#x/%#x.\n", ctx->va_config, ctx->va_context);




    return 0;

fail:
    ff_vaapi_decode_uninit(avctx);
    return err;
}
