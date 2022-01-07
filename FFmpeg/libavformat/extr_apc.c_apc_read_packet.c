
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pb; } ;
struct TYPE_6__ {scalar_t__ stream_index; int flags; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_PKT_FLAG_CORRUPT ;
 int EIO ;
 int MAX_READ_SIZE ;
 scalar_t__ av_get_packet (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int apc_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    if (av_get_packet(s->pb, pkt, MAX_READ_SIZE) <= 0)
        return AVERROR(EIO);
    pkt->flags &= ~AV_PKT_FLAG_CORRUPT;
    pkt->stream_index = 0;
    return 0;
}
