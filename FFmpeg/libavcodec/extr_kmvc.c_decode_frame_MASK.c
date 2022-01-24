#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int const uint8_t ;
struct TYPE_16__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int key_frame; int palette_has_changed; int const** data; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int* pal; int palsize; int const* cur; int const* prev; int const* frm0; int const* frm1; int /*<<< orphan*/  g; scalar_t__ setpal; } ;
typedef  TYPE_1__ KmvcContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int KMVC_KEYFRAME ; 
 int KMVC_METHOD ; 
 int KMVC_PALETTE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,int) ; 
 int const* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__* const,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__* const,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(AVCodecContext * avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    KmvcContext *const ctx = avctx->priv_data;
    AVFrame *frame = data;
    uint8_t *out, *src;
    int i, ret;
    int header;
    int blocksize;
    int pal_size;
    const uint8_t *pal = FUNC1(avpkt, AV_PKT_DATA_PALETTE, &pal_size);

    FUNC4(&ctx->g, avpkt->data, avpkt->size);

    if ((ret = FUNC8(avctx, frame, 0)) < 0)
        return ret;

    header = FUNC3(&ctx->g);

    /* blocksize 127 is really palette change event */
    if (FUNC5(&ctx->g) == 127) {
        FUNC7(&ctx->g, 3);
        for (i = 0; i < 127; i++) {
            ctx->pal[i + (header & 0x81)] = 0xFFU << 24 | FUNC2(&ctx->g);
            FUNC7(&ctx->g, 1);
        }
        FUNC6(&ctx->g, -127 * 4 - 3, SEEK_CUR);
    }

    if (header & KMVC_KEYFRAME) {
        frame->key_frame = 1;
        frame->pict_type = AV_PICTURE_TYPE_I;
    } else {
        frame->key_frame = 0;
        frame->pict_type = AV_PICTURE_TYPE_P;
    }

    if (header & KMVC_PALETTE) {
        frame->palette_has_changed = 1;
        // palette starts from index 1 and has 127 entries
        for (i = 1; i <= ctx->palsize; i++) {
            ctx->pal[i] = 0xFFU << 24 | FUNC2(&ctx->g);
        }
    }

    if (pal && pal_size == AVPALETTE_SIZE) {
        frame->palette_has_changed = 1;
        FUNC11(ctx->pal, pal, AVPALETTE_SIZE);
    } else if (pal) {
        FUNC0(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", pal_size);
    }

    if (ctx->setpal) {
        ctx->setpal = 0;
        frame->palette_has_changed = 1;
    }

    /* make the palette available on the way out */
    FUNC11(frame->data[1], ctx->pal, 1024);

    blocksize = FUNC3(&ctx->g);

    if (blocksize != 8 && blocksize != 127) {
        FUNC0(avctx, AV_LOG_ERROR, "Block size = %i\n", blocksize);
        return AVERROR_INVALIDDATA;
    }
    FUNC12(ctx->cur, 0, 320 * 200);
    switch (header & KMVC_METHOD) {
    case 0:
    case 1: // used in palette changed event
        FUNC11(ctx->cur, ctx->prev, 320 * 200);
        break;
    case 3:
        FUNC10(ctx, avctx->width, avctx->height);
        break;
    case 4:
        FUNC9(ctx, avctx->width, avctx->height);
        break;
    default:
        FUNC0(avctx, AV_LOG_ERROR, "Unknown compression method %i\n", header & KMVC_METHOD);
        return AVERROR_INVALIDDATA;
    }

    out = frame->data[0];
    src = ctx->cur;
    for (i = 0; i < avctx->height; i++) {
        FUNC11(out, src, avctx->width);
        src += 320;
        out += frame->linesize[0];
    }

    /* flip buffers */
    if (ctx->cur == ctx->frm0) {
        ctx->cur = ctx->frm1;
        ctx->prev = ctx->frm0;
    } else {
        ctx->cur = ctx->frm0;
        ctx->prev = ctx->frm1;
    }

    *got_frame = 1;

    /* always report that the buffer was completely consumed */
    return avpkt->size;
}