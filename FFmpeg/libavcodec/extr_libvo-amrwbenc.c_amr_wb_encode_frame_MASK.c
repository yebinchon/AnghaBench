#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_16__ {scalar_t__ last_bitrate; int /*<<< orphan*/  allow_dtx; int /*<<< orphan*/  mode; int /*<<< orphan*/  state; } ;
struct TYPE_15__ {scalar_t__ bit_rate; int /*<<< orphan*/  initial_padding; TYPE_4__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pts; scalar_t__* data; } ;
struct TYPE_13__ {scalar_t__ pts; int size; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;
typedef  TYPE_4__ AMRWBContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, AVPacket *avpkt,
                               const AVFrame *frame, int *got_packet_ptr)
{
    AMRWBContext *s = avctx->priv_data;
    const int16_t *samples = (const int16_t *)frame->data[0];
    int size, ret;

    if ((ret = FUNC3(avctx, avpkt, MAX_PACKET_SIZE, 0)) < 0)
        return ret;

    if (s->last_bitrate != avctx->bit_rate) {
        s->mode         = FUNC5(avctx->bit_rate, avctx);
        s->last_bitrate = avctx->bit_rate;
    }
    size = FUNC1(s->state, s->mode, samples, avpkt->data, s->allow_dtx);
    if (size <= 0 || size > MAX_PACKET_SIZE) {
        FUNC2(avctx, AV_LOG_ERROR, "Error encoding frame\n");
        return FUNC0(EINVAL);
    }

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - FUNC4(avctx, avctx->initial_padding);

    avpkt->size = size;
    *got_packet_ptr = 1;
    return 0;
}