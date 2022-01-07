
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_2__** streams; int pb; TYPE_3__* priv_data; } ;
struct TYPE_12__ {int pts; scalar_t__ stream_index; } ;
struct TYPE_11__ {int packet_size; int sample_start_pos; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int channels; } ;
typedef TYPE_3__ IssDemuxContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int av_get_packet (int ,TYPE_4__*,int) ;
 int avio_tell (int ) ;

__attribute__((used)) static int iss_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    IssDemuxContext *iss = s->priv_data;
    int ret = av_get_packet(s->pb, pkt, iss->packet_size);

    if(ret != iss->packet_size)
        return AVERROR(EIO);

    pkt->stream_index = 0;
    pkt->pts = avio_tell(s->pb) - iss->sample_start_pos;
    if(s->streams[0]->codecpar->channels > 0)
        pkt->pts /= s->streams[0]->codecpar->channels*2;
    return 0;
}
