
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchar_t ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {TYPE_3__* pVtbl; } ;
struct TYPE_15__ {int pix_fmt; TYPE_1__* codec; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int sw_format; } ;
struct TYPE_13__ {scalar_t__ format; int encoder; int context; TYPE_7__* factory; TYPE_2__* hw_frames_ctx; } ;
struct TYPE_12__ {scalar_t__ (* CreateComponent ) (TYPE_7__*,int ,int const*,int *) ;} ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_10__ {int id; } ;
typedef TYPE_4__ AmfContext ;
typedef TYPE_5__ AVHWFramesContext ;
typedef TYPE_6__ AVCodecContext ;
typedef scalar_t__ AMF_RESULT ;


 int * AMFVideoEncoderVCE_AVC ;
 int * AMFVideoEncoder_HEVC ;
 scalar_t__ AMF_OK ;
 int AMF_RETURN_IF_FALSE (TYPE_4__*,int,int ,char*,int,...) ;
 scalar_t__ AMF_SURFACE_UNKNOWN ;
 int AVERROR (int ) ;
 int AVERROR_ENCODER_NOT_FOUND ;


 int EINVAL ;
 scalar_t__ amf_av_to_amf_format (int) ;
 int av_get_pix_fmt_name (int) ;
 scalar_t__ stub1 (TYPE_7__*,int ,int const*,int *) ;

__attribute__((used)) static int amf_init_encoder(AVCodecContext *avctx)
{
    AmfContext *ctx = avctx->priv_data;
    const wchar_t *codec_id = ((void*)0);
    AMF_RESULT res;
    enum AVPixelFormat pix_fmt;

    switch (avctx->codec->id) {
        case 129:
            codec_id = AMFVideoEncoderVCE_AVC;
            break;
        case 128:
            codec_id = AMFVideoEncoder_HEVC;
            break;
        default:
            break;
    }
    AMF_RETURN_IF_FALSE(ctx, codec_id != ((void*)0), AVERROR(EINVAL), "Codec %d is not supported\n", avctx->codec->id);

    if (ctx->hw_frames_ctx)
        pix_fmt = ((AVHWFramesContext*)ctx->hw_frames_ctx->data)->sw_format;
    else
        pix_fmt = avctx->pix_fmt;

    ctx->format = amf_av_to_amf_format(pix_fmt);
    AMF_RETURN_IF_FALSE(ctx, ctx->format != AMF_SURFACE_UNKNOWN, AVERROR(EINVAL),
                        "Format %s is not supported\n", av_get_pix_fmt_name(pix_fmt));

    res = ctx->factory->pVtbl->CreateComponent(ctx->factory, ctx->context, codec_id, &ctx->encoder);
    AMF_RETURN_IF_FALSE(ctx, res == AMF_OK, AVERROR_ENCODER_NOT_FOUND, "CreateComponent(%ls) failed with error %d\n", codec_id, res);

    return 0;
}
