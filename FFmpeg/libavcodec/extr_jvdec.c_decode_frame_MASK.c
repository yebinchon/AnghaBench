#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_16__ {int* linesize; int key_frame; int palette_has_changed; scalar_t__* data; int /*<<< orphan*/  pict_type; } ;
struct TYPE_15__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int* data; int size; } ;
struct TYPE_13__ {int* palette; int palette_has_changed; TYPE_5__* frame; int /*<<< orphan*/  bdsp; } ;
typedef  TYPE_1__ JvContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_COUNT ; 
 int /*<<< orphan*/  AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
 int FUNC0 (int const*) ; 
 int FUNC1 (int const*) ; 
 int FUNC2 (void*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC11(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    JvContext *s = avctx->priv_data;
    const uint8_t *buf = avpkt->data;
    const uint8_t *buf_end = buf + avpkt->size;
    int video_size, video_type, i, j, ret;

    if (avpkt->size < 6)
        return AVERROR_INVALIDDATA;

    video_size = FUNC1(buf);
    video_type = buf[4];
    buf += 5;

    if (video_size) {
        if (video_size < 0 || video_size > avpkt->size - 5) {
            FUNC4(avctx, AV_LOG_ERROR, "video size %d invalid\n", video_size);
            return AVERROR_INVALIDDATA;
        }

        if (video_type == 0 || video_type == 1) {
            GetBitContext gb;
            FUNC8(&gb, buf, 8 * video_size);

            if ((ret = FUNC7(avctx, s->frame, 0)) < 0)
                return ret;

            if (avctx->height/8 * (avctx->width/8) > 4 * video_size) {
                FUNC4(avctx, AV_LOG_ERROR, "Insufficient input data for dimensions\n");
                return AVERROR_INVALIDDATA;
            }

            for (j = 0; j < avctx->height; j += 8)
                for (i = 0; i < avctx->width; i += 8)
                    FUNC5(&gb,
                              s->frame->data[0] + j * s->frame->linesize[0] + i,
                              s->frame->linesize[0], &s->bdsp);

            buf += video_size;
        } else if (video_type == 2) {
            int v = *buf++;

            FUNC3(s->frame);
            if ((ret = FUNC6(avctx, s->frame, AV_GET_BUFFER_FLAG_REF)) < 0)
                return ret;

            for (j = 0; j < avctx->height; j++)
                FUNC10(s->frame->data[0] + j * s->frame->linesize[0],
                       v, avctx->width);
        } else {
            FUNC4(avctx, AV_LOG_WARNING,
                   "unsupported frame type %i\n", video_type);
            return AVERROR_INVALIDDATA;
        }
    }

    if (buf_end - buf >= AVPALETTE_COUNT * 3) {
        for (i = 0; i < AVPALETTE_COUNT; i++) {
            uint32_t pal = FUNC0(buf);
            s->palette[i] = 0xFFU << 24 | pal << 2 | ((pal >> 4) & 0x30303);
            buf += 3;
        }
        s->palette_has_changed = 1;
    }

    if (video_size) {
        s->frame->key_frame           = 1;
        s->frame->pict_type           = AV_PICTURE_TYPE_I;
        s->frame->palette_has_changed = s->palette_has_changed;
        s->palette_has_changed        = 0;
        FUNC9(s->frame->data[1], s->palette, AVPALETTE_SIZE);

        if ((ret = FUNC2(data, s->frame)) < 0)
            return ret;
        *got_frame = 1;
    }

    return avpkt->size;
}