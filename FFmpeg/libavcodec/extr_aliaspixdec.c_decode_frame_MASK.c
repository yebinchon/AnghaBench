#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_12__ {scalar_t__ pix_fmt; int width; int height; } ;
struct TYPE_11__ {int key_frame; int** data; int* linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_10__ {int size; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int ALIAS_HEADER_SIZE ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 scalar_t__ AV_PIX_FMT_BGR24 ; 
 scalar_t__ AV_PIX_FMT_GRAY8 ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_3__*,int,int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    AVFrame *f = data;
    GetByteContext gb;
    int width, height, ret, bits_pixel, pixel;
    uint8_t *out_buf;
    uint8_t count;
    int x, y;

    FUNC7(&gb, avpkt->data, avpkt->size);

    if (FUNC5(&gb) < ALIAS_HEADER_SIZE) {
        FUNC1(avctx, AV_LOG_ERROR, "Header too small %d.\n", avpkt->size);
        return AVERROR_INVALIDDATA;
    }

    width  = FUNC2(&gb);
    height = FUNC2(&gb);
    FUNC8(&gb, 4); // obsolete X, Y offset
    bits_pixel = FUNC2(&gb);

    if (bits_pixel == 24)
        avctx->pix_fmt = AV_PIX_FMT_BGR24;
    else if (bits_pixel == 8)
        avctx->pix_fmt = AV_PIX_FMT_GRAY8;
    else {
        FUNC1(avctx, AV_LOG_ERROR, "Invalid pixel format.\n");
        return AVERROR_INVALIDDATA;
    }

    ret = FUNC10(avctx, width, height);
    if (ret < 0)
        return ret;

    if (FUNC5(&gb) < width*height / 255)
        return AVERROR_INVALIDDATA;

    ret = FUNC9(avctx, f, 0);
    if (ret < 0)
        return ret;

    f->pict_type = AV_PICTURE_TYPE_I;
    f->key_frame = 1;

    x = 0;
    y = 1;
    out_buf = f->data[0];
    while (FUNC5(&gb) > 0) {
        int i;

        /* set buffer at the right position at every new line */
        if (x == avctx->width) {
            x = 0;
            out_buf = f->data[0] + f->linesize[0] * y++;
            if (y > avctx->height) {
                FUNC1(avctx, AV_LOG_ERROR,
                       "Ended frame decoding with %d bytes left.\n",
                       FUNC5(&gb));
                return AVERROR_INVALIDDATA;
            }
        }

        /* read packet and copy data */
        count = FUNC6(&gb);
        if (!count || x + count > avctx->width) {
            FUNC1(avctx, AV_LOG_ERROR, "Invalid run length %d.\n", count);
            return AVERROR_INVALIDDATA;
        }

        if (avctx->pix_fmt == AV_PIX_FMT_BGR24) {
            pixel = FUNC3(&gb);
            for (i = 0; i < count; i++) {
                FUNC0(out_buf, pixel);
                out_buf += 3;
            }
        } else { // AV_PIX_FMT_GRAY8
            pixel = FUNC4(&gb);
            for (i = 0; i < count; i++)
                *out_buf++ = pixel;
        }

        x += i;
    }

    if (x != width || y != height) {
        FUNC1(avctx, AV_LOG_ERROR, "Picture stopped at %d,%d.\n", x, y);
        return AVERROR_INVALIDDATA;
    }

    *got_frame = 1;
    return avpkt->size;
}