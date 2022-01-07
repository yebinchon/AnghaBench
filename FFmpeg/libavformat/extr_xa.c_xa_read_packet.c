
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int * pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int duration; int stream_index; } ;
struct TYPE_11__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ sent_bytes; scalar_t__ out_size; } ;
struct TYPE_9__ {int channels; } ;
typedef TYPE_2__ MaxisXADemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR_EOF ;
 int av_get_packet (int *,TYPE_4__*,unsigned int) ;

__attribute__((used)) static int xa_read_packet(AVFormatContext *s,
                          AVPacket *pkt)
{
    MaxisXADemuxContext *xa = s->priv_data;
    AVStream *st = s->streams[0];
    AVIOContext *pb = s->pb;
    unsigned int packet_size;
    int ret;

    if (xa->sent_bytes >= xa->out_size)
        return AVERROR_EOF;

    packet_size = 15*st->codecpar->channels;

    ret = av_get_packet(pb, pkt, packet_size);
    if(ret < 0)
        return ret;

    pkt->stream_index = st->index;
    xa->sent_bytes += packet_size;
    pkt->duration = 28;

    return ret;
}
