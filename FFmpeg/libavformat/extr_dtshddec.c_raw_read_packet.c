
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_9__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_8__ {scalar_t__ stream_index; } ;
struct TYPE_7__ {scalar_t__ data_end; } ;
typedef TYPE_1__ DTSHDDemuxContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR_EOF ;
 scalar_t__ FFMIN (scalar_t__,int) ;
 int av_get_packet (int ,TYPE_2__*,scalar_t__) ;
 scalar_t__ avio_tell (int ) ;

__attribute__((used)) static int raw_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    DTSHDDemuxContext *dtshd = s->priv_data;
    int64_t size, left;
    int ret;

    left = dtshd->data_end - avio_tell(s->pb);
    size = FFMIN(left, 1024);
    if (size <= 0)
        return AVERROR_EOF;

    ret = av_get_packet(s->pb, pkt, size);
    if (ret < 0)
        return ret;

    pkt->stream_index = 0;

    return ret;
}
