#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_16__ {TYPE_3__* pVtbl; } ;
struct TYPE_15__ {int pix_fmt; TYPE_1__* codec; TYPE_4__* priv_data; } ;
struct TYPE_14__ {int sw_format; } ;
struct TYPE_13__ {scalar_t__ format; int /*<<< orphan*/  encoder; int /*<<< orphan*/  context; TYPE_7__* factory; TYPE_2__* hw_frames_ctx; } ;
struct TYPE_12__ {scalar_t__ (* CreateComponent ) (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {scalar_t__ data; } ;
struct TYPE_10__ {int id; } ;
typedef  TYPE_4__ AmfContext ;
typedef  TYPE_5__ AVHWFramesContext ;
typedef  TYPE_6__ AVCodecContext ;
typedef  scalar_t__ AMF_RESULT ;

/* Variables and functions */
 int /*<<< orphan*/ * AMFVideoEncoderVCE_AVC ; 
 int /*<<< orphan*/ * AMFVideoEncoder_HEVC ; 
 scalar_t__ AMF_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int,int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ AMF_SURFACE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVERROR_ENCODER_NOT_FOUND ; 
#define  AV_CODEC_ID_H264 129 
#define  AV_CODEC_ID_HEVC 128 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx)
{
    AmfContext        *ctx = avctx->priv_data;
    const wchar_t     *codec_id = NULL;
    AMF_RESULT         res;
    enum AVPixelFormat pix_fmt;

    switch (avctx->codec->id) {
        case AV_CODEC_ID_H264:
            codec_id = AMFVideoEncoderVCE_AVC;
            break;
        case AV_CODEC_ID_HEVC:
            codec_id = AMFVideoEncoder_HEVC;
            break;
        default:
            break;
    }
    FUNC0(ctx, codec_id != NULL, FUNC1(EINVAL), "Codec %d is not supported\n", avctx->codec->id);

    if (ctx->hw_frames_ctx)
        pix_fmt = ((AVHWFramesContext*)ctx->hw_frames_ctx->data)->sw_format;
    else
        pix_fmt = avctx->pix_fmt;

    ctx->format = FUNC2(pix_fmt);
    FUNC0(ctx, ctx->format != AMF_SURFACE_UNKNOWN, FUNC1(EINVAL),
                        "Format %s is not supported\n", FUNC3(pix_fmt));

    res = ctx->factory->pVtbl->CreateComponent(ctx->factory, ctx->context, codec_id, &ctx->encoder);
    FUNC0(ctx, res == AMF_OK, AVERROR_ENCODER_NOT_FOUND, "CreateComponent(%ls) failed with error %d\n", codec_id, res);

    return 0;
}