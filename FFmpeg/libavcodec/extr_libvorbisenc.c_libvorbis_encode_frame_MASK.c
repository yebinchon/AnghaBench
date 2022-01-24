#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_15__ ;

/* Type definitions */
struct TYPE_25__ {int bytes; int /*<<< orphan*/  granulepos; struct TYPE_25__* packet; } ;
typedef  TYPE_3__ ogg_packet ;
struct TYPE_29__ {int initial_padding; TYPE_4__* priv_data; } ;
struct TYPE_28__ {int nb_samples; int /*<<< orphan*/ * extended_data; } ;
struct TYPE_27__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  size; TYPE_3__* data; } ;
struct TYPE_22__ {int remaining_samples; TYPE_2__* frames; int /*<<< orphan*/  remaining_delay; scalar_t__ frame_alloc; } ;
struct TYPE_23__ {int channels; } ;
struct TYPE_26__ {int eof; TYPE_15__ afq; int /*<<< orphan*/  vp; int /*<<< orphan*/  pkt_fifo; int /*<<< orphan*/  vd; int /*<<< orphan*/  vb; TYPE_1__ vi; } ;
struct TYPE_24__ {int duration; scalar_t__ pts; } ;
typedef  TYPE_4__ LibvorbisEncContext ;
typedef  TYPE_5__ AVPacket ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_15__*,TYPE_6__ const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_15__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_7__*,TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int** ff_vorbis_encoding_channel_layout_offsets ; 
 int /*<<< orphan*/  FUNC11 (float*,int /*<<< orphan*/ ,int const) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 float** FUNC14 (int /*<<< orphan*/ *,int const) ; 
 int FUNC15 (int /*<<< orphan*/ *,int const) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(AVCodecContext *avctx, AVPacket *avpkt,
                                  const AVFrame *frame, int *got_packet_ptr)
{
    LibvorbisEncContext *s = avctx->priv_data;
    ogg_packet op;
    int ret, duration;

    /* send samples to libvorbis */
    if (frame) {
        const int samples = frame->nb_samples;
        float **buffer;
        int c, channels = s->vi.channels;

        buffer = FUNC14(&s->vd, samples);
        for (c = 0; c < channels; c++) {
            int co = (channels > 8) ? c :
                     ff_vorbis_encoding_channel_layout_offsets[channels - 1][c];
            FUNC11(buffer[c], frame->extended_data[co],
                   samples * sizeof(*buffer[c]));
        }
        if ((ret = FUNC15(&s->vd, samples)) < 0) {
            FUNC5(avctx, AV_LOG_ERROR, "error in vorbis_analysis_wrote()\n");
            return FUNC18(ret);
        }
        if ((ret = FUNC7(&s->afq, frame)) < 0)
            return ret;
    } else {
        if (!s->eof && s->afq.frame_alloc)
            if ((ret = FUNC15(&s->vd, 0)) < 0) {
                FUNC5(avctx, AV_LOG_ERROR, "error in vorbis_analysis_wrote()\n");
                return FUNC18(ret);
            }
        s->eof = 1;
    }

    /* retrieve available packets from libvorbis */
    while ((ret = FUNC13(&s->vd, &s->vb)) == 1) {
        if ((ret = FUNC12(&s->vb, NULL)) < 0)
            break;
        if ((ret = FUNC16(&s->vb)) < 0)
            break;

        /* add any available packets to the output packet buffer */
        while ((ret = FUNC17(&s->vd, &op)) == 1) {
            if (FUNC4(s->pkt_fifo) < sizeof(ogg_packet) + op.bytes) {
                FUNC5(avctx, AV_LOG_ERROR, "packet buffer is too small\n");
                return AVERROR_BUG;
            }
            FUNC2(s->pkt_fifo, &op, sizeof(ogg_packet), NULL);
            FUNC2(s->pkt_fifo, op.packet, op.bytes, NULL);
        }
        if (ret < 0) {
            FUNC5(avctx, AV_LOG_ERROR, "error getting available packets\n");
            break;
        }
    }
    if (ret < 0) {
        FUNC5(avctx, AV_LOG_ERROR, "error getting available packets\n");
        return FUNC18(ret);
    }

    /* check for available packets */
    if (FUNC3(s->pkt_fifo) < sizeof(ogg_packet))
        return 0;

    FUNC1(s->pkt_fifo, &op, sizeof(ogg_packet), NULL);

    if ((ret = FUNC9(avctx, avpkt, op.bytes, 0)) < 0)
        return ret;
    FUNC1(s->pkt_fifo, avpkt->data, op.bytes, NULL);

    avpkt->pts = FUNC10(avctx, op.granulepos);

    duration = FUNC6(s->vp, avpkt->data, avpkt->size);
    if (duration > 0) {
        /* we do not know encoder delay until we get the first packet from
         * libvorbis, so we have to update the AudioFrameQueue counts */
        if (!avctx->initial_padding && s->afq.frames) {
            avctx->initial_padding    = duration;
            FUNC0(!s->afq.remaining_delay);
            s->afq.frames->duration  += duration;
            if (s->afq.frames->pts != AV_NOPTS_VALUE)
                s->afq.frames->pts       -= duration;
            s->afq.remaining_samples += duration;
        }
        FUNC8(&s->afq, duration, &avpkt->pts, &avpkt->duration);
    }

    *got_packet_ptr = 1;
    return 0;
}