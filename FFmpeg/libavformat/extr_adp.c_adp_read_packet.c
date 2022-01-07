
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int pb; } ;
struct TYPE_8__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR_EOF ;
 int av_get_packet (int ,TYPE_1__*,int) ;
 int av_packet_unref (TYPE_1__*) ;
 int av_shrink_packet (TYPE_1__*,int) ;
 scalar_t__ avio_feof (int ) ;

__attribute__((used)) static int adp_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size = 1024;

    if (avio_feof(s->pb))
        return AVERROR_EOF;

    ret = av_get_packet(s->pb, pkt, size);

    if (ret != size) {
        if (ret < 0) {
            av_packet_unref(pkt);
            return ret;
        }
        av_shrink_packet(pkt, ret);
    }
    pkt->stream_index = 0;

    return ret;
}
