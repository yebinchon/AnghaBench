#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {int* buf; int x_off; int y_off; int size; int* unpack_buffer; TYPE_1__* prev_frame; TYPE_15__* avctx; int /*<<< orphan*/  unpack_buffer_size; scalar_t__ palette; } ;
typedef  TYPE_2__ VmdVideoContext ;
struct TYPE_20__ {unsigned char** data; unsigned char* linesize; } ;
struct TYPE_19__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_17__ {unsigned char** data; int* linesize; } ;
struct TYPE_16__ {int width; int height; } ;
typedef  TYPE_3__ GetByteContext ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int*) ; 
 int PALETTE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,unsigned char*,unsigned char) ; 
 unsigned char FUNC4 (TYPE_3__*) ; 
 unsigned char FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int*,int) ; 
 int FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,unsigned char) ; 
 int FUNC10 (int /*<<< orphan*/ ,unsigned char,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,unsigned char) ; 
 unsigned char FUNC12 (int /*<<< orphan*/ ,unsigned char*,unsigned char,unsigned char,int) ; 

__attribute__((used)) static int FUNC13(VmdVideoContext *s, AVFrame *frame)
{
    int i;
    unsigned int *palette32;
    unsigned char r, g, b;

    GetByteContext gb;

    unsigned char meth;
    unsigned char *dp;   /* pointer to current frame */
    unsigned char *pp;   /* pointer to previous frame */
    unsigned char len;
    int ofs;

    int frame_x, frame_y;
    int frame_width, frame_height;

    frame_x = FUNC0(&s->buf[6]);
    frame_y = FUNC0(&s->buf[8]);
    frame_width = FUNC0(&s->buf[10]) - frame_x + 1;
    frame_height = FUNC0(&s->buf[12]) - frame_y + 1;

    if ((frame_width == s->avctx->width && frame_height == s->avctx->height) &&
        (frame_x || frame_y)) {

        s->x_off = frame_x;
        s->y_off = frame_y;
    }
    frame_x -= s->x_off;
    frame_y -= s->y_off;

    if (frame_x < 0 || frame_width < 0 ||
        frame_x >= s->avctx->width ||
        frame_width > s->avctx->width ||
        frame_x + frame_width > s->avctx->width) {
        FUNC1(s->avctx, AV_LOG_ERROR,
               "Invalid horizontal range %d-%d\n",
               frame_x, frame_width);
        return AVERROR_INVALIDDATA;
    }
    if (frame_y < 0 || frame_height < 0 ||
        frame_y >= s->avctx->height ||
        frame_height > s->avctx->height ||
        frame_y + frame_height > s->avctx->height) {
        FUNC1(s->avctx, AV_LOG_ERROR,
               "Invalid vertical range %d-%d\n",
               frame_y, frame_height);
        return AVERROR_INVALIDDATA;
    }

    /* if only a certain region will be updated, copy the entire previous
     * frame before the decode */
    if (s->prev_frame->data[0] &&
        (frame_x || frame_y || (frame_width != s->avctx->width) ||
        (frame_height != s->avctx->height))) {

        FUNC11(frame->data[0], s->prev_frame->data[0],
            s->avctx->height * frame->linesize[0]);
    }

    /* check if there is a new palette */
    FUNC7(&gb, s->buf + 16, s->size - 16);
    if (s->buf[15] & 0x02) {
        FUNC9(&gb, 2);
        palette32 = (unsigned int *)s->palette;
        if (FUNC5(&gb) >= PALETTE_COUNT * 3) {
            for (i = 0; i < PALETTE_COUNT; i++) {
                r = FUNC6(&gb) * 4;
                g = FUNC6(&gb) * 4;
                b = FUNC6(&gb) * 4;
                palette32[i] = 0xFFU << 24 | (r << 16) | (g << 8) | (b);
                palette32[i] |= palette32[i] >> 6 & 0x30303;
            }
        } else {
            FUNC1(s->avctx, AV_LOG_ERROR, "Incomplete palette\n");
            return AVERROR_INVALIDDATA;
        }
    }

    if (!s->size)
        return 0;

    /* originally UnpackFrame in VAG's code */
    if (FUNC5(&gb) < 1)
        return AVERROR_INVALIDDATA;
    meth = FUNC6(&gb);
    if (meth & 0x80) {
        int size;
        if (!s->unpack_buffer_size) {
            FUNC1(s->avctx, AV_LOG_ERROR,
                   "Trying to unpack LZ-compressed frame with no LZ buffer\n");
            return AVERROR_INVALIDDATA;
        }
        size = FUNC10(gb.buffer, FUNC5(&gb),
                         s->unpack_buffer, s->unpack_buffer_size);
        if (size < 0)
            return size;
        meth &= 0x7F;
        FUNC7(&gb, s->unpack_buffer, size);
    }

    dp = &frame->data[0][frame_y * frame->linesize[0] + frame_x];
    pp = &s->prev_frame->data[0][frame_y * s->prev_frame->linesize[0] + frame_x];
    switch (meth) {
    case 1:
        for (i = 0; i < frame_height; i++) {
            ofs = 0;
            do {
                len = FUNC4(&gb);
                if (len & 0x80) {
                    len = (len & 0x7F) + 1;
                    if (ofs + len > frame_width ||
                        FUNC5(&gb) < len)
                        return AVERROR_INVALIDDATA;
                    FUNC3(&gb, &dp[ofs], len);
                    ofs += len;
                } else {
                    /* interframe pixel copy */
                    if (ofs + len + 1 > frame_width || !s->prev_frame->data[0])
                        return AVERROR_INVALIDDATA;
                    FUNC11(&dp[ofs], &pp[ofs], len + 1);
                    ofs += len + 1;
                }
            } while (ofs < frame_width);
            if (ofs > frame_width) {
                FUNC1(s->avctx, AV_LOG_ERROR,
                       "offset > width (%d > %d)\n",
                       ofs, frame_width);
                return AVERROR_INVALIDDATA;
            }
            dp += frame->linesize[0];
            pp += s->prev_frame->linesize[0];
        }
        break;

    case 2:
        for (i = 0; i < frame_height; i++) {
            FUNC2(&gb, dp, frame_width);
            dp += frame->linesize[0];
            pp += s->prev_frame->linesize[0];
        }
        break;

    case 3:
        for (i = 0; i < frame_height; i++) {
            ofs = 0;
            do {
                len = FUNC4(&gb);
                if (len & 0x80) {
                    len = (len & 0x7F) + 1;
                    if (FUNC8(&gb) == 0xFF) {
                        int slen = len;
                        FUNC4(&gb);
                        len = FUNC12(gb.buffer, &dp[ofs],
                                         len, FUNC5(&gb),
                                         frame_width - ofs);
                        ofs += slen;
                        FUNC9(&gb, len);
                    } else {
                        if (ofs + len > frame_width ||
                            FUNC5(&gb) < len)
                            return AVERROR_INVALIDDATA;
                        FUNC2(&gb, &dp[ofs], len);
                        ofs += len;
                    }
                } else {
                    /* interframe pixel copy */
                    if (ofs + len + 1 > frame_width || !s->prev_frame->data[0])
                        return AVERROR_INVALIDDATA;
                    FUNC11(&dp[ofs], &pp[ofs], len + 1);
                    ofs += len + 1;
                }
            } while (ofs < frame_width);
            if (ofs > frame_width) {
                FUNC1(s->avctx, AV_LOG_ERROR,
                       "offset > width (%d > %d)\n",
                       ofs, frame_width);
                return AVERROR_INVALIDDATA;
            }
            dp += frame->linesize[0];
            pp += s->prev_frame->linesize[0];
        }
        break;
    }
    return 0;
}