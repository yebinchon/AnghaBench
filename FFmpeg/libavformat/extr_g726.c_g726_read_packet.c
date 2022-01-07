
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef int AVPacket ;
typedef TYPE_1__ AVFormatContext ;


 int av_get_packet (int ,int *,int) ;

__attribute__((used)) static int g726_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    int res;
    res = av_get_packet(s->pb, pkt, 1020);
    if (res < 0)
        return res;
    return 0;
}
