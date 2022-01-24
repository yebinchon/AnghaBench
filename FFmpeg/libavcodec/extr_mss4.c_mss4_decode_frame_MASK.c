#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_14__ {int quality; TYPE_10__* pic; int /*<<< orphan*/  dc_cache; int /*<<< orphan*/  prev_vec; int /*<<< orphan*/ * quant_mat; } ;
struct TYPE_13__ {int key_frame; int* linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  pict_type; } ;
typedef  TYPE_1__ MSS4Context ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
#define  DCT_BLOCK 130 
 int FUNC0 (int,int) ; 
 int HEADER_SIZE ; 
#define  IMAGE_BLOCK 129 
 int INTRA_FRAME ; 
#define  SKIP_BLOCK 128 
 int SKIP_FRAME ; 
 int FUNC1 (void*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC10 (TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, void *data, int *got_frame,
                             AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MSS4Context *c = avctx->priv_data;
    GetBitContext gb;
    GetByteContext bc;
    uint8_t *dst[3];
    int width, height, quality, frame_type;
    int x, y, i, mb_width, mb_height, blk_type;
    int ret;

    if (buf_size < HEADER_SIZE) {
        FUNC2(avctx, AV_LOG_ERROR,
               "Frame should have at least %d bytes, got %d instead\n",
               HEADER_SIZE, buf_size);
        return AVERROR_INVALIDDATA;
    }

    FUNC6(&bc, buf, buf_size);
    width      = FUNC3(&bc);
    height     = FUNC3(&bc);
    FUNC7(&bc, 2);
    quality    = FUNC4(&bc);
    frame_type = FUNC4(&bc);

    if (width > avctx->width ||
        height != avctx->height) {
        FUNC2(avctx, AV_LOG_ERROR, "Invalid frame dimensions %dx%d\n",
               width, height);
        return AVERROR_INVALIDDATA;
    }
    if (quality < 1 || quality > 100) {
        FUNC2(avctx, AV_LOG_ERROR, "Invalid quality setting %d\n", quality);
        return AVERROR_INVALIDDATA;
    }
    if ((frame_type & ~3) || frame_type == 3) {
        FUNC2(avctx, AV_LOG_ERROR, "Invalid frame type %d\n", frame_type);
        return AVERROR_INVALIDDATA;
    }

    if (frame_type != SKIP_FRAME && !FUNC5(&bc)) {
        FUNC2(avctx, AV_LOG_ERROR,
               "Empty frame found but it is not a skip frame.\n");
        return AVERROR_INVALIDDATA;
    }
    mb_width  = FUNC0(width,  16) >> 4;
    mb_height = FUNC0(height, 16) >> 4;

    if (frame_type != SKIP_FRAME && 8*buf_size < 8*HEADER_SIZE + mb_width*mb_height)
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC10(avctx, c->pic, 0)) < 0)
        return ret;
    c->pic->key_frame = (frame_type == INTRA_FRAME);
    c->pic->pict_type = (frame_type == INTRA_FRAME) ? AV_PICTURE_TYPE_I
                                                   : AV_PICTURE_TYPE_P;
    if (frame_type == SKIP_FRAME) {
        *got_frame      = 1;
        if ((ret = FUNC1(data, c->pic)) < 0)
            return ret;

        return buf_size;
    }

    if (c->quality != quality) {
        c->quality = quality;
        for (i = 0; i < 2; i++)
            FUNC9(c->quant_mat[i], quality, !i);
    }

    if ((ret = FUNC11(&gb, buf + HEADER_SIZE, buf_size - HEADER_SIZE)) < 0)
        return ret;
    dst[0] = c->pic->data[0];
    dst[1] = c->pic->data[1];
    dst[2] = c->pic->data[2];

    FUNC12(c->prev_vec, 0, sizeof(c->prev_vec));
    for (y = 0; y < mb_height; y++) {
        FUNC12(c->dc_cache, 0, sizeof(c->dc_cache));
        for (x = 0; x < mb_width; x++) {
            blk_type = FUNC8(&gb);
            switch (blk_type) {
            case DCT_BLOCK:
                if (FUNC13(c, &gb, dst, x, y) < 0) {
                    FUNC2(avctx, AV_LOG_ERROR,
                           "Error decoding DCT block %d,%d\n",
                           x, y);
                    return AVERROR_INVALIDDATA;
                }
                break;
            case IMAGE_BLOCK:
                if (FUNC14(c, &gb, dst, x, y) < 0) {
                    FUNC2(avctx, AV_LOG_ERROR,
                           "Error decoding VQ block %d,%d\n",
                           x, y);
                    return AVERROR_INVALIDDATA;
                }
                break;
            case SKIP_BLOCK:
                if (frame_type == INTRA_FRAME) {
                    FUNC2(avctx, AV_LOG_ERROR, "Skip block in intra frame\n");
                    return AVERROR_INVALIDDATA;
                }
                break;
            }
            if (blk_type != DCT_BLOCK)
                FUNC15(c, x);
        }
        dst[0] += c->pic->linesize[0] * 16;
        dst[1] += c->pic->linesize[1] * 16;
        dst[2] += c->pic->linesize[2] * 16;
    }

    if ((ret = FUNC1(data, c->pic)) < 0)
        return ret;

    *got_frame      = 1;

    return buf_size;
}