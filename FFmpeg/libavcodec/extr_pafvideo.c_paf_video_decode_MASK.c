#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* int8_t ;
typedef  int int64_t ;
struct TYPE_14__ {int** data; int key_frame; int palette_has_changed; int /*<<< orphan*/ * linesize; int /*<<< orphan*/  pict_type; } ;
struct TYPE_13__ {scalar_t__ discard_damaged_percentage; TYPE_1__* priv_data; } ;
struct TYPE_12__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int video_size; size_t current_frame; int* dirty; int** frame; int frame_size; TYPE_7__* pic; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ PAFVideoDecContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_P ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 void* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (TYPE_3__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int*,void*,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, void *data,
                            int *got_frame, AVPacket *pkt)
{
    PAFVideoDecContext *c = avctx->priv_data;
    uint8_t code, *dst, *end;
    int i, frame, ret;

    if (pkt->size < 2)
        return AVERROR_INVALIDDATA;

    FUNC10(&c->gb, pkt->data, pkt->size);

    code = FUNC7(&c->gb);
    if ((code & 0xF) > 4 || (code & 0xF) == 3) {
        FUNC4(avctx, "unknown/invalid code");
        return AVERROR_INVALIDDATA;
    }

    if ((code & 0xF) == 0 &&
        c->video_size / 32 - (int64_t)FUNC8(&c->gb) > c->video_size / 32 * (int64_t)avctx->discard_damaged_percentage / 100)
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC13(avctx, c->pic, 0)) < 0)
        return ret;

    if (code & 0x20) {  // frame is keyframe
        FUNC15(c->pic->data[1], 0, AVPALETTE_SIZE);
        c->current_frame  = 0;
        c->pic->key_frame = 1;
        c->pic->pict_type = AV_PICTURE_TYPE_I;
    } else {
        c->pic->key_frame = 0;
        c->pic->pict_type = AV_PICTURE_TYPE_P;
    }

    if (code & 0x40) {  // palette update
        uint32_t *out = (uint32_t *)c->pic->data[1];
        int index, count;

        index = FUNC7(&c->gb);
        count = FUNC7(&c->gb) + 1;

        if (index + count > 256)
            return AVERROR_INVALIDDATA;
        if (FUNC8(&c->gb) < 3 * count)
            return AVERROR_INVALIDDATA;

        out += index;
        for (i = 0; i < count; i++) {
            unsigned r, g, b;

            r = FUNC9(&c->gb);
            r = r << 2 | r >> 4;
            g = FUNC9(&c->gb);
            g = g << 2 | g >> 4;
            b = FUNC9(&c->gb);
            b = b << 2 | b >> 4;
            *out++ = (0xFFU << 24) | (r << 16) | (g << 8) | b;
        }
        c->pic->palette_has_changed = 1;
    }

    c->dirty[c->current_frame] = 1;
    if (code & 0x20)
        for (i = 0; i < 4; i++) {
            if (c->dirty[i])
                FUNC15(c->frame[i], 0, c->frame_size);
            c->dirty[i] = 0;
        }

    switch (code & 0x0F) {
    case 0:
        /* Block-based motion compensation using 4x4 blocks with either
         * horizontal or vertical vectors; might incorporate VQ as well. */
        if ((ret = FUNC12(c, pkt->data, code)) < 0)
            return ret;
        break;
    case 1:
        /* Uncompressed data. This mode specifies that (width * height) bytes
         * should be copied directly from the encoded buffer into the output. */
        dst = c->frame[c->current_frame];
        // possibly chunk length data
        FUNC11(&c->gb, 2);
        if (FUNC8(&c->gb) < c->video_size)
            return AVERROR_INVALIDDATA;
        FUNC6(&c->gb, dst, c->video_size);
        break;
    case 2:
        /* Copy reference frame: Consume the next byte in the stream as the
         * reference frame (which should be 0, 1, 2, or 3, and should not be
         * the same as the current frame number). */
        frame = FUNC7(&c->gb);
        if (frame > 3)
            return AVERROR_INVALIDDATA;
        if (frame != c->current_frame)
            FUNC14(c->frame[c->current_frame], c->frame[frame], c->frame_size);
        break;
    case 4:
        /* Run length encoding.*/
        dst = c->frame[c->current_frame];
        end = dst + c->video_size;

        FUNC11(&c->gb, 2);

        while (dst < end) {
            int8_t code;
            int count;

            if (FUNC8(&c->gb) < 2)
                return AVERROR_INVALIDDATA;

            code  = FUNC9(&c->gb);
            count = FUNC0(code) + 1;

            if (dst + count > end)
                return AVERROR_INVALIDDATA;
            if (code < 0)
                FUNC15(dst, FUNC9(&c->gb), count);
            else
                FUNC5(&c->gb, dst, count);
            dst += count;
        }
        break;
    default:
        FUNC1(0);
    }

    FUNC3(c->pic->data[0], c->pic->linesize[0],
                        c->frame[c->current_frame], c->width,
                        c->width, c->height);

    c->current_frame = (c->current_frame + 1) & 3;
    if ((ret = FUNC2(data, c->pic)) < 0)
        return ret;

    *got_frame = 1;

    return pkt->size;
}