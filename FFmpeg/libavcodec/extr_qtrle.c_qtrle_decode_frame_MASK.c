#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_22__ {int height; int bits_per_coded_sample; scalar_t__ discard_damaged_percentage; TYPE_1__* priv_data; } ;
struct TYPE_21__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_20__ {TYPE_13__* frame; int /*<<< orphan*/  const* pal; TYPE_3__* avctx; int /*<<< orphan*/  g; } ;
struct TYPE_19__ {int* linesize; int palette_has_changed; int /*<<< orphan*/  const** data; } ;
typedef  TYPE_1__ QtrleContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int FUNC0 (void*,TYPE_13__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int FUNC7 (TYPE_3__*,TYPE_13__*) ; 
 int FUNC8 (TYPE_3__*,TYPE_13__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    QtrleContext *s = avctx->priv_data;
    int header, start_line;
    int height, row_ptr;
    int has_palette = 0;
    int duplicate = 0;
    int ret, size;

    FUNC5(&s->g, avpkt->data, avpkt->size);

    /* check if this frame is even supposed to change */
    if (avpkt->size < 8) {
        duplicate = 1;
        goto done;
    }

    /* start after the chunk size */
    size = FUNC4(&s->g) & 0x3FFFFFFF;
    if (size - avpkt->size >  size * (int64_t)avctx->discard_damaged_percentage / 100)
        return AVERROR_INVALIDDATA;


    /* fetch the header */
    header = FUNC3(&s->g);

    /* if a header is present, fetch additional decoding parameters */
    if (header & 0x0008) {
        if (avpkt->size < 14) {
            duplicate = 1;
            goto done;
        }
        start_line = FUNC3(&s->g);
        FUNC6(&s->g, 2);
        height     = FUNC3(&s->g);
        FUNC6(&s->g, 2);
        if (height > s->avctx->height - start_line) {
            duplicate = 1;
            goto done;
        }
    } else {
        start_line = 0;
        height     = s->avctx->height;
    }
    if ((ret = FUNC8(avctx, s->frame, 0)) < 0)
        return ret;

    row_ptr = s->frame->linesize[0] * start_line;

    switch (avctx->bits_per_coded_sample) {
    case 1:
    case 33:
        FUNC11(s, row_ptr, height);
        has_palette = 1;
        break;

    case 2:
    case 34:
        FUNC13(s, row_ptr, height, 2);
        has_palette = 1;
        break;

    case 4:
    case 36:
        FUNC13(s, row_ptr, height, 4);
        has_palette = 1;
        break;

    case 8:
    case 40:
        FUNC15(s, row_ptr, height);
        has_palette = 1;
        break;

    case 16:
        FUNC10(s, row_ptr, height);
        break;

    case 24:
        FUNC12(s, row_ptr, height);
        break;

    case 32:
        FUNC14(s, row_ptr, height);
        break;

    default:
        FUNC1 (s->avctx, AV_LOG_ERROR, "Unsupported colorspace: %d bits/sample?\n",
            avctx->bits_per_coded_sample);
        break;
    }

    if(has_palette) {
        int size;
        const uint8_t *pal = FUNC2(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            s->frame->palette_has_changed = 1;
            FUNC9(s->pal, pal, AVPALETTE_SIZE);
        } else if (pal) {
            FUNC1(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }

        /* make the palette available on the way out */
        FUNC9(s->frame->data[1], s->pal, AVPALETTE_SIZE);
    }

done:
    if (!s->frame->data[0])
        return AVERROR_INVALIDDATA;
    if (duplicate) {
        // ff_reget_buffer() isn't needed when frames don't change, so just update
        // frame props.
        ret = FUNC7(avctx, s->frame);
        if (ret < 0)
            return ret;
    }

    if ((ret = FUNC0(data, s->frame)) < 0)
        return ret;
    *got_frame      = 1;

    /* always report that the buffer was completely consumed */
    return avpkt->size;
}