
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct AVFormatContext {int pb; } ;
struct TYPE_3__ {int size; int data; } ;
typedef TYPE_1__ AVPacket ;


 int AV_LOG_ERROR ;
 int av_log (struct AVFormatContext*,int ,char*,int) ;
 int avio_wb16 (int ,int) ;
 int avio_write (int ,int ,int) ;

__attribute__((used)) static int daud_write_packet(struct AVFormatContext *s, AVPacket *pkt)
{
    if (pkt->size > 65535) {
        av_log(s, AV_LOG_ERROR,
               "Packet size too large for s302m. (%d > 65535)\n", pkt->size);
        return -1;
    }
    avio_wb16(s->pb, pkt->size);
    avio_wb16(s->pb, 0x8010);
    avio_write(s->pb, pkt->data, pkt->size);
    return 0;
}
