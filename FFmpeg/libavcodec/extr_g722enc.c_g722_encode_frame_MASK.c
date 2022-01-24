#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const int16_t ;
struct TYPE_12__ {int /*<<< orphan*/  initial_padding; int /*<<< orphan*/  trellis; int /*<<< orphan*/ * priv_data; } ;
struct TYPE_11__ {int nb_samples; scalar_t__ pts; scalar_t__* data; } ;
struct TYPE_10__ {scalar_t__ pts; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  G722Context ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC1 (TYPE_3__*,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    G722Context *c = avctx->priv_data;
    const int16_t *samples = (const int16_t *)frame->data[0];
    int nb_samples, out_size, ret;

    out_size = (frame->nb_samples + 1) / 2;
    if ((ret = FUNC1(avctx, avpkt, out_size, 0)) < 0)
        return ret;

    nb_samples = frame->nb_samples - (frame->nb_samples & 1);

    if (avctx->trellis)
        FUNC4(c, avctx->trellis, avpkt->data, nb_samples, samples);
    else
        FUNC3(c, avpkt->data, nb_samples, samples);

    /* handle last frame with odd frame_size */
    if (nb_samples < frame->nb_samples) {
        int16_t last_samples[2] = { samples[nb_samples], samples[nb_samples] };
        FUNC0(c, &avpkt->data[nb_samples >> 1], last_samples);
    }

    if (frame->pts != AV_NOPTS_VALUE)
        avpkt->pts = frame->pts - FUNC2(avctx, avctx->initial_padding);
    *got_packet_ptr = 1;
    return 0;
}