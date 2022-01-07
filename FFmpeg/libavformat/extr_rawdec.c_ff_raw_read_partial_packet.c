
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int data; scalar_t__ stream_index; int pos; } ;
struct TYPE_9__ {int raw_packet_size; } ;
typedef TYPE_1__ FFRawDemuxerContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_shrink_packet (TYPE_2__*,int) ;
 int avio_read_partial (int ,int ,int) ;
 int avio_tell (int ) ;

int ff_raw_read_partial_packet(AVFormatContext *s, AVPacket *pkt)
{
    FFRawDemuxerContext *raw = s->priv_data;
    int ret, size;

    size = raw->raw_packet_size;

    if (av_new_packet(pkt, size) < 0)
        return AVERROR(ENOMEM);

    pkt->pos= avio_tell(s->pb);
    pkt->stream_index = 0;
    ret = avio_read_partial(s->pb, pkt->data, size);
    if (ret < 0) {
        av_packet_unref(pkt);
        return ret;
    }
    av_shrink_packet(pkt, ret);
    return ret;
}
