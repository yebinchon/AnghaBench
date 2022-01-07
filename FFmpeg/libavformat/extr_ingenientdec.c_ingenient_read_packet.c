
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pb; } ;
struct TYPE_7__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int EIO ;
 int MKTAG (char,char,char,char) ;
 int av_get_packet (int ,TYPE_1__*,int) ;
 int av_log (TYPE_2__*,int ,char*,int,int,int,int,int) ;
 int avio_rl16 (int ) ;
 int avio_rl32 (int ) ;
 int avio_skip (int ,int) ;

__attribute__((used)) static int ingenient_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int ret, size, w, h, unk1, unk2;

    if (avio_rl32(s->pb) != MKTAG('M', 'J', 'P', 'G'))
        return AVERROR(EIO);

    size = avio_rl32(s->pb);

    w = avio_rl16(s->pb);
    h = avio_rl16(s->pb);

    avio_skip(s->pb, 8);
    avio_skip(s->pb, 2);
    unk1 = avio_rl16(s->pb);
    unk2 = avio_rl16(s->pb);
    avio_skip(s->pb, 22);

    av_log(s, AV_LOG_DEBUG, "Ingenient packet: size=%d, width=%d, height=%d, unk1=%d unk2=%d\n",
        size, w, h, unk1, unk2);

    ret = av_get_packet(s->pb, pkt, size);
    if (ret < 0)
        return ret;
    pkt->stream_index = 0;
    return ret;
}
