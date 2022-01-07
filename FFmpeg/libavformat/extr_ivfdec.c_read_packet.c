
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_7__ {int pb; } ;
struct TYPE_6__ {int pos; int pts; scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int av_get_packet (int ,TYPE_1__*,int) ;
 int avio_rl32 (int ) ;
 int avio_rl64 (int ) ;

__attribute__((used)) static int read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size = avio_rl32(s->pb);
    int64_t pts = avio_rl64(s->pb);

    ret = av_get_packet(s->pb, pkt, size);
    pkt->stream_index = 0;
    pkt->pts = pts;
    pkt->pos -= 12;

    return ret;
}
