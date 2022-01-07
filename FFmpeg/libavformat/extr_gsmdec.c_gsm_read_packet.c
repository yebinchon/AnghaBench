
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pb; } ;
struct TYPE_7__ {int pos; int duration; int pts; scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int GSM_BLOCK_SIZE ;
 int av_get_packet (int ,TYPE_1__*,int) ;
 int av_packet_unref (TYPE_1__*) ;
 int avio_tell (int ) ;

__attribute__((used)) static int gsm_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size;

    size = GSM_BLOCK_SIZE;

    pkt->pos = avio_tell(s->pb);
    pkt->stream_index = 0;

    ret = av_get_packet(s->pb, pkt, size);
    if (ret < GSM_BLOCK_SIZE) {
        av_packet_unref(pkt);
        return ret < 0 ? ret : AVERROR(EIO);
    }
    pkt->duration = 1;
    pkt->pts = pkt->pos / GSM_BLOCK_SIZE;

    return 0;
}
