
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * pb; } ;
struct TYPE_6__ {scalar_t__ stream_index; } ;
typedef TYPE_1__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int EIO ;
 int av_get_packet (int *,TYPE_1__*,int) ;
 scalar_t__ avio_feof (int *) ;
 int avio_rb16 (int *) ;

__attribute__((used)) static int daud_packet(AVFormatContext *s, AVPacket *pkt) {
    AVIOContext *pb = s->pb;
    int ret, size;
    if (avio_feof(pb))
        return AVERROR(EIO);
    size = avio_rb16(pb);
    avio_rb16(pb);
    ret = av_get_packet(pb, pkt, size);
    pkt->stream_index = 0;
    return ret;
}
