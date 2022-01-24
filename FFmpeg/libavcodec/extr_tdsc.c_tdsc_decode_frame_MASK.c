#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uLongf ;
struct TYPE_17__ {int width; scalar_t__ height; TYPE_1__* priv_data; } ;
struct TYPE_16__ {int key_frame; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_14__ {int width; scalar_t__ height; int deflatelen; int /*<<< orphan*/  refframe; int /*<<< orphan*/  gbc; int /*<<< orphan*/  deflatebuffer; } ;
typedef  TYPE_1__ TDSCContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int FUNC0 (char,char,char,char) ; 
 int TDSF_HEADER_SIZE ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_4__*) ; 
 int FUNC11 (TYPE_4__*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(AVCodecContext *avctx, void *data,
                             int *got_frame, AVPacket *avpkt)
{
    TDSCContext *ctx = avctx->priv_data;
    AVFrame *frame = data;
    int ret, tag_header, keyframe = 0;
    uLongf dlen;

    /* Resize deflate buffer on resolution change */
    if (ctx->width != avctx->width || ctx->height != avctx->height) {
        ctx->deflatelen = avctx->width * avctx->height * (3 + 1);
        ret = FUNC3(&ctx->deflatebuffer, ctx->deflatelen);
        if (ret < 0)
            return ret;
    }
    dlen = ctx->deflatelen;

    /* Frames are deflated, need to inflate them first */
    ret = FUNC12(ctx->deflatebuffer, &dlen, avpkt->data, avpkt->size);
    if (ret) {
        FUNC2(avctx, AV_LOG_ERROR, "Deflate error %d.\n", ret);
        return AVERROR_UNKNOWN;
    }

    FUNC6(&ctx->gbc, ctx->deflatebuffer, dlen);

    /* Check for tag and for size info */
    if (FUNC4(&ctx->gbc) < 4 + 4) {
        FUNC2(avctx, AV_LOG_ERROR, "Frame is too small.\n");
        return AVERROR_INVALIDDATA;
    }

    /* Read tag */
    tag_header = FUNC5(&ctx->gbc);

    if (tag_header == FUNC0('T','D','S','F')) {
        int number_tiles;
        if (FUNC4(&ctx->gbc) < TDSF_HEADER_SIZE) {
            FUNC2(avctx, AV_LOG_ERROR, "TDSF tag is too small.\n");
            return AVERROR_INVALIDDATA;
        }
        /* First 4 bytes here are the number of GEPJ/WAR tiles in this frame */
        number_tiles = FUNC5(&ctx->gbc);

        FUNC7(&ctx->gbc, 4); // internal timestamp maybe?
        keyframe = FUNC5(&ctx->gbc) == 0x30;

        ret = FUNC11(avctx, number_tiles);
        if (ret < 0)
            return ret;

        /* Check if there is anything else we are able to parse */
        if (FUNC4(&ctx->gbc) >= 4 + 4)
            tag_header = FUNC5(&ctx->gbc);
    }

    /* This tag can be after a TDSF block or on its own frame */
    if (tag_header == FUNC0('D','T','S','M')) {
        /* First 4 bytes here are the total size in bytes for this frame */
        int tag_size = FUNC5(&ctx->gbc);

        if (FUNC4(&ctx->gbc) < tag_size) {
            FUNC2(avctx, AV_LOG_ERROR, "DTSM tag is too small.\n");
            return AVERROR_INVALIDDATA;
        }

        ret = FUNC10(avctx);
        if (ret < 0)
            return ret;
    }

    /* Get the output frame and copy the reference frame */
    ret = FUNC8(avctx, frame, 0);
    if (ret < 0)
        return ret;

    ret = FUNC1(frame, ctx->refframe);
    if (ret < 0)
        return ret;

    /* Paint the cursor on the output frame */
    FUNC9(avctx, frame->data[0], frame->linesize[0]);

    /* Frame is ready to be output */
    if (keyframe) {
        frame->pict_type = AV_PICTURE_TYPE_I;
        frame->key_frame = 1;
    } else {
        frame->pict_type = AV_PICTURE_TYPE_P;
    }
    *got_frame = 1;

    return avpkt->size;
}