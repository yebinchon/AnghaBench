#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_16__ {int block_samples; int ch_offset; int flags; int /*<<< orphan*/  sample_index; int /*<<< orphan*/ * samples; TYPE_1__* avctx; int /*<<< orphan*/ * samples_size; } ;
typedef  TYPE_2__ WavPackEncodeContext ;
struct TYPE_19__ {int channels; TYPE_2__* priv_data; } ;
struct TYPE_18__ {int nb_samples; int /*<<< orphan*/  pts; int /*<<< orphan*/ * extended_data; } ;
struct TYPE_17__ {int size; int /*<<< orphan*/  duration; int /*<<< orphan*/ * data; int /*<<< orphan*/  pts; } ;
struct TYPE_15__ {int sample_fmt; int bits_per_raw_sample; } ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_SAMPLE_FMT_FLTP 130 
#define  AV_SAMPLE_FMT_S16P 129 
#define  AV_SAMPLE_FMT_S32P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int MAG_LSB ; 
 int WV_CROSS_DECORR ; 
 int WV_FLOAT_DATA ; 
 int WV_MONO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_5__*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, AVPacket *avpkt,
                                const AVFrame *frame, int *got_packet_ptr)
{
    WavPackEncodeContext *s = avctx->priv_data;
    int buf_size, ret;
    uint8_t *buf;

    s->block_samples = frame->nb_samples;
    FUNC1(&s->samples[0], &s->samples_size[0],
                          sizeof(int32_t) * s->block_samples);
    if (!s->samples[0])
        return FUNC0(ENOMEM);
    if (avctx->channels > 1) {
        FUNC1(&s->samples[1], &s->samples_size[1],
                              sizeof(int32_t) * s->block_samples);
        if (!s->samples[1])
            return FUNC0(ENOMEM);
    }

    buf_size = s->block_samples * avctx->channels * 8
             + 200 * avctx->channels /* for headers */;
    if ((ret = FUNC2(avctx, avpkt, buf_size, 0)) < 0)
        return ret;
    buf = avpkt->data;

    for (s->ch_offset = 0; s->ch_offset < avctx->channels;) {
        FUNC5(s);

        switch (s->avctx->sample_fmt) {
        case AV_SAMPLE_FMT_S16P: s->flags |= 1; break;
        case AV_SAMPLE_FMT_S32P: s->flags |= 3 - (s->avctx->bits_per_raw_sample <= 24); break;
        case AV_SAMPLE_FMT_FLTP: s->flags |= 3 | WV_FLOAT_DATA;
        }

        FUNC4(s, frame->extended_data[s->ch_offset], s->samples[0], s->block_samples);
        if (avctx->channels - s->ch_offset == 1) {
            s->flags |= WV_MONO;
        } else {
            s->flags |= WV_CROSS_DECORR;
            FUNC4(s, frame->extended_data[s->ch_offset + 1], s->samples[1], s->block_samples);
        }

        s->flags += (1 << MAG_LSB) * ((s->flags & 3) * 8 + 7);

        if ((ret = FUNC6(s, s->samples[0], s->samples[1],
                                        buf, buf_size)) < 0)
            return ret;

        buf      += ret;
        buf_size -= ret;
    }
    s->sample_index += frame->nb_samples;

    avpkt->pts      = frame->pts;
    avpkt->size     = buf - avpkt->data;
    avpkt->duration = FUNC3(avctx, frame->nb_samples);
    *got_packet_ptr = 1;
    return 0;
}