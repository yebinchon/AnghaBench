#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_27__ {int width; int height; int coded_width; int coded_height; scalar_t__ pix_fmt; int /*<<< orphan*/  (* execute2 ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;int /*<<< orphan*/  thread_count; TYPE_2__* priv_data; } ;
struct TYPE_26__ {int** data; int palette_has_changed; int height; int width; int key_frame; int /*<<< orphan*/  pict_type; int /*<<< orphan*/ * linesize; } ;
struct TYPE_25__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_23__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_24__ {int tex_ratio; int bpp; scalar_t__ postproc; scalar_t__ paletted; int /*<<< orphan*/  slice_count; int /*<<< orphan*/  tex_data; scalar_t__ compressed; int /*<<< orphan*/  texdsp; TYPE_1__ gbc; } ;
typedef  TYPE_1__ GetByteContext ;
typedef  TYPE_2__ DDSContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 scalar_t__ DDS_NONE ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (char,char,char,char) ; 
 int TEXTURE_BLOCK_H ; 
 int TEXTURE_BLOCK_W ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int*,int) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  decompress_texture_thread ; 
 int FUNC13 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(AVCodecContext *avctx, void *data,
                      int *got_frame, AVPacket *avpkt)
{
    DDSContext *ctx = avctx->priv_data;
    GetByteContext *gbc = &ctx->gbc;
    AVFrame *frame = data;
    int mipmap;
    int ret;
    int width, height;

    FUNC15(&ctx->texdsp);
    FUNC11(gbc, avpkt->data, avpkt->size);

    if (FUNC9(gbc) < 128) {
        FUNC6(avctx, AV_LOG_ERROR, "Frame is too small (%d).\n",
               FUNC9(gbc));
        return AVERROR_INVALIDDATA;
    }

    if (FUNC10(gbc) != FUNC2('D', 'D', 'S', ' ') ||
        FUNC10(gbc) != 124) { // header size
        FUNC6(avctx, AV_LOG_ERROR, "Invalid DDS header.\n");
        return AVERROR_INVALIDDATA;
    }

    FUNC12(gbc, 4); // flags

    height = FUNC10(gbc);
    width  = FUNC10(gbc);
    ret = FUNC14(avctx, width, height);
    if (ret < 0) {
        FUNC6(avctx, AV_LOG_ERROR, "Invalid image size %dx%d.\n",
               avctx->width, avctx->height);
        return ret;
    }

    /* Since codec is based on 4x4 blocks, size is aligned to 4. */
    avctx->coded_width  = FUNC1(avctx->width,  TEXTURE_BLOCK_W);
    avctx->coded_height = FUNC1(avctx->height, TEXTURE_BLOCK_H);

    FUNC12(gbc, 4); // pitch
    FUNC12(gbc, 4); // depth
    mipmap = FUNC10(gbc);
    if (mipmap != 0)
        FUNC6(avctx, AV_LOG_VERBOSE, "Found %d mipmaps (ignored).\n", mipmap);

    /* Extract pixel format information, considering additional elements
     * in reserved1 and reserved2. */
    ret = FUNC16(avctx);
    if (ret < 0)
        return ret;

    ret = FUNC13(avctx, frame, 0);
    if (ret < 0)
        return ret;

    if (ctx->compressed) {
        int size = (avctx->coded_height / TEXTURE_BLOCK_H) *
                   (avctx->coded_width / TEXTURE_BLOCK_W) * ctx->tex_ratio;
        ctx->slice_count = FUNC3(avctx->thread_count, 1,
                                   avctx->coded_height / TEXTURE_BLOCK_H);

        if (FUNC9(gbc) < size) {
            FUNC6(avctx, AV_LOG_ERROR,
                   "Compressed Buffer is too small (%d < %d).\n",
                   FUNC9(gbc), size);
            return AVERROR_INVALIDDATA;
        }

        /* Use the decompress function on the texture, one block per thread. */
        ctx->tex_data = gbc->buffer;
        avctx->execute2(avctx, decompress_texture_thread, frame, NULL, ctx->slice_count);
    } else if (!ctx->paletted && ctx->bpp == 4 && avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        uint8_t *dst = frame->data[0];
        int x, y, i;

        /* Use the first 64 bytes as palette, then copy the rest. */
        FUNC7(gbc, frame->data[1], 16 * 4);
        for (i = 0; i < 16; i++) {
            FUNC0(frame->data[1] + i*4,
                    (frame->data[1][2+i*4]<<0)+
                    (frame->data[1][1+i*4]<<8)+
                    (frame->data[1][0+i*4]<<16)+
                    ((unsigned)frame->data[1][3+i*4]<<24)
            );
        }
        frame->palette_has_changed = 1;

        if (FUNC9(gbc) < frame->height * frame->width / 2) {
            FUNC6(avctx, AV_LOG_ERROR, "Buffer is too small (%d < %d).\n",
                   FUNC9(gbc), frame->height * frame->width / 2);
            return AVERROR_INVALIDDATA;
        }

        for (y = 0; y < frame->height; y++) {
            for (x = 0; x < frame->width; x += 2) {
                uint8_t val = FUNC8(gbc);
                dst[x    ] = val & 0xF;
                dst[x + 1] = val >> 4;
            }
            dst += frame->linesize[0];
        }
    } else {
        int linesize = FUNC5(avctx->pix_fmt, frame->width, 0);

        if (ctx->paletted) {
            int i;
            /* Use the first 1024 bytes as palette, then copy the rest. */
            FUNC7(gbc, frame->data[1], 256 * 4);
            for (i = 0; i < 256; i++)
                FUNC0(frame->data[1] + i*4,
                        (frame->data[1][2+i*4]<<0)+
                        (frame->data[1][1+i*4]<<8)+
                        (frame->data[1][0+i*4]<<16)+
                        ((unsigned)frame->data[1][3+i*4]<<24)
                );

            frame->palette_has_changed = 1;
        }

        if (FUNC9(gbc) < frame->height * linesize) {
            FUNC6(avctx, AV_LOG_ERROR, "Buffer is too small (%d < %d).\n",
                   FUNC9(gbc), frame->height * linesize);
            return AVERROR_INVALIDDATA;
        }

        FUNC4(frame->data[0], frame->linesize[0],
                            gbc->buffer, linesize,
                            linesize, frame->height);
    }

    /* Run any post processing here if needed. */
    if (ctx->postproc != DDS_NONE)
        FUNC17(avctx, frame);

    /* Frame is ready to be output. */
    frame->pict_type = AV_PICTURE_TYPE_I;
    frame->key_frame = 1;
    *got_frame = 1;

    return avpkt->size;
}