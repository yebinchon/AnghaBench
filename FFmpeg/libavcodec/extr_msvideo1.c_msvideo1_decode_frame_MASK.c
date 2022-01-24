#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_16__ {int palette_has_changed; } ;
struct TYPE_15__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int size; TYPE_9__* frame; scalar_t__ mode_8bit; int /*<<< orphan*/  pal; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ Msvideo1Context ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVPALETTE_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_DATA_PALETTE ; 
 int FUNC0 (void*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (TYPE_3__*,TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx,
                                void *data, int *got_frame,
                                AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    Msvideo1Context *s = avctx->priv_data;
    int ret;

    s->buf = buf;
    s->size = buf_size;

    // Discard frame if its smaller than the minimum frame size
    if (buf_size < (avctx->width/4) * (avctx->height/4) / 512) {
        FUNC1(avctx, AV_LOG_ERROR, "Packet is too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = FUNC3(avctx, s->frame, 0)) < 0)
        return ret;

    if (s->mode_8bit) {
        int size;
        const uint8_t *pal = FUNC2(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            FUNC4(s->pal, pal, AVPALETTE_SIZE);
            s->frame->palette_has_changed = 1;
        } else if (pal) {
            FUNC1(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }
    }

    if (s->mode_8bit)
        FUNC6(s);
    else
        FUNC5(s);

    if ((ret = FUNC0(data, s->frame)) < 0)
        return ret;

    *got_frame      = 1;

    /* report that the buffer was completely consumed */
    return buf_size;
}