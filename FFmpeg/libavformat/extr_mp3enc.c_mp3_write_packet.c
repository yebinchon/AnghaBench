
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_1__** streams; TYPE_2__* priv_data; } ;
struct TYPE_16__ {size_t stream_index; } ;
struct TYPE_15__ {size_t audio_stream_idx; scalar_t__ pics_to_write; int id3; int queue_end; int queue; } ;
struct TYPE_14__ {int nb_frames; } ;
typedef TYPE_2__ MP3Context ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AV_LOG_WARNING ;
 int FF_PACKETLIST_FLAG_REF_PACKET ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int ff_id3v2_write_apic (TYPE_4__*,int *,TYPE_3__*) ;
 int ff_packet_list_put (int *,int *,TYPE_3__*,int ) ;
 int mp3_queue_flush (TYPE_4__*) ;
 int mp3_write_audio_packet (TYPE_4__*,TYPE_3__*) ;

__attribute__((used)) static int mp3_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    MP3Context *mp3 = s->priv_data;

    if (pkt->stream_index == mp3->audio_stream_idx) {
        if (mp3->pics_to_write) {

            int ret = ff_packet_list_put(&mp3->queue, &mp3->queue_end, pkt, FF_PACKETLIST_FLAG_REF_PACKET);

            if (ret < 0) {
                av_log(s, AV_LOG_WARNING, "Not enough memory to buffer audio. Skipping picture streams\n");
                mp3->pics_to_write = 0;
                mp3_queue_flush(s);
                return mp3_write_audio_packet(s, pkt);
            }
        } else
            return mp3_write_audio_packet(s, pkt);
    } else {
        int ret;


        if (s->streams[pkt->stream_index]->nb_frames == 1) {
            av_log(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (!mp3->pics_to_write || s->streams[pkt->stream_index]->nb_frames >= 1)
            return 0;

        if ((ret = ff_id3v2_write_apic(s, &mp3->id3, pkt)) < 0)
            return ret;
        mp3->pics_to_write--;


        if (!mp3->pics_to_write &&
            (ret = mp3_queue_flush(s)) < 0)
            return ret;
    }

    return 0;
}
