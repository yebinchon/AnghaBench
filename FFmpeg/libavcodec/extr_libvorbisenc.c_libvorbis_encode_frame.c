
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_15__ ;


struct TYPE_25__ {int bytes; int granulepos; struct TYPE_25__* packet; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_29__ {int initial_padding; TYPE_4__* priv_data; } ;
struct TYPE_28__ {int nb_samples; int * extended_data; } ;
struct TYPE_27__ {int duration; int pts; int size; TYPE_3__* data; } ;
struct TYPE_22__ {int remaining_samples; TYPE_2__* frames; int remaining_delay; scalar_t__ frame_alloc; } ;
struct TYPE_23__ {int channels; } ;
struct TYPE_26__ {int eof; TYPE_15__ afq; int vp; int pkt_fifo; int vd; int vb; TYPE_1__ vi; } ;
struct TYPE_24__ {int duration; scalar_t__ pts; } ;
typedef TYPE_4__ LibvorbisEncContext ;
typedef TYPE_5__ AVPacket ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR_BUG ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_NOPTS_VALUE ;
 int av_assert0 (int) ;
 int av_fifo_generic_read (int ,TYPE_3__*,int,int *) ;
 int av_fifo_generic_write (int ,TYPE_3__*,int,int *) ;
 int av_fifo_size (int ) ;
 int av_fifo_space (int ) ;
 int av_log (TYPE_7__*,int ,char*) ;
 int av_vorbis_parse_frame (int ,TYPE_3__*,int ) ;
 int ff_af_queue_add (TYPE_15__*,TYPE_6__ const*) ;
 int ff_af_queue_remove (TYPE_15__*,int,int *,int *) ;
 int ff_alloc_packet2 (TYPE_7__*,TYPE_5__*,int,int ) ;
 int ff_samples_to_time_base (TYPE_7__*,int ) ;
 int** ff_vorbis_encoding_channel_layout_offsets ;
 int memcpy (float*,int ,int const) ;
 int vorbis_analysis (int *,int *) ;
 int vorbis_analysis_blockout (int *,int *) ;
 float** vorbis_analysis_buffer (int *,int const) ;
 int vorbis_analysis_wrote (int *,int const) ;
 int vorbis_bitrate_addblock (int *) ;
 int vorbis_bitrate_flushpacket (int *,TYPE_3__*) ;
 int vorbis_error_to_averror (int) ;

__attribute__((used)) static int libvorbis_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                                  const AVFrame *frame, int *got_packet_ptr)
{
    LibvorbisEncContext *s = avctx->priv_data;
    ogg_packet op;
    int ret, duration;


    if (frame) {
        const int samples = frame->nb_samples;
        float **buffer;
        int c, channels = s->vi.channels;

        buffer = vorbis_analysis_buffer(&s->vd, samples);
        for (c = 0; c < channels; c++) {
            int co = (channels > 8) ? c :
                     ff_vorbis_encoding_channel_layout_offsets[channels - 1][c];
            memcpy(buffer[c], frame->extended_data[co],
                   samples * sizeof(*buffer[c]));
        }
        if ((ret = vorbis_analysis_wrote(&s->vd, samples)) < 0) {
            av_log(avctx, AV_LOG_ERROR, "error in vorbis_analysis_wrote()\n");
            return vorbis_error_to_averror(ret);
        }
        if ((ret = ff_af_queue_add(&s->afq, frame)) < 0)
            return ret;
    } else {
        if (!s->eof && s->afq.frame_alloc)
            if ((ret = vorbis_analysis_wrote(&s->vd, 0)) < 0) {
                av_log(avctx, AV_LOG_ERROR, "error in vorbis_analysis_wrote()\n");
                return vorbis_error_to_averror(ret);
            }
        s->eof = 1;
    }


    while ((ret = vorbis_analysis_blockout(&s->vd, &s->vb)) == 1) {
        if ((ret = vorbis_analysis(&s->vb, ((void*)0))) < 0)
            break;
        if ((ret = vorbis_bitrate_addblock(&s->vb)) < 0)
            break;


        while ((ret = vorbis_bitrate_flushpacket(&s->vd, &op)) == 1) {
            if (av_fifo_space(s->pkt_fifo) < sizeof(ogg_packet) + op.bytes) {
                av_log(avctx, AV_LOG_ERROR, "packet buffer is too small\n");
                return AVERROR_BUG;
            }
            av_fifo_generic_write(s->pkt_fifo, &op, sizeof(ogg_packet), ((void*)0));
            av_fifo_generic_write(s->pkt_fifo, op.packet, op.bytes, ((void*)0));
        }
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "error getting available packets\n");
            break;
        }
    }
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "error getting available packets\n");
        return vorbis_error_to_averror(ret);
    }


    if (av_fifo_size(s->pkt_fifo) < sizeof(ogg_packet))
        return 0;

    av_fifo_generic_read(s->pkt_fifo, &op, sizeof(ogg_packet), ((void*)0));

    if ((ret = ff_alloc_packet2(avctx, avpkt, op.bytes, 0)) < 0)
        return ret;
    av_fifo_generic_read(s->pkt_fifo, avpkt->data, op.bytes, ((void*)0));

    avpkt->pts = ff_samples_to_time_base(avctx, op.granulepos);

    duration = av_vorbis_parse_frame(s->vp, avpkt->data, avpkt->size);
    if (duration > 0) {


        if (!avctx->initial_padding && s->afq.frames) {
            avctx->initial_padding = duration;
            av_assert0(!s->afq.remaining_delay);
            s->afq.frames->duration += duration;
            if (s->afq.frames->pts != AV_NOPTS_VALUE)
                s->afq.frames->pts -= duration;
            s->afq.remaining_samples += duration;
        }
        ff_af_queue_remove(&s->afq, duration, &avpkt->pts, &avpkt->duration);
    }

    *got_packet_ptr = 1;
    return 0;
}
