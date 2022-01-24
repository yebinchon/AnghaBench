#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int size; int /*<<< orphan*/  prev_frame; int /*<<< orphan*/  palette; int /*<<< orphan*/  const* buf; } ;
typedef  TYPE_1__ VmdVideoContext ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/ * data; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_GET_BUFFER_FLAG_REF ; 
 int PALETTE_COUNT ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_1__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx,
                                 void *data, int *got_frame,
                                 AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    VmdVideoContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int ret;

    s->buf = buf;
    s->size = buf_size;

    if (buf_size < 16)
        return AVERROR_INVALIDDATA;

    if ((ret = FUNC2(avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;

    if ((ret = FUNC4(s, frame)) < 0)
        return ret;

    /* make the palette available on the way out */
    FUNC3(frame->data[1], s->palette, PALETTE_COUNT * 4);

    /* shuffle frames */
    FUNC1(s->prev_frame);
    if ((ret = FUNC0(s->prev_frame, frame)) < 0)
        return ret;

    *got_frame      = 1;

    /* report that the buffer was completely consumed */
    return buf_size;
}