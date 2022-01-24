#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {unsigned int width; unsigned int height; TYPE_3__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int bpp; TYPE_2__* frame2; int /*<<< orphan*/ * delta; int /*<<< orphan*/  delta_size; TYPE_1__* frame1; int /*<<< orphan*/  gb; } ;
struct TYPE_12__ {int* linesize; int /*<<< orphan*/ ** data; } ;
struct TYPE_11__ {int* linesize; int /*<<< orphan*/ ** data; } ;
typedef  TYPE_3__ RASCContext ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,char*,unsigned int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_5__*,TYPE_4__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx,
                       AVPacket *avpkt, unsigned size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    GetByteContext mc;
    unsigned pos, compression, nb_moves;
    unsigned uncompressed_size;
    int ret;

    pos = FUNC8(gb);
    FUNC7(gb, 8);
    nb_moves = FUNC5(gb);
    FUNC7(gb, 8);
    compression = FUNC5(gb);

    if (nb_moves > INT32_MAX / 16 || nb_moves > avctx->width * avctx->height)
        return AVERROR_INVALIDDATA;

    uncompressed_size = 16 * nb_moves;

    if (compression == 1) {
        ret = FUNC9(avctx, avpkt,
                          size - (FUNC8(gb) - pos),
                          uncompressed_size);
        if (ret < 0)
            return ret;
        FUNC6(&mc, s->delta, uncompressed_size);
    } else if (compression == 0) {
        FUNC6(&mc, avpkt->data + FUNC8(gb),
                         FUNC3(gb));
    } else if (compression == 2) {
        FUNC2(avctx, "compression %d", compression);
        return AVERROR_PATCHWELCOME;
    } else {
        return AVERROR_INVALIDDATA;
    }

    if (FUNC3(&mc) < uncompressed_size)
        return AVERROR_INVALIDDATA;

    for (int i = 0; i < nb_moves; i++) {
        int type, start_x, start_y, end_x, end_y, mov_x, mov_y;
        uint8_t *e2, *b1, *b2;
        int w, h;

        type = FUNC4(&mc);
        start_x = FUNC4(&mc);
        start_y = FUNC4(&mc);
        end_x = FUNC4(&mc);
        end_y = FUNC4(&mc);
        mov_x = FUNC4(&mc);
        mov_y = FUNC4(&mc);
        FUNC7(&mc, 2);

        if (start_x >= avctx->width || start_y >= avctx->height ||
            end_x >= avctx->width || end_y >= avctx->height ||
            mov_x >= avctx->width || mov_y >= avctx->height) {
            continue;
        }

        if (start_x >= end_x || start_y >= end_y)
            continue;

        w = end_x - start_x;
        h = end_y - start_y;

        if (mov_x + w > avctx->width || mov_y + h > avctx->height)
            continue;

        if (!s->frame2->data[0] || !s->frame1->data[0])
            return AVERROR_INVALIDDATA;

        b1 = s->frame1->data[0] + s->frame1->linesize[0] * (start_y + h - 1) + start_x * s->bpp;
        b2 = s->frame2->data[0] + s->frame2->linesize[0] * (start_y + h - 1) + start_x * s->bpp;
        e2 = s->frame2->data[0] + s->frame2->linesize[0] * (mov_y + h - 1) + mov_x * s->bpp;

        if (type == 2) {
            for (int j = 0; j < h; j++) {
                FUNC10(b1, b2, w * s->bpp);
                b1 -= s->frame1->linesize[0];
                b2 -= s->frame2->linesize[0];
            }
        } else if (type == 1) {
            for (int j = 0; j < h; j++) {
                FUNC11(b2, 0, w * s->bpp);
                b2 -= s->frame2->linesize[0];
            }
        } else if (type == 0) {
            uint8_t *buffer;

            FUNC1(&s->delta, &s->delta_size, w * h * s->bpp);
            buffer = s->delta;
            if (!buffer)
                return FUNC0(ENOMEM);

            for (int j = 0; j < h; j++) {
                FUNC10(buffer + j * w * s->bpp, e2, w * s->bpp);
                e2 -= s->frame2->linesize[0];
            }

            for (int j = 0; j < h; j++) {
                FUNC10(b2, buffer + j * w * s->bpp, w * s->bpp);
                b2 -= s->frame2->linesize[0];
            }
        } else {
            return AVERROR_INVALIDDATA;
        }
    }

    FUNC7(gb, size - (FUNC8(gb) - pos));

    return 0;
}