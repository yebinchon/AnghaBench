#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_22__ {int avail_in; scalar_t__ avail_out; int /*<<< orphan*/  next_out; int /*<<< orphan*/  const* next_in; } ;
struct TYPE_21__ {TYPE_2__* priv_data; } ;
struct TYPE_20__ {int palette_has_changed; int /*<<< orphan*/  const** data; } ;
struct TYPE_19__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_18__ {int /*<<< orphan*/  const* pal; TYPE_1__* avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  bpp; TYPE_6__ zstream; scalar_t__ decomp_size; int /*<<< orphan*/  decomp_buf; TYPE_4__* frame; } ;
struct TYPE_17__ {scalar_t__ pix_fmt; } ;
typedef  TYPE_2__ CamtasiaContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_UNKNOWN ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int Z_DATA_ERROR ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int FUNC0 (void*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CamtasiaContext * const c = avctx->priv_data;
    AVFrame *frame = c->frame;
    int ret;
    int palette_has_changed = 0;

    if (c->avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        int size;
        const uint8_t *pal = FUNC2(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            palette_has_changed = 1;
            FUNC8(c->pal, pal, AVPALETTE_SIZE);
        } else if (pal) {
            FUNC1(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
    }

    ret = FUNC7(&c->zstream);
    if (ret != Z_OK) {
        FUNC1(avctx, AV_LOG_ERROR, "Inflate reset error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }
    c->zstream.next_in   = buf;
    c->zstream.avail_in  = buf_size;
    c->zstream.next_out = c->decomp_buf;
    c->zstream.avail_out = c->decomp_size;
    ret = FUNC6(&c->zstream, Z_FINISH);
    // Z_DATA_ERROR means empty picture
    if (ret == Z_DATA_ERROR && !palette_has_changed) {
        return buf_size;
    }

    if ((ret != Z_OK) && (ret != Z_STREAM_END) && (ret != Z_DATA_ERROR)) {
        FUNC1(avctx, AV_LOG_ERROR, "Inflate error: %d\n", ret);
        return AVERROR_UNKNOWN;
    }

    if ((ret = FUNC5(avctx, frame, 0)) < 0)
        return ret;

    if (ret != Z_DATA_ERROR) {
        FUNC3(&c->gb, c->decomp_buf,
                         c->decomp_size - c->zstream.avail_out);
        FUNC4(avctx, frame, c->bpp, &c->gb);
    }

    /* make the palette available on the way out */
    if (c->avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        frame->palette_has_changed = palette_has_changed;
        FUNC8(frame->data[1], c->pal, AVPALETTE_SIZE);
    }

    if ((ret = FUNC0(data, frame)) < 0)
        return ret;
    *got_frame      = 1;

    /* always report that the buffer was completely consumed */
    return buf_size;
}