#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vpx_enc_frame_flags_t ;
struct vpx_image {int /*<<< orphan*/  range; int /*<<< orphan*/ * stride; int /*<<< orphan*/ * planes; } ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {int /*<<< orphan*/  sz; int /*<<< orphan*/  buf; } ;
struct TYPE_17__ {TYPE_1__ twopass_stats; int /*<<< orphan*/  deadline; int /*<<< orphan*/  encoder_alpha; scalar_t__ is_alpha; int /*<<< orphan*/  encoder; struct vpx_image rawimg_alpha; struct vpx_image rawimg; } ;
typedef  TYPE_2__ VPxContext ;
struct TYPE_20__ {scalar_t__ codec_id; int flags; int /*<<< orphan*/  stats_out; int /*<<< orphan*/  ticks_per_frame; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int /*<<< orphan*/  value; } ;
struct TYPE_18__ {int color_range; scalar_t__ pict_type; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__ metadata; int /*<<< orphan*/  pts; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVFrameSideData ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVDictionaryEntry ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
#define  AVCOL_RANGE_JPEG 129 
#define  AVCOL_RANGE_MPEG 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int AV_CODEC_FLAG_PASS1 ; 
 scalar_t__ AV_CODEC_ID_VP8 ; 
 int /*<<< orphan*/  AV_FRAME_DATA_REGIONS_OF_INTEREST ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PICTURE_TYPE_I ; 
 scalar_t__ CONFIG_LIBVPX_VP8_ENCODER ; 
 int /*<<< orphan*/  ENOMEM ; 
 int VPX_CODEC_OK ; 
 int /*<<< orphan*/  VPX_CR_FULL_RANGE ; 
 int /*<<< orphan*/  VPX_CR_STUDIO_RANGE ; 
 int /*<<< orphan*/  VPX_EFLAG_FORCE_KF ; 
 size_t VPX_PLANE_U ; 
 size_t VPX_PLANE_V ; 
 size_t VPX_PLANE_Y ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct vpx_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx, AVPacket *pkt,
                      const AVFrame *frame, int *got_packet)
{
    VPxContext *ctx = avctx->priv_data;
    struct vpx_image *rawimg = NULL;
    struct vpx_image *rawimg_alpha = NULL;
    int64_t timestamp = 0;
    int res, coded_size;
    vpx_enc_frame_flags_t flags = 0;

    if (frame) {
        const AVFrameSideData *sd = FUNC4(frame, AV_FRAME_DATA_REGIONS_OF_INTEREST);
        rawimg                      = &ctx->rawimg;
        rawimg->planes[VPX_PLANE_Y] = frame->data[0];
        rawimg->planes[VPX_PLANE_U] = frame->data[1];
        rawimg->planes[VPX_PLANE_V] = frame->data[2];
        rawimg->stride[VPX_PLANE_Y] = frame->linesize[0];
        rawimg->stride[VPX_PLANE_U] = frame->linesize[1];
        rawimg->stride[VPX_PLANE_V] = frame->linesize[2];
        if (ctx->is_alpha) {
            rawimg_alpha = &ctx->rawimg_alpha;
            res = FUNC9(avctx, frame->width, frame->height);
            if (res < 0)
                return res;
            rawimg_alpha->planes[VPX_PLANE_Y] = frame->data[3];
            rawimg_alpha->stride[VPX_PLANE_Y] = frame->linesize[3];
        }
        timestamp                   = frame->pts;
#if VPX_IMAGE_ABI_VERSION >= 4
        switch (frame->color_range) {
        case AVCOL_RANGE_MPEG:
            rawimg->range = VPX_CR_STUDIO_RANGE;
            break;
        case AVCOL_RANGE_JPEG:
            rawimg->range = VPX_CR_FULL_RANGE;
            break;
        }
#endif
        if (frame->pict_type == AV_PICTURE_TYPE_I)
            flags |= VPX_EFLAG_FORCE_KF;
        if (CONFIG_LIBVPX_VP8_ENCODER && avctx->codec_id == AV_CODEC_ID_VP8 && frame->metadata) {
            AVDictionaryEntry* en = FUNC3(frame->metadata, "vp8-flags", NULL, 0);
            if (en) {
                flags |= FUNC10(en->value, NULL, 10);
            }
        }

        if (sd) {
            if (avctx->codec_id == AV_CODEC_ID_VP8) {
                FUNC11(avctx, frame->width, frame->height, sd);
            } else {
                FUNC12(avctx, frame->width, frame->height, sd);
            }
        }
    }

    res = FUNC13(&ctx->encoder, rawimg, timestamp,
                           avctx->ticks_per_frame, flags, ctx->deadline);
    if (res != VPX_CODEC_OK) {
        FUNC7(avctx, "Error encoding frame");
        return AVERROR_INVALIDDATA;
    }

    if (ctx->is_alpha) {
        res = FUNC13(&ctx->encoder_alpha, rawimg_alpha, timestamp,
                               avctx->ticks_per_frame, flags, ctx->deadline);
        if (res != VPX_CODEC_OK) {
            FUNC7(avctx, "Error encoding alpha frame");
            return AVERROR_INVALIDDATA;
        }
    }

    coded_size = FUNC8(avctx, pkt);

    if (!frame && avctx->flags & AV_CODEC_FLAG_PASS1) {
        unsigned int b64_size = FUNC1(ctx->twopass_stats.sz);

        avctx->stats_out = FUNC6(b64_size);
        if (!avctx->stats_out) {
            FUNC5(avctx, AV_LOG_ERROR, "Stat buffer alloc (%d bytes) failed\n",
                   b64_size);
            return FUNC0(ENOMEM);
        }
        FUNC2(avctx->stats_out, b64_size, ctx->twopass_stats.buf,
                         ctx->twopass_stats.sz);
    }

    *got_packet = !!coded_size;
    return 0;
}