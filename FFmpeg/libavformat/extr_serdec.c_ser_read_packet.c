
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_11__ {int packet_size; TYPE_1__* internal; int pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {int pts; int dts; int pos; scalar_t__ stream_index; } ;
struct TYPE_9__ {scalar_t__ end; } ;
struct TYPE_8__ {int data_offset; } ;
typedef TYPE_2__ SERDemuxerContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EOF ;
 int av_get_packet (int ,TYPE_3__*,int) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int ser_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    SERDemuxerContext *ser = s->priv_data;
    int64_t pos;
    int ret;

    pos = avio_tell(s->pb);
    if (pos >= ser->end)
        return AVERROR_EOF;

    ret = av_get_packet(s->pb, pkt, s->packet_size);
    pkt->pts = pkt->dts = (pkt->pos - s->internal->data_offset) / s->packet_size;

    pkt->stream_index = 0;
    if (ret < 0)
        return ret;
    return 0;
}
