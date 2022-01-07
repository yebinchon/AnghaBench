
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {scalar_t__ data_end; } ;
struct TYPE_8__ {int pb; TYPE_3__* priv_data; } ;
struct TYPE_7__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AFCDemuxContext ;


 int AVERROR_EOF ;
 scalar_t__ FFMIN (scalar_t__,int) ;
 int av_get_packet (int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int afc_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    AFCDemuxContext *c = s->priv_data;
    int64_t size;
    int ret;

    size = FFMIN(c->data_end - avio_tell(s->pb), 18 * 128);
    if (size <= 0)
        return AVERROR_EOF;

    ret = av_get_packet(s->pb, pkt, size);
    pkt->stream_index = 0;
    return ret;
}
