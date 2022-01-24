#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_13__ {int width; int height; int bits_per_raw_sample; int color_primaries; int color_trc; int colorspace; int /*<<< orphan*/  color_range; int /*<<< orphan*/  pix_fmt; scalar_t__ skip_alpha; } ;
struct TYPE_11__ {int /*<<< orphan*/  idct_permutation; } ;
struct TYPE_12__ {int frame_type; int alpha_info; int /*<<< orphan*/  qmat_chroma; TYPE_2__ prodsp; int /*<<< orphan*/  qmat_luma; TYPE_1__* frame; int /*<<< orphan*/  interlaced_scan; int /*<<< orphan*/  scan; int /*<<< orphan*/  progressive_scan; } ;
struct TYPE_10__ {int interlaced_frame; int top_field_first; } ;
typedef  TYPE_3__ ProresContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_MPEG ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV422P10 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV422P12 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV444P10 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV444P12 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUVA422P10 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUVA422P12 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUVA444P10 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUVA444P12 ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*,...) ; 
 int FUNC3 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static int FUNC6(ProresContext *ctx, const uint8_t *buf,
                               const int data_size, AVCodecContext *avctx)
{
    int hdr_size, width, height, flags;
    int version;
    const uint8_t *ptr;

    hdr_size = FUNC0(buf);
    FUNC2(avctx, "header size %d\n", hdr_size);
    if (hdr_size > data_size) {
        FUNC1(avctx, AV_LOG_ERROR, "error, wrong header size\n");
        return AVERROR_INVALIDDATA;
    }

    version = FUNC0(buf + 2);
    FUNC2(avctx, "%.4s version %d\n", buf+4, version);
    if (version > 1) {
        FUNC1(avctx, AV_LOG_ERROR, "unsupported version: %d\n", version);
        return AVERROR_PATCHWELCOME;
    }

    width  = FUNC0(buf + 8);
    height = FUNC0(buf + 10);

    if (width != avctx->width || height != avctx->height) {
        int ret;

        FUNC1(avctx, AV_LOG_WARNING, "picture resolution change: %dx%d -> %dx%d\n",
               avctx->width, avctx->height, width, height);
        if ((ret = FUNC3(avctx, width, height)) < 0)
            return ret;
    }

    ctx->frame_type = (buf[12] >> 2) & 3;
    ctx->alpha_info = buf[17] & 0xf;

    if (ctx->alpha_info > 2) {
        FUNC1(avctx, AV_LOG_ERROR, "Invalid alpha mode %d\n", ctx->alpha_info);
        return AVERROR_INVALIDDATA;
    }
    if (avctx->skip_alpha) ctx->alpha_info = 0;

    FUNC2(avctx, "frame type %d\n", ctx->frame_type);

    if (ctx->frame_type == 0) {
        ctx->scan = ctx->progressive_scan; // permuted
    } else {
        ctx->scan = ctx->interlaced_scan; // permuted
        ctx->frame->interlaced_frame = 1;
        ctx->frame->top_field_first = ctx->frame_type == 1;
    }

    if (ctx->alpha_info) {
        if (avctx->bits_per_raw_sample == 10) {
            avctx->pix_fmt = (buf[12] & 0xC0) == 0xC0 ? AV_PIX_FMT_YUVA444P10 : AV_PIX_FMT_YUVA422P10;
        } else { /* 12b */
            avctx->pix_fmt = (buf[12] & 0xC0) == 0xC0 ? AV_PIX_FMT_YUVA444P12 : AV_PIX_FMT_YUVA422P12;
        }
    } else {
        if (avctx->bits_per_raw_sample == 10) {
            avctx->pix_fmt = (buf[12] & 0xC0) == 0xC0 ? AV_PIX_FMT_YUV444P10 : AV_PIX_FMT_YUV422P10;
        } else { /* 12b */
            avctx->pix_fmt = (buf[12] & 0xC0) == 0xC0 ? AV_PIX_FMT_YUV444P12 : AV_PIX_FMT_YUV422P12;
        }
    }

    avctx->color_primaries = buf[14];
    avctx->color_trc       = buf[15];
    avctx->colorspace      = buf[16];
    avctx->color_range     = AVCOL_RANGE_MPEG;

    ptr   = buf + 20;
    flags = buf[19];
    FUNC2(avctx, "flags %x\n", flags);

    if (flags & 2) {
        if(buf + data_size - ptr < 64) {
            FUNC1(avctx, AV_LOG_ERROR, "Header truncated\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC5(ctx->qmat_luma, ctx->prodsp.idct_permutation, ptr);
        ptr += 64;
    } else {
        FUNC4(ctx->qmat_luma, 4, 64);
    }

    if (flags & 1) {
        if(buf + data_size - ptr < 64) {
            FUNC1(avctx, AV_LOG_ERROR, "Header truncated\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC5(ctx->qmat_chroma, ctx->prodsp.idct_permutation, ptr);
    } else {
        FUNC4(ctx->qmat_chroma, 4, 64);
    }

    return hdr_size;
}