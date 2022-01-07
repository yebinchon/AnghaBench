
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct dxva_context {int workaround; int surface_count; int surface; int * cfg; int decoder; } ;
typedef enum AVHWDeviceType { ____Placeholder_AVHWDeviceType } AVHWDeviceType ;
struct TYPE_30__ {int context_mutex; int workaround; int surface; int surface_count; int * cfg; int video_context; int decoder; } ;
struct TYPE_29__ {int video_context; } ;
struct TYPE_28__ {int nb_surfaces; int surfaces; } ;
struct TYPE_27__ {scalar_t__ format; TYPE_7__* hwctx; TYPE_3__* device_ctx; } ;
struct TYPE_25__ {struct dxva_context dxva2; TYPE_9__ d3d11va; } ;
struct TYPE_26__ {scalar_t__ pix_fmt; int workaround; int dxva2_config; int dxva2_decoder; TYPE_4__ ctx; int d3d11_views; int nb_d3d11_views; int d3d11_config; int d3d11_decoder; TYPE_3__* device_ctx; } ;
struct TYPE_24__ {TYPE_8__* hwctx; } ;
struct TYPE_23__ {scalar_t__ data; } ;
struct TYPE_22__ {scalar_t__ pix_fmt; } ;
struct TYPE_21__ {TYPE_2__* hw_frames_ctx; TYPE_1__* hwaccel; scalar_t__ hwaccel_context; } ;
typedef TYPE_5__ FFDXVASharedContext ;
typedef TYPE_6__ AVHWFramesContext ;
typedef TYPE_7__ AVDXVA2FramesContext ;
typedef TYPE_8__ AVD3D11VADeviceContext ;
typedef TYPE_9__ AVD3D11VAContext ;
typedef TYPE_10__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_HWDEVICE_TYPE_D3D11VA ;
 int AV_HWDEVICE_TYPE_DXVA2 ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_5__* DXVA_SHARED_CONTEXT (TYPE_10__*) ;
 int EINVAL ;
 int INVALID_HANDLE_VALUE ;
 int av_log (TYPE_10__*,int ,char*) ;
 int d3d11va_create_decoder (TYPE_10__*) ;
 int dxva2_create_decoder (TYPE_10__*) ;
 int ff_decode_get_hw_frames_ctx (TYPE_10__*,int) ;
 int ff_dxva2_decode_uninit (TYPE_10__*) ;
 int ff_dxva2_lock (TYPE_10__*) ;
 int ff_dxva2_unlock (TYPE_10__*) ;

int ff_dxva2_decode_init(AVCodecContext *avctx)
{
    FFDXVASharedContext *sctx = DXVA_SHARED_CONTEXT(avctx);
    AVHWFramesContext *frames_ctx;
    enum AVHWDeviceType dev_type = avctx->hwaccel->pix_fmt == AV_PIX_FMT_DXVA2_VLD
                            ? AV_HWDEVICE_TYPE_DXVA2 : AV_HWDEVICE_TYPE_D3D11VA;
    int ret = 0;


    if (avctx->hwaccel_context)
        return 0;


    sctx->pix_fmt = avctx->hwaccel->pix_fmt;

    ret = ff_decode_get_hw_frames_ctx(avctx, dev_type);
    if (ret < 0)
        return ret;

    frames_ctx = (AVHWFramesContext*)avctx->hw_frames_ctx->data;
    sctx->device_ctx = frames_ctx->device_ctx;

    if (frames_ctx->format != sctx->pix_fmt) {
        av_log(avctx, AV_LOG_ERROR, "Invalid pixfmt for hwaccel!\n");
        ret = AVERROR(EINVAL);
        goto fail;
    }
    return 0;

fail:
    ff_dxva2_decode_uninit(avctx);
    return ret;
}
