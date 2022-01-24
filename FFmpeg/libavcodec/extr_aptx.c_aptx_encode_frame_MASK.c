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
typedef  int int32_t ;
struct TYPE_15__ {TYPE_1__* priv_data; } ;
struct TYPE_14__ {int nb_samples; int /*<<< orphan*/ ** data; } ;
struct TYPE_13__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; scalar_t__ data; } ;
struct TYPE_12__ {int block_size; int /*<<< orphan*/  afq; } ;
typedef  TYPE_1__ AptXContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int NB_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int**,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_4__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, AVPacket *avpkt,
                             const AVFrame *frame, int *got_packet_ptr)
{
    AptXContext *s = avctx->priv_data;
    int pos, ipos, channel, sample, output_size, ret;

    if ((ret = FUNC2(&s->afq, frame)) < 0)
        return ret;

    output_size = s->block_size * frame->nb_samples/4;
    if ((ret = FUNC4(avctx, avpkt, output_size, 0)) < 0)
        return ret;

    for (pos = 0, ipos = 0; pos < output_size; pos += s->block_size, ipos += 4) {
        int32_t samples[NB_CHANNELS][4];

        for (channel = 0; channel < NB_CHANNELS; channel++)
            for (sample = 0; sample < 4; sample++)
                samples[channel][sample] = (int32_t)FUNC0(&frame->data[channel][4*(ipos+sample)]) >> 8;

        FUNC1(s, samples, avpkt->data + pos);
    }

    FUNC3(&s->afq, frame->nb_samples, &avpkt->pts, &avpkt->duration);
    *got_packet_ptr = 1;
    return 0;
}