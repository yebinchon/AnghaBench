
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct AVFormatContext {TYPE_2__** streams; TYPE_1__* priv_data; } ;
struct TYPE_10__ {scalar_t__ stream_index; } ;
struct TYPE_9__ {int disposition; int nb_frames; int priv_data; } ;
struct TYPE_8__ {scalar_t__ audio_stream_idx; scalar_t__ waiting_pics; int queue_end; int queue; } ;
typedef TYPE_1__ FlacMuxerContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;


 int AV_DISPOSITION_ATTACHED_PIC ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int FF_PACKETLIST_FLAG_REF_PACKET ;
 int av_log (struct AVFormatContext*,int ,char*,...) ;
 int av_packet_clone (TYPE_3__*) ;
 int ff_packet_list_put (int *,int *,TYPE_3__*,int ) ;
 int flac_queue_flush (struct AVFormatContext*) ;
 int flac_write_audio_packet (struct AVFormatContext*,TYPE_3__*) ;

__attribute__((used)) static int flac_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    FlacMuxerContext *c = s->priv_data;
    int ret;

    if (pkt->stream_index == c->audio_stream_idx) {
        if (c->waiting_pics) {

            ret = ff_packet_list_put(&c->queue, &c->queue_end, pkt, FF_PACKETLIST_FLAG_REF_PACKET);
            if (ret < 0) {
                av_log(s, AV_LOG_ERROR, "Out of memory in packet queue; skipping attached pictures\n");
                c->waiting_pics = 0;
                ret = flac_queue_flush(s);
                if (ret < 0)
                    return ret;
                return flac_write_audio_packet(s, pkt);
            }
        } else
            return flac_write_audio_packet(s, pkt);
    } else {
        AVStream *st = s->streams[pkt->stream_index];

        if (!c->waiting_pics ||
            !(st->disposition & AV_DISPOSITION_ATTACHED_PIC))
            return 0;


        if (st->nb_frames == 1) {
            av_log(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (st->nb_frames >= 1)
            return 0;

        st->priv_data = av_packet_clone(pkt);
        if (!st->priv_data)
            av_log(s, AV_LOG_ERROR, "Out of memory queueing an attached picture; skipping\n");
        c->waiting_pics--;


        if (!c->waiting_pics &&
            (ret = flac_queue_flush(s)) < 0)
            return ret;
    }

    return 0;
}
