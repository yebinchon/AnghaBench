
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ audio_stream_idx; int pict_list_end; int pict_list; } ;
struct TYPE_13__ {TYPE_2__** streams; int * pb; TYPE_5__* priv_data; } ;
struct TYPE_12__ {scalar_t__ stream_index; int size; int data; } ;
struct TYPE_11__ {int nb_frames; TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AIFFOutputContext ;


 scalar_t__ AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_WARNING ;
 int FF_PACKETLIST_FLAG_REF_PACKET ;
 int av_log (TYPE_4__*,int ,char*,size_t) ;
 int avio_write (int *,int ,int ) ;
 int ff_packet_list_put (int *,int *,TYPE_3__*,int ) ;

__attribute__((used)) static int aiff_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AIFFOutputContext *aiff = s->priv_data;
    AVIOContext *pb = s->pb;
    if (pkt->stream_index == aiff->audio_stream_idx)
        avio_write(pb, pkt->data, pkt->size);
    else {
        if (s->streams[pkt->stream_index]->codecpar->codec_type != AVMEDIA_TYPE_VIDEO)
            return 0;


        if (s->streams[pkt->stream_index]->nb_frames == 1) {
            av_log(s, AV_LOG_WARNING, "Got more than one picture in stream %d,"
                   " ignoring.\n", pkt->stream_index);
        }
        if (s->streams[pkt->stream_index]->nb_frames >= 1)
            return 0;

        return ff_packet_list_put(&aiff->pict_list, &aiff->pict_list_end,
                                  pkt, FF_PACKETLIST_FLAG_REF_PACKET);
    }

    return 0;
}
