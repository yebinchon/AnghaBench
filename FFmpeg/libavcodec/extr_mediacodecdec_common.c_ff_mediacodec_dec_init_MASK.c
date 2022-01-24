#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_23__ {TYPE_1__* hw_device_ctx; TYPE_4__* hwaccel_context; } ;
struct TYPE_22__ {scalar_t__ type; scalar_t__ hwctx; } ;
struct TYPE_21__ {scalar_t__ surface; } ;
struct TYPE_20__ {scalar_t__ surface; } ;
struct TYPE_19__ {int current_input_buffer; void* codec; scalar_t__ format; void* codec_name; void* surface; int /*<<< orphan*/  serial; int /*<<< orphan*/  hw_buffer_count; int /*<<< orphan*/  refcount; TYPE_6__* avctx; } ;
struct TYPE_18__ {scalar_t__ data; } ;
typedef  TYPE_2__ MediaCodecDecContext ;
typedef  int /*<<< orphan*/  FFAMediaFormat ;
typedef  TYPE_3__ AVMediaCodecDeviceContext ;
typedef  TYPE_4__ AVMediaCodecContext ;
typedef  TYPE_5__ AVHWDeviceContext ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 scalar_t__ AV_HWDEVICE_TYPE_MEDIACODEC ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_PIX_FMT_MEDIACODEC 129 
#define  AV_PIX_FMT_NONE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC3 (char const*,int,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*) ; 
 int FUNC5 (void*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 int FUNC8 (void*) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_6__*,int const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_2__*) ; 
 void* FUNC12 (scalar_t__,TYPE_6__*) ; 
 int FUNC13 (TYPE_6__*,TYPE_2__*) ; 

int FUNC14(AVCodecContext *avctx, MediaCodecDecContext *s,
                           const char *mime, FFAMediaFormat *format)
{
    int ret = 0;
    int status;
    int profile;

    enum AVPixelFormat pix_fmt;
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_MEDIACODEC,
        AV_PIX_FMT_NONE,
    };

    s->avctx = avctx;
    FUNC0(&s->refcount, 1);
    FUNC0(&s->hw_buffer_count, 0);
    FUNC0(&s->serial, 1);
    s->current_input_buffer = -1;

    pix_fmt = FUNC10(avctx, pix_fmts);
    if (pix_fmt == AV_PIX_FMT_MEDIACODEC) {
        AVMediaCodecContext *user_ctx = avctx->hwaccel_context;

        if (avctx->hw_device_ctx) {
            AVHWDeviceContext *device_ctx = (AVHWDeviceContext*)(avctx->hw_device_ctx->data);
            if (device_ctx->type == AV_HWDEVICE_TYPE_MEDIACODEC) {
                if (device_ctx->hwctx) {
                    AVMediaCodecDeviceContext *mediacodec_ctx = (AVMediaCodecDeviceContext *)device_ctx->hwctx;
                    s->surface = FUNC12(mediacodec_ctx->surface, avctx);
                    FUNC2(avctx, AV_LOG_INFO, "Using surface %p\n", s->surface);
                }
            }
        }

        if (!s->surface && user_ctx && user_ctx->surface) {
            s->surface = FUNC12(user_ctx->surface, avctx);
            FUNC2(avctx, AV_LOG_INFO, "Using surface %p\n", s->surface);
        }
    }

    profile = FUNC4(avctx);
    if (profile < 0) {
        FUNC2(avctx, AV_LOG_WARNING, "Unsupported or unknown profile\n");
    }

    s->codec_name = FUNC3(mime, profile, 0, avctx);
    if (!s->codec_name) {
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    FUNC2(avctx, AV_LOG_DEBUG, "Found decoder %s\n", s->codec_name);
    s->codec = FUNC6(s->codec_name);
    if (!s->codec) {
        FUNC2(avctx, AV_LOG_ERROR, "Failed to create media decoder for type %s and name %s\n", mime, s->codec_name);
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    status = FUNC5(s->codec, format, s->surface, NULL, 0);
    if (status < 0) {
        char *desc = FUNC9(format);
        FUNC2(avctx, AV_LOG_ERROR,
            "Failed to configure codec %s (status = %d) with format %s\n",
            s->codec_name, status, desc);
        FUNC1(&desc);

        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    status = FUNC8(s->codec);
    if (status < 0) {
        char *desc = FUNC9(format);
        FUNC2(avctx, AV_LOG_ERROR,
            "Failed to start codec %s (status = %d) with format %s\n",
            s->codec_name, status, desc);
        FUNC1(&desc);
        ret = AVERROR_EXTERNAL;
        goto fail;
    }

    s->format = FUNC7(s->codec);
    if (s->format) {
        if ((ret = FUNC13(avctx, s)) < 0) {
            FUNC2(avctx, AV_LOG_ERROR,
                "Failed to configure context\n");
            goto fail;
        }
    }

    FUNC2(avctx, AV_LOG_DEBUG, "MediaCodec %p started successfully\n", s->codec);

    return 0;

fail:
    FUNC2(avctx, AV_LOG_ERROR, "MediaCodec %p failed to start\n", s->codec);
    FUNC11(avctx, s);
    return ret;
}