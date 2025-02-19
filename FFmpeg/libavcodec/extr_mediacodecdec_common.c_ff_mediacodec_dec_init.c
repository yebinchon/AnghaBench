
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_23__ {TYPE_1__* hw_device_ctx; TYPE_4__* hwaccel_context; } ;
struct TYPE_22__ {scalar_t__ type; scalar_t__ hwctx; } ;
struct TYPE_21__ {scalar_t__ surface; } ;
struct TYPE_20__ {scalar_t__ surface; } ;
struct TYPE_19__ {int current_input_buffer; void* codec; scalar_t__ format; void* codec_name; void* surface; int serial; int hw_buffer_count; int refcount; TYPE_6__* avctx; } ;
struct TYPE_18__ {scalar_t__ data; } ;
typedef TYPE_2__ MediaCodecDecContext ;
typedef int FFAMediaFormat ;
typedef TYPE_3__ AVMediaCodecDeviceContext ;
typedef TYPE_4__ AVMediaCodecContext ;
typedef TYPE_5__ AVHWDeviceContext ;
typedef TYPE_6__ AVCodecContext ;


 int AVERROR_EXTERNAL ;
 scalar_t__ AV_HWDEVICE_TYPE_MEDIACODEC ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_WARNING ;


 int atomic_init (int *,int) ;
 int av_freep (char**) ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 void* ff_AMediaCodecList_getCodecNameByType (char const*,int,int ,TYPE_6__*) ;
 int ff_AMediaCodecProfile_getProfileFromAVCodecContext (TYPE_6__*) ;
 int ff_AMediaCodec_configure (void*,int *,void*,int *,int ) ;
 void* ff_AMediaCodec_createCodecByName (void*) ;
 scalar_t__ ff_AMediaCodec_getOutputFormat (void*) ;
 int ff_AMediaCodec_start (void*) ;
 char* ff_AMediaFormat_toString (int *) ;
 int ff_get_format (TYPE_6__*,int const*) ;
 int ff_mediacodec_dec_close (TYPE_6__*,TYPE_2__*) ;
 void* ff_mediacodec_surface_ref (scalar_t__,TYPE_6__*) ;
 int mediacodec_dec_parse_format (TYPE_6__*,TYPE_2__*) ;

int ff_mediacodec_dec_init(AVCodecContext *avctx, MediaCodecDecContext *s,
                           const char *mime, FFAMediaFormat *format)
{
    int ret = 0;
    int status;
    int profile;

    enum AVPixelFormat pix_fmt;
    static const enum AVPixelFormat pix_fmts[] = {
        129,
        128,
    };

    s->avctx = avctx;
    atomic_init(&s->refcount, 1);
    atomic_init(&s->hw_buffer_count, 0);
    atomic_init(&s->serial, 1);
    s->current_input_buffer = -1;

    pix_fmt = ff_get_format(avctx, pix_fmts);
    if (pix_fmt == 129) {
        AVMediaCodecContext *user_ctx = avctx->hwaccel_context;

        if (avctx->hw_device_ctx) {
            AVHWDeviceContext *device_ctx = (AVHWDeviceContext*)(avctx->hw_device_ctx->data);
            if (device_ctx->type == AV_HWDEVICE_TYPE_MEDIACODEC) {
                if (device_ctx->hwctx) {
                    AVMediaCodecDeviceContext *mediacodec_ctx = (AVMediaCodecDeviceContext *)device_ctx->hwctx;
                    s->surface = ff_mediacodec_surface_ref(mediacodec_ctx->surface, avctx);
                    av_log(avctx, AV_LOG_INFO, "Using surface %p\n", s->surface);
                }
            }
        }

        if (!s->surface && user_ctx && user_ctx->surface) {
            s->surface = ff_mediacodec_surface_ref(user_ctx->surface, avctx);
            av_log(avctx, AV_LOG_INFO, "Using surface %p\n", s->surface);
        }
    }

    profile = ff_AMediaCodecProfile_getProfileFromAVCodecContext(avctx);
    if (profile < 0) {
        av_log(avctx, AV_LOG_WARNING, "Unsupported or unknown profile\n");
    }

    s->codec_name = ff_AMediaCodecList_getCodecNameByType(mime, profile, 0, avctx);
    if (!s->codec_name) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    av_log(avctx, AV_LOG_DEBUG, "Found decoder %s\n", s->codec_name);
    s->codec = ff_AMediaCodec_createCodecByName(s->codec_name);
    if (!s->codec) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create media decoder for type %s and name %s\n", mime, s->codec_name);
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    status = ff_AMediaCodec_configure(s->codec, format, s->surface, ((void*)0), 0);
    if (status < 0) {
        char *desc = ff_AMediaFormat_toString(format);
        av_log(avctx, AV_LOG_ERROR,
            "Failed to configure codec %s (status = %d) with format %s\n",
            s->codec_name, status, desc);
        av_freep(&desc);

        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    status = ff_AMediaCodec_start(s->codec);
    if (status < 0) {
        char *desc = ff_AMediaFormat_toString(format);
        av_log(avctx, AV_LOG_ERROR,
            "Failed to start codec %s (status = %d) with format %s\n",
            s->codec_name, status, desc);
        av_freep(&desc);
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    s->format = ff_AMediaCodec_getOutputFormat(s->codec);
    if (s->format) {
        if ((ret = mediacodec_dec_parse_format(avctx, s)) < 0) {
            av_log(avctx, AV_LOG_ERROR,
                "Failed to configure context\n");
            goto fail;
        }
    }

    av_log(avctx, AV_LOG_DEBUG, "MediaCodec %p started successfully\n", s->codec);

    return 0;

fail:
    av_log(avctx, AV_LOG_ERROR, "MediaCodec %p failed to start\n", s->codec);
    ff_mediacodec_dec_close(avctx, s);
    return ret;
}
