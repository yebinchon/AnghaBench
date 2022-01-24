#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_23__ {int channels; TYPE_4__* priv_data; } ;
struct TYPE_22__ {int nb_samples; float*** extended_data; int* linesize; } ;
struct TYPE_21__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_20__ {int stream_idx; int channel_idx; size_t copy_idx; scalar_t__ silence; scalar_t__ copy; } ;
struct TYPE_19__ {int nb_streams; float** out; int* out_size; int* decoded_samples; int /*<<< orphan*/  gain; TYPE_1__* fdsp; scalar_t__ gain_i; TYPE_5__* channel_maps; int /*<<< orphan*/ * sync_buffers; TYPE_2__* streams; } ;
struct TYPE_18__ {int frame_count; int frame_duration; scalar_t__ packet_size; int /*<<< orphan*/  data_size; int /*<<< orphan*/  config; } ;
struct TYPE_17__ {TYPE_3__ packet; void* silk_samplerate; scalar_t__ delayed_samples; int /*<<< orphan*/ ** out; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* vector_fmul_scalar ) (float*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ OpusStreamContext ;
typedef  TYPE_3__ OpusPacket ;
typedef  TYPE_4__ OpusContext ;
typedef  TYPE_5__ ChannelMap ;
typedef  TYPE_6__ AVPacket ;
typedef  TYPE_7__ AVFrame ;
typedef  TYPE_8__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_BUG ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,scalar_t__) ; 
 int FUNC2 (int,int) ; 
 int FUNC3 (float*) ; 
 int INT_MAX ; 
 int FUNC4 (int /*<<< orphan*/ ,void**,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC8 (TYPE_8__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/  const*,int,int) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (float**,float**,int) ; 
 int /*<<< orphan*/  FUNC12 (float**,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,float**,int,int) ; 
 int /*<<< orphan*/  FUNC14 (float*,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(AVCodecContext *avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{
    OpusContext *c      = avctx->priv_data;
    AVFrame *frame      = data;
    const uint8_t *buf  = avpkt->data;
    int buf_size        = avpkt->size;
    int coded_samples   = 0;
    int decoded_samples = INT_MAX;
    int delayed_samples = 0;
    int i, ret;

    /* calculate the number of delayed samples */
    for (i = 0; i < c->nb_streams; i++) {
        OpusStreamContext *s = &c->streams[i];
        s->out[0] =
        s->out[1] = NULL;
        delayed_samples = FUNC1(delayed_samples,
                                s->delayed_samples + FUNC5(c->sync_buffers[i]));
    }

    /* decode the header of the first sub-packet to find out the sample count */
    if (buf) {
        OpusPacket *pkt = &c->streams[0].packet;
        ret = FUNC9(pkt, buf, buf_size, c->nb_streams > 1);
        if (ret < 0) {
            FUNC7(avctx, AV_LOG_ERROR, "Error parsing the packet header.\n");
            return ret;
        }
        coded_samples += pkt->frame_count * pkt->frame_duration;
        c->streams[0].silk_samplerate = FUNC10(pkt->config);
    }

    frame->nb_samples = coded_samples + delayed_samples;

    /* no input or buffered data => nothing to do */
    if (!frame->nb_samples) {
        *got_frame_ptr = 0;
        return 0;
    }

    /* setup the data buffers */
    ret = FUNC8(avctx, frame, 0);
    if (ret < 0)
        return ret;
    frame->nb_samples = 0;

    FUNC12(c->out, 0, c->nb_streams * 2 * sizeof(*c->out));
    for (i = 0; i < avctx->channels; i++) {
        ChannelMap *map = &c->channel_maps[i];
        if (!map->copy)
            c->out[2 * map->stream_idx + map->channel_idx] = (float*)frame->extended_data[i];
    }

    /* read the data from the sync buffers */
    for (i = 0; i < c->nb_streams; i++) {
        float          **out = c->out + 2 * i;
        int sync_size = FUNC5(c->sync_buffers[i]);

        float sync_dummy[32];
        int out_dummy = (!out[0]) | ((!out[1]) << 1);

        if (!out[0])
            out[0] = sync_dummy;
        if (!out[1])
            out[1] = sync_dummy;
        if (out_dummy && sync_size > FUNC3(sync_dummy))
            return AVERROR_BUG;

        ret = FUNC4(c->sync_buffers[i], (void**)out, sync_size);
        if (ret < 0)
            return ret;

        if (out_dummy & 1)
            out[0] = NULL;
        else
            out[0] += ret;
        if (out_dummy & 2)
            out[1] = NULL;
        else
            out[1] += ret;

        c->out_size[i] = frame->linesize[0] - ret * sizeof(float);
    }

    /* decode each sub-packet */
    for (i = 0; i < c->nb_streams; i++) {
        OpusStreamContext *s = &c->streams[i];

        if (i && buf) {
            ret = FUNC9(&s->packet, buf, buf_size, i != c->nb_streams - 1);
            if (ret < 0) {
                FUNC7(avctx, AV_LOG_ERROR, "Error parsing the packet header.\n");
                return ret;
            }
            if (coded_samples != s->packet.frame_count * s->packet.frame_duration) {
                FUNC7(avctx, AV_LOG_ERROR,
                       "Mismatching coded sample count in substream %d.\n", i);
                return AVERROR_INVALIDDATA;
            }

            s->silk_samplerate = FUNC10(s->packet.config);
        }

        ret = FUNC13(&c->streams[i], buf, s->packet.data_size,
                                    c->out + 2 * i, c->out_size[i], coded_samples);
        if (ret < 0)
            return ret;
        c->decoded_samples[i] = ret;
        decoded_samples       = FUNC2(decoded_samples, ret);

        buf      += s->packet.packet_size;
        buf_size -= s->packet.packet_size;
    }

    /* buffer the extra samples */
    for (i = 0; i < c->nb_streams; i++) {
        int buffer_samples = c->decoded_samples[i] - decoded_samples;
        if (buffer_samples) {
            float *buf[2] = { c->out[2 * i + 0] ? c->out[2 * i + 0] : (float*)frame->extended_data[0],
                              c->out[2 * i + 1] ? c->out[2 * i + 1] : (float*)frame->extended_data[0] };
            buf[0] += decoded_samples;
            buf[1] += decoded_samples;
            ret = FUNC6(c->sync_buffers[i], (void**)buf, buffer_samples);
            if (ret < 0)
                return ret;
        }
    }

    for (i = 0; i < avctx->channels; i++) {
        ChannelMap *map = &c->channel_maps[i];

        /* handle copied channels */
        if (map->copy) {
            FUNC11(frame->extended_data[i],
                   frame->extended_data[map->copy_idx],
                   frame->linesize[0]);
        } else if (map->silence) {
            FUNC12(frame->extended_data[i], 0, frame->linesize[0]);
        }

        if (c->gain_i && decoded_samples > 0) {
            c->fdsp->vector_fmul_scalar((float*)frame->extended_data[i],
                                       (float*)frame->extended_data[i],
                                       c->gain, FUNC0(decoded_samples, 8));
        }
    }

    frame->nb_samples = decoded_samples;
    *got_frame_ptr    = !!decoded_samples;

    return avpkt->size;
}