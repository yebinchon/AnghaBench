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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* bswap_buf ) (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ;} ;
struct TYPE_13__ {int mb_y; int mb_x; int /*<<< orphan*/  block; scalar_t__* last_dc; int /*<<< orphan*/  bitstream_buf; int /*<<< orphan*/  gb; TYPE_1__ bsdsp; int /*<<< orphan*/  bitstream_buf_size; TYPE_4__* avctx; } ;
typedef  TYPE_2__ TqiContext ;
struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {int size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx,
                            void *data, int *got_frame,
                            AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    const uint8_t *buf_end = buf+buf_size;
    TqiContext *t = avctx->priv_data;
    AVFrame *frame = data;
    int ret, w, h;

    if (buf_size < 12)
        return AVERROR_INVALIDDATA;

    t->avctx = avctx;

    w = FUNC1(&buf[0]);
    h = FUNC1(&buf[2]);
    FUNC7(t, buf[4]);
    buf += 8;

    ret = FUNC4(avctx, w, h);
    if (ret < 0)
        return ret;

    if ((ret = FUNC3(avctx, frame, 0)) < 0)
        return ret;

    FUNC2(&t->bitstream_buf, &t->bitstream_buf_size,
                          buf_end - buf);
    if (!t->bitstream_buf)
        return FUNC0(ENOMEM);
    t->bsdsp.bswap_buf(t->bitstream_buf, (const uint32_t *) buf,
                       (buf_end - buf) / 4);
    FUNC5(&t->gb, t->bitstream_buf, 8 * (buf_end - buf));

    t->last_dc[0] =
    t->last_dc[1] =
    t->last_dc[2] = 0;
    for (t->mb_y = 0; t->mb_y < (h + 15) / 16; t->mb_y++) {
        for (t->mb_x = 0; t->mb_x < (w + 15) / 16; t->mb_x++) {
            if (FUNC8(t, t->block) < 0)
                goto end;
            FUNC9(avctx, frame, t->block);
        }
    }
    end:

    *got_frame = 1;
    return buf_size;
}